; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64 }

@WHITESPACES = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to parse graph description substring: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_parse2(%struct.TYPE_10__* %0, i8* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8 0, i8* %12, align 1
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @WHITESPACES, align 4
  %19 = call i32 @strspn(i8* %17, i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = call i32 @parse_sws_flags(i8** %7, %struct.TYPE_10__* %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %105

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %86, %27
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @WHITESPACES, align 4
  %31 = call i32 @strspn(i8* %29, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %7, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @parse_inputs(i8** %7, i32** %13, i32** %15, %struct.TYPE_10__* %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %106

39:                                               ; preds = %28
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = call i32 @parse_filter(i32** %16, i8** %7, %struct.TYPE_10__* %40, i32 %41, %struct.TYPE_10__* %42)
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %106

46:                                               ; preds = %39
  %47 = load i32*, i32** %16, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = call i32 @link_filter_inouts(i32* %47, i32** %13, i32** %14, %struct.TYPE_10__* %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %106

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @parse_outputs(i8** %7, i32** %13, i32** %14, i32** %15, %struct.TYPE_10__* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %106

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @WHITESPACES, align 4
  %60 = call i32 @strspn(i8* %58, i32 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %12, align 1
  %67 = load i8, i8* %12, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 59
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @append_inout(i32** %15, i32** %13)
  br label %75

75:                                               ; preds = %73, %70, %57
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load i8, i8* %12, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 44
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i8, i8* %12, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 59
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ true, %78 ], [ %85, %82 ]
  br i1 %87, label %28, label %88

88:                                               ; preds = %86
  %89 = load i8, i8* %12, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 -1
  %96 = call i32 @av_log(%struct.TYPE_10__* %92, i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %88
  %100 = call i32 @append_inout(i32** %15, i32** %13)
  %101 = load i32*, i32** %14, align 8
  %102 = load i32**, i32*** %8, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32**, i32*** %9, align 8
  store i32* %103, i32** %104, align 8
  store i32 0, i32* %5, align 4
  br label %129

105:                                              ; preds = %26
  br label %106

106:                                              ; preds = %105, %91, %56, %51, %45, %38
  br label %107

107:                                              ; preds = %112, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @avfilter_free(i32 %117)
  br label %107

119:                                              ; preds = %107
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = call i32 @av_freep(i32** %121)
  %123 = call i32 @avfilter_inout_free(i32** %14)
  %124 = call i32 @avfilter_inout_free(i32** %15)
  %125 = call i32 @avfilter_inout_free(i32** %13)
  %126 = load i32**, i32*** %8, align 8
  store i32* null, i32** %126, align 8
  %127 = load i32**, i32*** %9, align 8
  store i32* null, i32** %127, align 8
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %119, %99
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @parse_sws_flags(i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_inputs(i8**, i32**, i32**, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_filter(i32**, i8**, %struct.TYPE_10__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @link_filter_inouts(i32*, i32**, i32**, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_outputs(i8**, i32**, i32**, i32**, %struct.TYPE_10__*) #1

declare dso_local i32 @append_inout(i32**, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avfilter_free(i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @avfilter_inout_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
