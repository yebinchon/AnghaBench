; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_open_output_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_open_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32* }

@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not open output file '%s' (error '%s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not allocate output format context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not find output file format\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not allocate url.\0A\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not find an AAC encoder.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not create new stream\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Could not allocate an encoding context\0A\00", align 1
@OUTPUT_CHANNELS = common dso_local global i32 0, align 4
@OUTPUT_BIT_RATE = common dso_local global i32 0, align 4
@FF_COMPLIANCE_EXPERIMENTAL = common dso_local global i32 0, align 4
@AVFMT_GLOBALHEADER = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not open output codec (error '%s')\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Could not initialize stream parameters\0A\00", align 1
@AVERROR_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_25__*, %struct.TYPE_24__**, %struct.TYPE_25__**)* @open_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_output_file(i8* %0, %struct.TYPE_25__* %1, %struct.TYPE_24__** %2, %struct.TYPE_25__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca %struct.TYPE_25__**, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %17 = call i32 @avio_open(i32** %11, i8* %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %14, align 4
  %23 = call i8* @av_err2str(i32 %22)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %23)
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %180

26:                                               ; preds = %4
  %27 = call %struct.TYPE_24__* (...) @avformat_alloc_context()
  %28 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %28, align 8
  %29 = icmp ne %struct.TYPE_24__* %27, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %180

35:                                               ; preds = %26
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.TYPE_22__* @av_guess_format(i32* null, i8* %40, i32* null)
  %42 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %44, align 8
  %45 = icmp ne %struct.TYPE_22__* %41, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %162

49:                                               ; preds = %35
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @av_strdup(i8* %50)
  %52 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = icmp ne i32 %51, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %14, align 4
  br label %162

61:                                               ; preds = %49
  %62 = load i32, i32* @AV_CODEC_ID_AAC, align 4
  %63 = call %struct.TYPE_26__* @avcodec_find_encoder(i32 %62)
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %13, align 8
  %64 = icmp ne %struct.TYPE_26__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %162

68:                                               ; preds = %61
  %69 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  %71 = call %struct.TYPE_23__* @avformat_new_stream(%struct.TYPE_24__* %70, i32* null)
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %12, align 8
  %72 = icmp ne %struct.TYPE_23__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %14, align 4
  br label %162

78:                                               ; preds = %68
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %80 = call %struct.TYPE_25__* @avcodec_alloc_context3(%struct.TYPE_26__* %79)
  store %struct.TYPE_25__* %80, %struct.TYPE_25__** %10, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %82 = icmp ne %struct.TYPE_25__* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %14, align 4
  br label %162

88:                                               ; preds = %78
  %89 = load i32, i32* @OUTPUT_CHANNELS, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @OUTPUT_CHANNELS, align 4
  %93 = call i32 @av_get_default_channel_layout(i32 %92)
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @OUTPUT_BIT_RATE, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @FF_COMPLIANCE_EXPERIMENTAL, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AVFMT_GLOBALHEADER, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %88
  %133 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %88
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %141 = call i32 @avcodec_open2(%struct.TYPE_25__* %139, %struct.TYPE_26__* %140, i32* null)
  store i32 %141, i32* %14, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i8* @av_err2str(i32 %145)
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* %146)
  br label %162

148:                                              ; preds = %138
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %153 = call i32 @avcodec_parameters_from_context(i32 %151, %struct.TYPE_25__* %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %162

159:                                              ; preds = %148
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %161 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %160, %struct.TYPE_25__** %161, align 8
  store i32 0, i32* %5, align 4
  br label %180

162:                                              ; preds = %156, %143, %83, %73, %65, %56, %46
  %163 = call i32 @avcodec_free_context(%struct.TYPE_25__** %10)
  %164 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = call i32 @avio_closep(i32** %166)
  %168 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %168, align 8
  %170 = call i32 @avformat_free_context(%struct.TYPE_24__* %169)
  %171 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %171, align 8
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i32, i32* %14, align 4
  br label %178

176:                                              ; preds = %162
  %177 = load i32, i32* @AVERROR_EXIT, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %159, %30, %19
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @avio_open(i32**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local %struct.TYPE_24__* @avformat_alloc_context(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_22__* @av_guess_format(i32*, i8*, i32*) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local %struct.TYPE_26__* @avcodec_find_encoder(i32) #1

declare dso_local %struct.TYPE_23__* @avformat_new_stream(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_25__* @avcodec_alloc_context3(%struct.TYPE_26__*) #1

declare dso_local i32 @av_get_default_channel_layout(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_25__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @avcodec_parameters_from_context(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_25__**) #1

declare dso_local i32 @avio_closep(i32**) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
