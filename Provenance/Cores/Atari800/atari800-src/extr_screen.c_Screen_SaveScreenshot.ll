; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SaveScreenshot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_SaveScreenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".pcx\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@Screen_atari = common dso_local global i32* null, align 8
@ATARI_LEFT_MARGIN = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@Screen_HEIGHT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Screen_SaveScreenshot(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @striendswith(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %17
  %25 = load i32*, i32** @Screen_atari, align 8
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** @Screen_atari, align 8
  %27 = load i32, i32* @ATARI_LEFT_MARGIN, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i32, i32* @Screen_WIDTH, align 4
  %34 = load i32, i32* @Screen_HEIGHT, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i64 @Util_malloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** @Screen_atari, align 8
  %38 = load i32*, i32** @Screen_atari, align 8
  %39 = load i32, i32* @ATARI_LEFT_MARGIN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %10, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @ANTIC_Frame(i32 %42)
  br label %45

44:                                               ; preds = %24
  store i32* null, i32** %10, align 8
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @Screen_SavePCX(i32* %46, i32* %47, i32* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32*, i32** @Screen_atari, align 8
  %56 = call i32 @free(i32* %55)
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** @Screen_atari, align 8
  br label %58

58:                                               ; preds = %54, %45
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @striendswith(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @ANTIC_Frame(i32) #1

declare dso_local i32 @Screen_SavePCX(i32*, i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
