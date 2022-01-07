; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_SaveAtariState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_SaveAtariState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SAVE_VERSION_NUMBER = common dso_local global i32 0, align 4
@StateFile = common dso_local global i32* null, align 8
@Z_OK = common dso_local global i64 0, align 8
@nFileError = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Could not open %s for state save.\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ATARI800\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StateSav_SaveAtariState(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @SAVE_VERSION_NUMBER, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @StateFile, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** @StateFile, align 8
  %18 = call i64 @GZCLOSE(i32* %17)
  store i32* null, i32** @StateFile, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* @Z_OK, align 8
  store i64 %20, i64* @nFileError, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32* @GZOPEN(i8* %21, i8* %22)
  store i32* %23, i32** @StateFile, align 8
  %24 = load i32*, i32** @StateFile, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @Log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 (...) @GetGZErrorText()
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %19
  %32 = load i32*, i32** @StateFile, align 8
  %33 = call i64 @GZWRITE(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call i32 (...) @GetGZErrorText()
  %37 = load i32*, i32** @StateFile, align 8
  %38 = call i64 @GZCLOSE(i32* %37)
  store i32* null, i32** @StateFile, align 8
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %4, align 4
  br label %74

40:                                               ; preds = %31
  %41 = call i32 @StateSav_SaveUBYTE(i32* %8, i32 1)
  %42 = call i32 @StateSav_SaveUBYTE(i32* %7, i32 1)
  %43 = call i32 (...) @Atari800_StateSave()
  %44 = call i32 (...) @CARTRIDGE_StateSave()
  %45 = call i32 (...) @SIO_StateSave()
  %46 = call i32 (...) @ANTIC_StateSave()
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @CPU_StateSave(i32 %47)
  %49 = call i32 (...) @GTIA_StateSave()
  %50 = call i32 (...) @PIA_StateSave()
  %51 = call i32 (...) @POKEY_StateSave()
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %9, align 4
  %53 = call i32 @StateSav_SaveINT(i32* %9, i32 1)
  %54 = call i32 (...) @PBI_StateSave()
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %10, align 4
  %56 = call i32 @StateSav_SaveINT(i32* %10, i32 1)
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %11, align 4
  %58 = call i32 @StateSav_SaveINT(i32* %11, i32 1)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %12, align 4
  %60 = call i32 @StateSav_SaveINT(i32* %12, i32 1)
  %61 = load i32*, i32** @StateFile, align 8
  %62 = call i64 @GZCLOSE(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %40
  store i32* null, i32** @StateFile, align 8
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %40
  store i32* null, i32** @StateFile, align 8
  %67 = load i64, i64* @nFileError, align 8
  %68 = load i64, i64* @Z_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %70, %64, %35, %26
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @GZCLOSE(i32*) #1

declare dso_local i32* @GZOPEN(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*, i8*) #1

declare dso_local i32 @GetGZErrorText(...) #1

declare dso_local i64 @GZWRITE(i32*, i8*, i32) #1

declare dso_local i32 @StateSav_SaveUBYTE(i32*, i32) #1

declare dso_local i32 @Atari800_StateSave(...) #1

declare dso_local i32 @CARTRIDGE_StateSave(...) #1

declare dso_local i32 @SIO_StateSave(...) #1

declare dso_local i32 @ANTIC_StateSave(...) #1

declare dso_local i32 @CPU_StateSave(i32) #1

declare dso_local i32 @GTIA_StateSave(...) #1

declare dso_local i32 @PIA_StateSave(...) #1

declare dso_local i32 @POKEY_StateSave(...) #1

declare dso_local i32 @StateSav_SaveINT(i32*, i32) #1

declare dso_local i32 @PBI_StateSave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
