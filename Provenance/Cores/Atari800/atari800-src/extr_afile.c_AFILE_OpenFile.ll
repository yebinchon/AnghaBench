; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_afile.c_AFILE_OpenFile.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_afile.c_AFILE_OpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AFILE_ERROR = common dso_local global i32 0, align 4
@CARTRIDGE_main = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CASSETTE_hold_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@GTIA_consol_override = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AFILE_OpenFile(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @AFILE_DetectFileType(i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  switch i32 %14, label %75 [
    i32 146, label %15
    i32 144, label %15
    i32 132, label %15
    i32 145, label %15
    i32 131, label %15
    i32 139, label %15
    i32 137, label %15
    i32 133, label %29
    i32 143, label %29
    i32 138, label %29
    i32 141, label %36
    i32 136, label %36
    i32 140, label %55
    i32 142, label %55
    i32 135, label %68
    i32 134, label %68
  ]

15:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @SIO_Mount(i32 %16, i8* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %78

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (...) @Atari800_Coldstart()
  br label %28

28:                                               ; preds = %26, %23
  br label %76

29:                                               ; preds = %4, %4, %4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @BINLOAD_Loader(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %29
  br label %76

36:                                               ; preds = %4, %4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @CARTRIDGE_InsertAutoReboot(i8* %40)
  store i32 %41, i32* %11, align 4
  br label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @CARTRIDGE_Insert(i8* %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %50 [
    i32 128, label %47
    i32 129, label %47
    i32 130, label %49
    i32 0, label %49
  ]

47:                                               ; preds = %45, %45
  %48 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %48, i32* %5, align 4
  br label %78

49:                                               ; preds = %45, %45
  br label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @UI_SelectCartType(i32 %51)
  %53 = call i32 @CARTRIDGE_SetTypeAutoReboot(i32* @CARTRIDGE_main, i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %76

55:                                               ; preds = %4, %4
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @CASSETTE_Insert(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %78

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* @CASSETTE_hold_start, align 4
  %66 = call i32 (...) @Atari800_Coldstart()
  br label %67

67:                                               ; preds = %64, %61
  br label %76

68:                                               ; preds = %4, %4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @StateSav_ReadAtariState(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %68
  store i32 0, i32* @GTIA_consol_override, align 4
  br label %76

75:                                               ; preds = %4
  br label %76

76:                                               ; preds = %75, %74, %67, %54, %35, %28
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %72, %59, %47, %33, %21
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @AFILE_DetectFileType(i8*) #1

declare dso_local i32 @SIO_Mount(i32, i8*, i32) #1

declare dso_local i32 @Atari800_Coldstart(...) #1

declare dso_local i32 @BINLOAD_Loader(i8*) #1

declare dso_local i32 @CARTRIDGE_InsertAutoReboot(i8*) #1

declare dso_local i32 @CARTRIDGE_Insert(i8*) #1

declare dso_local i32 @CARTRIDGE_SetTypeAutoReboot(i32*, i32) #1

declare dso_local i32 @UI_SelectCartType(i32) #1

declare dso_local i32 @CASSETTE_Insert(i8*) #1

declare dso_local i32 @StateSav_ReadAtariState(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
