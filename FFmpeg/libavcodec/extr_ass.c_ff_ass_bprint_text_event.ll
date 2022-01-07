; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass.c_ff_ass_bprint_text_event.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ass.c_ff_ass_bprint_text_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"{}\\\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ass_bprint_text_event(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %11, align 8
  br label %16

16:                                               ; preds = %95, %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %98

27:                                               ; preds = %25
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @strchr(i8* %31, i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %94

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %93

53:                                               ; preds = %42, %39
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = icmp ult i8* %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 (i32*, i8*, ...) @av_bprintf(i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  br label %92

68:                                               ; preds = %53
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  %78 = icmp ult i8* %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %95

86:                                               ; preds = %79, %74, %68
  %87 = load i32*, i32** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @av_bprint_chars(i32* %87, i8 signext %89, i32 1)
  br label %91

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92, %47
  br label %94

94:                                               ; preds = %93, %36
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %7, align 8
  br label %16

98:                                               ; preds = %25
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_bprintf(i32*, i8*, ...) #1

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
