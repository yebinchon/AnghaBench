; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_bprint.c_av_bprint_escape.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_bprint.c_av_bprint_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_ESCAPE_MODE_AUTO = common dso_local global i32 0, align 4
@AV_ESCAPE_MODE_BACKSLASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"'\\''\00", align 1
@WHITESPACES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"'\\\00", align 1
@AV_ESCAPE_FLAG_WHITESPACE = common dso_local global i32 0, align 4
@AV_ESCAPE_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_bprint_escape(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AV_ESCAPE_MODE_AUTO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @AV_ESCAPE_MODE_BACKSLASH, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %51 [
    i32 128, label %24
  ]

24:                                               ; preds = %22
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @av_bprint_chars(i32* %25, i8 signext 39, i32 1)
  br label %27

27:                                               ; preds = %45, %24
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 39
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @av_bprintf(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %44

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @av_bprint_chars(i32* %40, i8 signext %42, i32 1)
  br label %44

44:                                               ; preds = %39, %36
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @av_bprint_chars(i32* %49, i8 signext 39, i32 1)
  br label %136

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %132, %51
  %53 = load i8*, i8** %7, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %135

56:                                               ; preds = %52
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %60, %56
  %67 = phi i1 [ true, %56 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** @WHITESPACES, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @strchr(i8* %69, i8 signext %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @strchr(i8* %80, i8 signext %82)
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %79, %66
  %86 = phi i1 [ false, %66 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @AV_ESCAPE_FLAG_WHITESPACE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i1 [ false, %95 ], [ %102, %98 ]
  br label %105

105:                                              ; preds = %103, %90, %85
  %106 = phi i1 [ true, %90 ], [ true, %85 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @AV_ESCAPE_FLAG_STRICT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121, %115, %105
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @av_bprint_chars(i32* %125, i8 signext 92, i32 1)
  br label %127

127:                                              ; preds = %124, %121, %118, %110
  %128 = load i32*, i32** %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @av_bprint_chars(i32* %128, i8 signext %130, i32 1)
  br label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  br label %52

135:                                              ; preds = %52
  br label %136

136:                                              ; preds = %135, %48
  ret void
}

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

declare dso_local i32 @av_bprintf(i32*, i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
