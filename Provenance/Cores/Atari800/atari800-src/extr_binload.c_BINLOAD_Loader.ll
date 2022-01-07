; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_binload.c_BINLOAD_Loader.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_binload.c_BINLOAD_Loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BINLOAD_bin_file = common dso_local global i32* null, align 8
@BINLOAD_loading_basic = common dso_local global i64 0, align 8
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"binload: can't run Atari programs directly on the 5200\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"binload: can't open \22%s\22\00", align 1
@SIO_drive_status = common dso_local global i64* null, align 8
@SIO_NO_DISK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BINLOAD_start_binloading = common dso_local global i32 0, align 4
@BINLOAD_LOADING_BASIC_SAVED = common dso_local global i64 0, align 8
@BINLOAD_LOADING_BASIC_LISTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"binload: \22%s\22 not recognized as a DOS or BASIC program\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BINLOAD_Loader(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32*, i32** @BINLOAD_bin_file, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32*, i32** @BINLOAD_bin_file, align 8
  %9 = call i32 @fclose(i32* %8)
  store i32* null, i32** @BINLOAD_bin_file, align 8
  store i64 0, i64* @BINLOAD_loading_basic, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @Atari800_machine_type, align 8
  %12 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %10
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** @BINLOAD_bin_file, align 8
  %20 = load i32*, i32** @BINLOAD_bin_file, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %86

26:                                               ; preds = %17
  %27 = load i64*, i64** @SIO_drive_status, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SIO_NO_DISK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @SIO_DisableDrive(i32 1)
  br label %34

34:                                               ; preds = %32, %26
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %36 = load i32*, i32** @BINLOAD_bin_file, align 8
  %37 = call i32 @fread(i32* %35, i32 1, i32 2, i32* %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %80

39:                                               ; preds = %34
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 255
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* @BINLOAD_start_binloading, align 4
  %49 = call i32 (...) @Atari800_Coldstart()
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %2, align 4
  br label %86

51:                                               ; preds = %43, %39
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i64, i64* @BINLOAD_LOADING_BASIC_SAVED, align 8
  store i64 %60, i64* @BINLOAD_loading_basic, align 8
  %61 = call i32 (...) @ESC_UpdatePatches()
  %62 = call i32 (...) @Atari800_Coldstart()
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %55, %51
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 48
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %70, 57
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* @BINLOAD_LOADING_BASIC_LISTED, align 8
  store i64 %73, i64* @BINLOAD_loading_basic, align 8
  %74 = call i32 (...) @ESC_UpdatePatches()
  %75 = call i32 (...) @Atari800_Coldstart()
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %2, align 4
  br label %86

77:                                               ; preds = %68, %64
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i32*, i32** @BINLOAD_bin_file, align 8
  %82 = call i32 @fclose(i32* %81)
  store i32* null, i32** @BINLOAD_bin_file, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %72, %59, %47, %22, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @SIO_DisableDrive(i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @Atari800_Coldstart(...) #1

declare dso_local i32 @ESC_UpdatePatches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
