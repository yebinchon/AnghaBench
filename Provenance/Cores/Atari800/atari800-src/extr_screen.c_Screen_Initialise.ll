; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_Initialise.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_Initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"-screenshots\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"-showspeed\00", align 1
@Screen_show_atari_speed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\09-screenshots <p> Set filename pattern for screenshots\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09-showspeed       Show percentage of actual speed\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Missing argument for '%s'\00", align 1
@Screen_atari = common dso_local global i32* null, align 8
@Screen_HEIGHT = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@Screen_atari1 = common dso_local global i32* null, align 8
@Screen_atari2 = common dso_local global i32* null, align 8
@Screen_atari_b = common dso_local global i32* null, align 8
@Screen_dirty = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Screen_Initialise(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %92, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %95

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %17
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @Screen_SetScreenshotFilenamePattern(i8* %41)
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %35
  br label %80

46:                                               ; preds = %17
  %47 = load i8**, i8*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* @Screen_show_atari_speed, align 4
  br label %79

56:                                               ; preds = %46
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %8, align 4
  %66 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  store i8* %73, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %54
  br label %80

80:                                               ; preds = %79, %45
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %118

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %12

95:                                               ; preds = %12
  %96 = load i32, i32* %7, align 4
  %97 = load i32*, i32** %4, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %3, align 4
  br label %118

102:                                              ; preds = %95
  %103 = load i32*, i32** @Screen_atari, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i32, i32* @Screen_HEIGHT, align 4
  %107 = load i32, i32* @Screen_WIDTH, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i64 @Util_malloc(i32 %108)
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** @Screen_atari, align 8
  %111 = load i32*, i32** @Screen_atari, align 8
  %112 = load i32, i32* @Screen_HEIGHT, align 4
  %113 = load i32, i32* @Screen_WIDTH, align 4
  %114 = mul nsw i32 %112, %113
  %115 = call i32 @memset(i32* %111, i32 0, i32 %114)
  br label %116

116:                                              ; preds = %105, %102
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %100, %83
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Screen_SetScreenshotFilenamePattern(i8*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
