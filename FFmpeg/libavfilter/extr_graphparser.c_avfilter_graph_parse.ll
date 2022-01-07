; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphparser.c_avfilter_graph_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, i8*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Not enough inputs specified for the \22%s\22 filter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Invalid filterchain containing an unlabelled output pad: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_graph_parse(%struct.TYPE_17__* %0, i8* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @avfilter_graph_parse2(%struct.TYPE_17__* %16, i8* %17, %struct.TYPE_16__** %14, %struct.TYPE_16__** %15)
  store i32 %18, i32* %11, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %146

21:                                               ; preds = %5
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i8* @av_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %24, %21
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %12, align 8
  br label %35

35:                                               ; preds = %82, %33
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %37 = icmp ne %struct.TYPE_16__* %36, null
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @AV_LOG_ERROR, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @av_log(i8* %44, i32 %45, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %11, align 4
  br label %146

56:                                               ; preds = %38
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call %struct.TYPE_16__* @extract_inout(i8* %59, %struct.TYPE_16__** %9)
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %13, align 8
  %61 = icmp ne %struct.TYPE_16__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %82

63:                                               ; preds = %56
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @avfilter_link(%struct.TYPE_18__* %66, i32 %69, %struct.TYPE_18__* %72, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %13)
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  br label %146

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %12, align 8
  br label %35

86:                                               ; preds = %35
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %88 = icmp ne %struct.TYPE_16__* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = call i8* @av_strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %89, %86
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %12, align 8
  br label %100

100:                                              ; preds = %141, %98
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = icmp ne %struct.TYPE_16__* %101, null
  br i1 %102, label %103, label %145

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @av_log(i8* %109, i32 %110, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %11, align 4
  br label %146

115:                                              ; preds = %103
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call %struct.TYPE_16__* @extract_inout(i8* %118, %struct.TYPE_16__** %8)
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %13, align 8
  %120 = icmp ne %struct.TYPE_16__* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %141

122:                                              ; preds = %115
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @avfilter_link(%struct.TYPE_18__* %125, i32 %128, %struct.TYPE_18__* %131, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %13)
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  br label %146

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %140, %121
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %143, align 8
  store %struct.TYPE_16__* %144, %struct.TYPE_16__** %12, align 8
  br label %100

145:                                              ; preds = %100
  br label %146

146:                                              ; preds = %145, %139, %108, %80, %43, %20
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %155, %149
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @avfilter_free(i32 %160)
  br label %150

162:                                              ; preds = %150
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = call i32 @av_freep(i32** %164)
  br label %166

166:                                              ; preds = %162, %146
  %167 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %14)
  %168 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %15)
  %169 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %8)
  %170 = call i32 @avfilter_inout_free(%struct.TYPE_16__** %9)
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

declare dso_local i32 @avfilter_graph_parse2(%struct.TYPE_17__*, i8*, %struct.TYPE_16__**, %struct.TYPE_16__**) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_16__* @extract_inout(i8*, %struct.TYPE_16__**) #1

declare dso_local i32 @avfilter_link(%struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @avfilter_inout_free(%struct.TYPE_16__**) #1

declare dso_local i32 @avfilter_free(i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
