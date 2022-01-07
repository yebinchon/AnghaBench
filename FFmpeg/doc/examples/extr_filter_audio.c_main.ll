; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filter_audio.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filter_audio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVMD5 = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Usage: %s <duration>\0A\00", align 1
@INPUT_SAMPLERATE = common dso_local global float 0.000000e+00, align 4
@FRAME_SIZE = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid duration: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error allocating the frame\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error allocating the MD5 context\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to init filter graph:\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error generating input frame:\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Error submitting the frame to the filtergraph:\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error processing the filtered frame:\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Error filtering the data:\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.AVMD5*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  br label %141

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call float @atof(i8* %27)
  store float %28, float* %12, align 4
  %29 = load float, float* %12, align 4
  %30 = load float, float* @INPUT_SAMPLERATE, align 4
  %31 = fmul float %29, %30
  %32 = load float, float* @FRAME_SIZE, align 4
  %33 = fdiv float %31, %32
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store i32 1, i32* %3, align 4
  br label %141

43:                                               ; preds = %24
  %44 = call i32* (...) @av_frame_alloc()
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %141

50:                                               ; preds = %43
  %51 = call %struct.AVMD5* (...) @av_md5_alloc()
  store %struct.AVMD5* %51, %struct.AVMD5** %6, align 8
  %52 = load %struct.AVMD5*, %struct.AVMD5** %6, align 8
  %53 = icmp ne %struct.AVMD5* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %141

57:                                               ; preds = %50
  %58 = call i32 @init_filter_graph(i32** %7, i32** %8, i32** %9)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %134

64:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %127, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @get_input(i32* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %134

78:                                               ; preds = %69
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @av_buffersrc_add_frame(i32* %79, i32* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @av_frame_unref(i32* %85)
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %134

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i32*, i32** %9, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @av_buffersink_get_frame(i32* %91, i32* %92)
  store i32 %93, i32* %13, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.AVMD5*, %struct.AVMD5** %6, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @process_output(%struct.AVMD5* %96, i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %134

104:                                              ; preds = %95
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @av_frame_unref(i32* %105)
  br label %90

107:                                              ; preds = %90
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = call i32 @AVERROR(i32 %109)
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %127

113:                                              ; preds = %107
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @AVERROR_EOF, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %130

118:                                              ; preds = %113
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %134

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %65

130:                                              ; preds = %117, %65
  %131 = call i32 @avfilter_graph_free(i32** %7)
  %132 = call i32 @av_frame_free(i32** %10)
  %133 = call i32 @av_freep(%struct.AVMD5** %6)
  store i32 0, i32* %3, align 4
  br label %141

134:                                              ; preds = %121, %101, %84, %75, %61
  %135 = load i32, i32* %13, align 4
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %137 = call i32 @av_strerror(i32 %135, i8* %136, i32 1024)
  %138 = load i32, i32* @stderr, align 4
  %139 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %139)
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %134, %130, %54, %47, %37, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local float @atof(i8*) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local %struct.AVMD5* @av_md5_alloc(...) #1

declare dso_local i32 @init_filter_graph(i32**, i32**, i32**) #1

declare dso_local i32 @get_input(i32*, i32) #1

declare dso_local i32 @av_buffersrc_add_frame(i32*, i32*) #1

declare dso_local i32 @av_frame_unref(i32*) #1

declare dso_local i32 @av_buffersink_get_frame(i32*, i32*) #1

declare dso_local i32 @process_output(%struct.AVMD5*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avfilter_graph_free(i32**) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @av_freep(%struct.AVMD5**) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
