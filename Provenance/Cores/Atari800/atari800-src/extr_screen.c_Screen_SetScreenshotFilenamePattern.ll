; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SetScreenshotFilenamePattern.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SetScreenshotFilenamePattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screenshot_filename_format = common dso_local global i8* null, align 8
@screenshot_no_max = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Invalid filename pattern for screenshots, using default.\00", align 1
@DEFAULT_SCREENSHOT_FILENAME_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @Screen_SetScreenshotFilenamePattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Screen_SetScreenshotFilenamePattern(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @screenshot_filename_format, align 8
  store i8* %5, i8** %3, align 8
  store i8 48, i8* %4, align 1
  store i32 1, i32* @screenshot_no_max, align 4
  br label %6

6:                                                ; preds = %71, %43, %1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** @screenshot_filename_format, align 8
  %9 = load i32, i32* @FILENAME_MAX, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %8, i64 %10
  %12 = getelementptr inbounds i8, i8* %11, i64 -9
  %13 = icmp ult i8* %7, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %6
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 35
  br i1 %18, label %19, label %53

19:                                               ; preds = %14
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i32 %21, 48
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %74

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* @screenshot_no_max, align 4
  %27 = mul nsw i32 %26, 10
  store i32 %27, i32* @screenshot_no_max, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  %30 = load i8, i8* %4, align 1
  %31 = add i8 %30, 1
  store i8 %31, i8* %4, align 1
  br label %32

32:                                               ; preds = %25
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 57
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 35
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  br i1 %42, label %25, label %43

43:                                               ; preds = %41
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %3, align 8
  store i8 37, i8* %44, align 1
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  store i8 48, i8* %46, align 1
  %48 = load i8, i8* %4, align 1
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %3, align 8
  store i8 100, i8* %51, align 1
  br label %6

53:                                               ; preds = %14
  %54 = load i8*, i8** %2, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 37
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %3, align 8
  store i8 37, i8* %59, align 1
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %2, align 8
  %63 = load i8, i8* %62, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i8*, i8** %2, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %79

71:                                               ; preds = %61
  %72 = load i8*, i8** %2, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %2, align 8
  br label %6

74:                                               ; preds = %23, %6
  %75 = call i32 @Log_print(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** @screenshot_filename_format, align 8
  %77 = load i32, i32* @DEFAULT_SCREENSHOT_FILENAME_FORMAT, align 4
  %78 = call i32 @strcpy(i8* %76, i32 %77)
  store i32 1000, i32* @screenshot_no_max, align 4
  br label %79

79:                                               ; preds = %74, %70
  ret void
}

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
