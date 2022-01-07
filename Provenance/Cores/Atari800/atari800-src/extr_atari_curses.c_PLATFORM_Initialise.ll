; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_PLATFORM_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_PLATFORM_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"-left\00", align 1
@CURSES_LEFT = common dso_local global i32 0, align 4
@curses_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-central\00", align 1
@CURSES_CENTRAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"-right\00", align 1
@CURSES_RIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"-wide1\00", align 1
@CURSES_WIDE_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"-wide2\00", align 1
@CURSES_WIDE_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.6 = private unnamed_addr constant [197 x i8] c"\09-central         Center emulated screen\0A\09-left            Align left\0A\09-right           Align right (on 80 columns)\0A\09-wide1           Use 80 columns\0A\09-wide2           Use 80 columns, display twice\00", align 1
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %88, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %91

12:                                               ; preds = %7
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @CURSES_LEFT, align 4
  store i32 %21, i32* @curses_mode, align 4
  br label %87

22:                                               ; preds = %12
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CURSES_CENTRAL, align 4
  store i32 %31, i32* @curses_mode, align 4
  br label %86

32:                                               ; preds = %22
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @CURSES_RIGHT, align 4
  store i32 %41, i32* @curses_mode, align 4
  br label %85

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @CURSES_WIDE_1, align 4
  store i32 %51, i32* @curses_mode, align 4
  br label %84

52:                                               ; preds = %42
  %53 = load i8**, i8*** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @CURSES_WIDE_2, align 4
  store i32 %61, i32* @curses_mode, align 4
  br label %83

62:                                               ; preds = %52
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @Log_print(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i8**, i8*** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  store i8* %77, i8** %82, align 8
  br label %83

83:                                               ; preds = %72, %60
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %40
  br label %86

86:                                               ; preds = %85, %30
  br label %87

87:                                               ; preds = %86, %20
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %7

91:                                               ; preds = %7
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %3, align 8
  store i32 %92, i32* %93, align 4
  %94 = call i32 (...) @initscr()
  %95 = call i32 (...) @noecho()
  %96 = call i32 (...) @cbreak()
  %97 = load i32, i32* @stdscr, align 4
  %98 = load i32, i32* @TRUE, align 4
  %99 = call i32 @keypad(i32 %97, i32 %98)
  %100 = call i32 @curs_set(i32 0)
  %101 = load i32, i32* @stdscr, align 4
  %102 = call i32 @nodelay(i32 %101, i32 1)
  %103 = load i32, i32* @TRUE, align 4
  ret i32 %103
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @nodelay(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
