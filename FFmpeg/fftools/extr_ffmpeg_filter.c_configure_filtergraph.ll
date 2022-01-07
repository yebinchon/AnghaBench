; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_filtergraph.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_filter.c_configure_filtergraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32* }
%struct.TYPE_35__ = type { i8*, i32, i32, i32, %struct.TYPE_40__**, %struct.TYPE_49__**, %struct.TYPE_41__* }
%struct.TYPE_40__ = type { %struct.TYPE_34__*, i32, i64, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64, i64 }
%struct.TYPE_49__ = type { %struct.TYPE_48__*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_48__ = type { i8*, i8*, i8*, %struct.TYPE_46__*, %struct.TYPE_45__*, %struct.TYPE_44__*, %struct.TYPE_43__*, i32, i32, i32, i32 }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { i64, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_39__**, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_36__* }
%struct.TYPE_37__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@filter_nbthreads = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s=%s:\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"aresample_swr_opts\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@filter_complex_nbthreads = common dso_local global i32 0, align 4
@filter_hw_device = common dso_local global %struct.TYPE_38__* null, align 8
@hw_device_ctx = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [193 x i8] c"Simple filtergraph '%s' was expected to have exactly 1 input and 1 output. However, it had %s input(s) and %s output(s). Please adjust, or use a complex filtergraph (-filter_complex) instead.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"Encoder (codec %s) not found for output stream #%d:%d\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_CODEC_CAP_VARIABLE_FRAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @configure_filtergraph(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_48__*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_49__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_48__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %24 = call i32 @filtergraph_is_simple(%struct.TYPE_35__* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %30, i64 0
  %32 = load %struct.TYPE_49__*, %struct.TYPE_49__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_48__*, %struct.TYPE_48__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = phi i8* [ %36, %27 ], [ %40, %37 ]
  store i8* %42, i8** %10, align 8
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %44 = call i32 @cleanup_filtergraph(%struct.TYPE_35__* %43)
  %45 = call %struct.TYPE_41__* (...) @avfilter_graph_alloc()
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 6
  store %struct.TYPE_41__* %45, %struct.TYPE_41__** %47, align 8
  %48 = icmp ne %struct.TYPE_41__* %45, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %627

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %187

55:                                               ; preds = %52
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %58, i64 0
  %60 = load %struct.TYPE_49__*, %struct.TYPE_49__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_48__*, %struct.TYPE_48__** %61, align 8
  store %struct.TYPE_48__* %62, %struct.TYPE_48__** %11, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %13, align 8
  %63 = load i32, i32* @filter_nbthreads, align 4
  %64 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %64, i32 0, i32 6
  %66 = load %struct.TYPE_41__*, %struct.TYPE_41__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %68, align 16
  br label %69

69:                                               ; preds = %77, %55
  %70 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %74 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %75 = call %struct.TYPE_37__* @av_dict_get(i32 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_37__* %73, i32 %74)
  store %struct.TYPE_37__* %75, %struct.TYPE_37__** %13, align 8
  %76 = icmp ne %struct.TYPE_37__* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @av_strlcatf(i8* %78, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %84)
  br label %69

86:                                               ; preds = %69
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %88 = call i32 @strlen(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %92 = call i32 @strlen(i8* %91)
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %94
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %90, %86
  %97 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %98 = call i32 @av_strdup(i8* %97)
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_41__*, %struct.TYPE_41__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 4
  %103 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %103, align 16
  br label %104

104:                                              ; preds = %112, %96
  %105 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %109 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %110 = call %struct.TYPE_37__* @av_dict_get(i32 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_37__* %108, i32 %109)
  store %struct.TYPE_37__* %110, %struct.TYPE_37__** %13, align 8
  %111 = icmp ne %struct.TYPE_37__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @av_strlcatf(i8* %113, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %116, i8* %119)
  br label %104

121:                                              ; preds = %104
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %123 = call i32 @strlen(i8* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %127 = call i32 @strlen(i8* %126)
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %125, %121
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 6
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %133, align 8
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %136 = call i32 @av_opt_set(%struct.TYPE_41__* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %135, i32 0)
  %137 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %137, align 16
  br label %138

138:                                              ; preds = %152, %131
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %141, i64 0
  %143 = load %struct.TYPE_49__*, %struct.TYPE_49__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_48__*, %struct.TYPE_48__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %149 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %150 = call %struct.TYPE_37__* @av_dict_get(i32 %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_37__* %148, i32 %149)
  store %struct.TYPE_37__* %150, %struct.TYPE_37__** %13, align 8
  %151 = icmp ne %struct.TYPE_37__* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %138
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @av_strlcatf(i8* %153, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %156, i8* %159)
  br label %138

161:                                              ; preds = %138
  %162 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %163 = call i32 @strlen(i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %167 = call i32 @strlen(i8* %166)
  %168 = sub nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 %169
  store i8 0, i8* %170, align 1
  br label %171

171:                                              ; preds = %165, %161
  %172 = load %struct.TYPE_48__*, %struct.TYPE_48__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = call %struct.TYPE_37__* @av_dict_get(i32 %174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_37__* null, i32 0)
  store %struct.TYPE_37__* %175, %struct.TYPE_37__** %13, align 8
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %177 = icmp ne %struct.TYPE_37__* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %171
  %179 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %180, align 8
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @av_opt_set(%struct.TYPE_41__* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %184, i32 0)
  br label %186

186:                                              ; preds = %178, %171
  br label %193

187:                                              ; preds = %52
  %188 = load i32, i32* @filter_complex_nbthreads, align 4
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 8
  br label %193

193:                                              ; preds = %187, %186
  %194 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %195, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @avfilter_graph_parse2(%struct.TYPE_41__* %196, i8* %197, %struct.TYPE_36__** %4, %struct.TYPE_36__** %5)
  store i32 %198, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %623

201:                                              ; preds = %193
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** @filter_hw_device, align 8
  %203 = icmp ne %struct.TYPE_38__* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201
  %205 = load i32*, i32** @hw_device_ctx, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %259

207:                                              ; preds = %204, %201
  %208 = load %struct.TYPE_38__*, %struct.TYPE_38__** @filter_hw_device, align 8
  %209 = icmp ne %struct.TYPE_38__* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** @filter_hw_device, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  br label %216

214:                                              ; preds = %207
  %215 = load i32*, i32** @hw_device_ctx, align 8
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi i32* [ %213, %210 ], [ %215, %214 ]
  store i32* %217, i32** %14, align 8
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %255, %216
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %220, i32 0, i32 6
  %222 = load %struct.TYPE_41__*, %struct.TYPE_41__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %219, %224
  br i1 %225, label %226, label %258

226:                                              ; preds = %218
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @av_buffer_ref(i32* %227)
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %233, i64 %235
  %237 = load %struct.TYPE_39__*, %struct.TYPE_39__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %237, i32 0, i32 0
  store i32 %228, i32* %238, align 4
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 6
  %241 = load %struct.TYPE_41__*, %struct.TYPE_41__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %243, i64 %245
  %247 = load %struct.TYPE_39__*, %struct.TYPE_39__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %226
  %252 = load i32, i32* @ENOMEM, align 4
  %253 = call i32 @AVERROR(i32 %252)
  store i32 %253, i32* %7, align 4
  br label %623

254:                                              ; preds = %226
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %8, align 4
  br label %218

258:                                              ; preds = %218
  br label %259

259:                                              ; preds = %258, %204
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %310

262:                                              ; preds = %259
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %264 = icmp ne %struct.TYPE_36__* %263, null
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %267, align 8
  %269 = icmp ne %struct.TYPE_36__* %268, null
  br i1 %269, label %278, label %270

270:                                              ; preds = %265
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %272 = icmp ne %struct.TYPE_36__* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_36__*, %struct.TYPE_36__** %275, align 8
  %277 = icmp ne %struct.TYPE_36__* %276, null
  br i1 %277, label %278, label %310

278:                                              ; preds = %273, %270, %265, %262
  %279 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %280 = icmp ne %struct.TYPE_36__* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %278
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %290

282:                                              ; preds = %278
  %283 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %284, align 8
  %286 = icmp ne %struct.TYPE_36__* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %289

288:                                              ; preds = %282
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %289

289:                                              ; preds = %288, %287
  br label %290

290:                                              ; preds = %289, %281
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %292 = icmp ne %struct.TYPE_36__* %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %302

294:                                              ; preds = %290
  %295 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_36__*, %struct.TYPE_36__** %296, align 8
  %298 = icmp ne %struct.TYPE_36__* %297, null
  br i1 %298, label %299, label %300

299:                                              ; preds = %294
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %301

300:                                              ; preds = %294
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %15, align 8
  br label %301

301:                                              ; preds = %300, %299
  br label %302

302:                                              ; preds = %301, %293
  %303 = load i32, i32* @AV_LOG_ERROR, align 4
  %304 = load i8*, i8** %10, align 8
  %305 = load i8*, i8** %15, align 8
  %306 = load i8*, i8** %16, align 8
  %307 = call i32 @av_log(i32* null, i32 %303, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.7, i64 0, i64 0), i8* %304, i8* %305, i8* %306)
  %308 = load i32, i32* @EINVAL, align 4
  %309 = call i32 @AVERROR(i32 %308)
  store i32 %309, i32* %7, align 4
  br label %623

310:                                              ; preds = %273, %259
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_36__* %311, %struct.TYPE_36__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %312

312:                                              ; preds = %331, %310
  %313 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %314 = icmp ne %struct.TYPE_36__* %313, null
  br i1 %314, label %315, label %337

315:                                              ; preds = %312
  %316 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %317 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 4
  %319 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %319, i64 %321
  %323 = load %struct.TYPE_40__*, %struct.TYPE_40__** %322, align 8
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %325 = call i32 @configure_input_filter(%struct.TYPE_35__* %316, %struct.TYPE_40__* %323, %struct.TYPE_36__* %324)
  store i32 %325, i32* %7, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %315
  %328 = call i32 @avfilter_inout_free(%struct.TYPE_36__** %4)
  %329 = call i32 @avfilter_inout_free(%struct.TYPE_36__** %5)
  br label %623

330:                                              ; preds = %315
  br label %331

331:                                              ; preds = %330
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_36__*, %struct.TYPE_36__** %333, align 8
  store %struct.TYPE_36__* %334, %struct.TYPE_36__** %6, align 8
  %335 = load i32, i32* %8, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %8, align 4
  br label %312

337:                                              ; preds = %312
  %338 = call i32 @avfilter_inout_free(%struct.TYPE_36__** %4)
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_36__* %339, %struct.TYPE_36__** %6, align 8
  store i32 0, i32* %8, align 4
  br label %340

340:                                              ; preds = %354, %337
  %341 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %342 = icmp ne %struct.TYPE_36__* %341, null
  br i1 %342, label %343, label %360

343:                                              ; preds = %340
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 5
  %347 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %346, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %347, i64 %349
  %351 = load %struct.TYPE_49__*, %struct.TYPE_49__** %350, align 8
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %353 = call i32 @configure_output_filter(%struct.TYPE_35__* %344, %struct.TYPE_49__* %351, %struct.TYPE_36__* %352)
  br label %354

354:                                              ; preds = %343
  %355 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %356, align 8
  store %struct.TYPE_36__* %357, %struct.TYPE_36__** %6, align 8
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %8, align 4
  br label %340

360:                                              ; preds = %340
  %361 = call i32 @avfilter_inout_free(%struct.TYPE_36__** %5)
  %362 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %362, i32 0, i32 6
  %364 = load %struct.TYPE_41__*, %struct.TYPE_41__** %363, align 8
  %365 = call i32 @avfilter_graph_config(%struct.TYPE_41__* %364, i32* null)
  store i32 %365, i32* %7, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  br label %623

368:                                              ; preds = %360
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %406, %368
  %370 = load i32, i32* %8, align 4
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = icmp slt i32 %370, %373
  br i1 %374, label %375, label %409

375:                                              ; preds = %369
  %376 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %376, i32 0, i32 5
  %378 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %377, align 8
  %379 = load i32, i32* %8, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %378, i64 %380
  %382 = load %struct.TYPE_49__*, %struct.TYPE_49__** %381, align 8
  store %struct.TYPE_49__* %382, %struct.TYPE_49__** %17, align 8
  %383 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %383, i32 0, i32 6
  %385 = load i32*, i32** %384, align 8
  store i32* %385, i32** %18, align 8
  %386 = load i32*, i32** %18, align 8
  %387 = call i32 @av_buffersink_get_format(i32* %386)
  %388 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %389 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %388, i32 0, i32 5
  store i32 %387, i32* %389, align 8
  %390 = load i32*, i32** %18, align 8
  %391 = call i32 @av_buffersink_get_w(i32* %390)
  %392 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 4
  %394 = load i32*, i32** %18, align 8
  %395 = call i32 @av_buffersink_get_h(i32* %394)
  %396 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %397 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %396, i32 0, i32 3
  store i32 %395, i32* %397, align 8
  %398 = load i32*, i32** %18, align 8
  %399 = call i32 @av_buffersink_get_sample_rate(i32* %398)
  %400 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %401 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %400, i32 0, i32 2
  store i32 %399, i32* %401, align 4
  %402 = load i32*, i32** %18, align 8
  %403 = call i32 @av_buffersink_get_channel_layout(i32* %402)
  %404 = load %struct.TYPE_49__*, %struct.TYPE_49__** %17, align 8
  %405 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 8
  br label %406

406:                                              ; preds = %375
  %407 = load i32, i32* %8, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %8, align 4
  br label %369

409:                                              ; preds = %369
  %410 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %410, i32 0, i32 2
  store i32 1, i32* %411, align 4
  store i32 0, i32* %8, align 4
  br label %412

412:                                              ; preds = %481, %409
  %413 = load i32, i32* %8, align 4
  %414 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = icmp slt i32 %413, %416
  br i1 %417, label %418, label %484

418:                                              ; preds = %412
  %419 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %419, i32 0, i32 5
  %421 = load %struct.TYPE_49__**, %struct.TYPE_49__*** %420, align 8
  %422 = load i32, i32* %8, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_49__*, %struct.TYPE_49__** %421, i64 %423
  %425 = load %struct.TYPE_49__*, %struct.TYPE_49__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_48__*, %struct.TYPE_48__** %426, align 8
  store %struct.TYPE_48__* %427, %struct.TYPE_48__** %19, align 8
  %428 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %429 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %428, i32 0, i32 5
  %430 = load %struct.TYPE_44__*, %struct.TYPE_44__** %429, align 8
  %431 = icmp ne %struct.TYPE_44__* %430, null
  br i1 %431, label %451, label %432

432:                                              ; preds = %418
  %433 = load i32, i32* @AV_LOG_ERROR, align 4
  %434 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %435 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %434, i32 0, i32 6
  %436 = load %struct.TYPE_43__*, %struct.TYPE_43__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = call i8* @avcodec_get_name(i32 %440)
  %442 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %443 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %442, i32 0, i32 1
  %444 = load i8*, i8** %443, align 8
  %445 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %446 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %445, i32 0, i32 2
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @av_log(i32* null, i32 %433, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i8* %441, i8* %444, i8* %447)
  %449 = load i32, i32* @EINVAL, align 4
  %450 = call i32 @AVERROR(i32 %449)
  store i32 %450, i32* %7, align 4
  br label %623

451:                                              ; preds = %418
  %452 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %453 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %452, i32 0, i32 5
  %454 = load %struct.TYPE_44__*, %struct.TYPE_44__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %454, i32 0, i32 0
  %456 = load i64, i64* %455, align 8
  %457 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %480

459:                                              ; preds = %451
  %460 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %460, i32 0, i32 5
  %462 = load %struct.TYPE_44__*, %struct.TYPE_44__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @AV_CODEC_CAP_VARIABLE_FRAME_SIZE, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %480, label %468

468:                                              ; preds = %459
  %469 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %470 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %469, i32 0, i32 4
  %471 = load %struct.TYPE_45__*, %struct.TYPE_45__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_48__*, %struct.TYPE_48__** %19, align 8
  %475 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %474, i32 0, i32 3
  %476 = load %struct.TYPE_46__*, %struct.TYPE_46__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @av_buffersink_set_frame_size(i32 %473, i32 %478)
  br label %480

480:                                              ; preds = %468, %459, %451
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %8, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %8, align 4
  br label %412

484:                                              ; preds = %412
  store i32 0, i32* %8, align 4
  br label %485

485:                                              ; preds = %532, %484
  %486 = load i32, i32* %8, align 4
  %487 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 8
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %491, label %535

491:                                              ; preds = %485
  br label %492

492:                                              ; preds = %530, %491
  %493 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %494 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %493, i32 0, i32 4
  %495 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %494, align 8
  %496 = load i32, i32* %8, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %495, i64 %497
  %499 = load %struct.TYPE_40__*, %struct.TYPE_40__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %499, i32 0, i32 3
  %501 = load i64, i64* %500, align 8
  %502 = call i64 @av_fifo_size(i64 %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %531

504:                                              ; preds = %492
  %505 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %505, i32 0, i32 4
  %507 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %506, align 8
  %508 = load i32, i32* %8, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %507, i64 %509
  %511 = load %struct.TYPE_40__*, %struct.TYPE_40__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %511, i32 0, i32 3
  %513 = load i64, i64* %512, align 8
  %514 = call i32 @av_fifo_generic_read(i64 %513, i32** %20, i32 8, i32* null)
  %515 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %515, i32 0, i32 4
  %517 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %516, align 8
  %518 = load i32, i32* %8, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %517, i64 %519
  %521 = load %struct.TYPE_40__*, %struct.TYPE_40__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 8
  %524 = load i32*, i32** %20, align 8
  %525 = call i32 @av_buffersrc_add_frame(i32 %523, i32* %524)
  store i32 %525, i32* %7, align 4
  %526 = call i32 @av_frame_free(i32** %20)
  %527 = load i32, i32* %7, align 4
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %530

529:                                              ; preds = %504
  br label %623

530:                                              ; preds = %504
  br label %492

531:                                              ; preds = %492
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %8, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %8, align 4
  br label %485

535:                                              ; preds = %485
  store i32 0, i32* %8, align 4
  br label %536

536:                                              ; preds = %569, %535
  %537 = load i32, i32* %8, align 4
  %538 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %539 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 8
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %542, label %572

542:                                              ; preds = %536
  %543 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %543, i32 0, i32 4
  %545 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %544, align 8
  %546 = load i32, i32* %8, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %545, i64 %547
  %549 = load %struct.TYPE_40__*, %struct.TYPE_40__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %549, i32 0, i32 2
  %551 = load i64, i64* %550, align 8
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %568

553:                                              ; preds = %542
  %554 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %555 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %554, i32 0, i32 4
  %556 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %555, align 8
  %557 = load i32, i32* %8, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %556, i64 %558
  %560 = load %struct.TYPE_40__*, %struct.TYPE_40__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 8
  %563 = call i32 @av_buffersrc_add_frame(i32 %562, i32* null)
  store i32 %563, i32* %7, align 4
  %564 = load i32, i32* %7, align 4
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %553
  br label %623

567:                                              ; preds = %553
  br label %568

568:                                              ; preds = %567, %542
  br label %569

569:                                              ; preds = %568
  %570 = load i32, i32* %8, align 4
  %571 = add nsw i32 %570, 1
  store i32 %571, i32* %8, align 4
  br label %536

572:                                              ; preds = %536
  store i32 0, i32* %8, align 4
  br label %573

573:                                              ; preds = %619, %572
  %574 = load i32, i32* %8, align 4
  %575 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %576 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 8
  %578 = icmp slt i32 %574, %577
  br i1 %578, label %579, label %622

579:                                              ; preds = %573
  %580 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %580, i32 0, i32 4
  %582 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %581, align 8
  %583 = load i32, i32* %8, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %582, i64 %584
  %586 = load %struct.TYPE_40__*, %struct.TYPE_40__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %586, i32 0, i32 0
  %588 = load %struct.TYPE_34__*, %struct.TYPE_34__** %587, align 8
  store %struct.TYPE_34__* %588, %struct.TYPE_34__** %21, align 8
  %589 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %590 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %590, i32 0, i32 0
  %592 = load i64, i64* %591, align 8
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %618

594:                                              ; preds = %579
  %595 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %596 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %596, i32 0, i32 1
  %598 = load i64, i64* %597, align 8
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %618

600:                                              ; preds = %594
  br label %601

601:                                              ; preds = %608, %600
  %602 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %603 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = call i64 @av_fifo_size(i64 %605)
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %617

608:                                              ; preds = %601
  %609 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %610 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = call i32 @av_fifo_generic_read(i64 %612, i32** %22, i32 8, i32* null)
  %614 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %615 = call i32 @sub2video_update(%struct.TYPE_34__* %614, i32** %22)
  %616 = call i32 @avsubtitle_free(i32** %22)
  br label %601

617:                                              ; preds = %601
  br label %618

618:                                              ; preds = %617, %594, %579
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %8, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %8, align 4
  br label %573

622:                                              ; preds = %573
  store i32 0, i32* %2, align 4
  br label %627

623:                                              ; preds = %566, %529, %432, %367, %327, %302, %251, %200
  %624 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %625 = call i32 @cleanup_filtergraph(%struct.TYPE_35__* %624)
  %626 = load i32, i32* %7, align 4
  store i32 %626, i32* %2, align 4
  br label %627

627:                                              ; preds = %623, %622, %49
  %628 = load i32, i32* %2, align 4
  ret i32 %628
}

declare dso_local i32 @filtergraph_is_simple(%struct.TYPE_35__*) #1

declare dso_local i32 @cleanup_filtergraph(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_41__* @avfilter_graph_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_37__* @av_dict_get(i32, i8*, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i32 @av_opt_set(%struct.TYPE_41__*, i8*, i8*, i32) #1

declare dso_local i32 @avfilter_graph_parse2(%struct.TYPE_41__*, i8*, %struct.TYPE_36__**, %struct.TYPE_36__**) #1

declare dso_local i32 @av_buffer_ref(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @configure_input_filter(%struct.TYPE_35__*, %struct.TYPE_40__*, %struct.TYPE_36__*) #1

declare dso_local i32 @avfilter_inout_free(%struct.TYPE_36__**) #1

declare dso_local i32 @configure_output_filter(%struct.TYPE_35__*, %struct.TYPE_49__*, %struct.TYPE_36__*) #1

declare dso_local i32 @avfilter_graph_config(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @av_buffersink_get_format(i32*) #1

declare dso_local i32 @av_buffersink_get_w(i32*) #1

declare dso_local i32 @av_buffersink_get_h(i32*) #1

declare dso_local i32 @av_buffersink_get_sample_rate(i32*) #1

declare dso_local i32 @av_buffersink_get_channel_layout(i32*) #1

declare dso_local i8* @avcodec_get_name(i32) #1

declare dso_local i32 @av_buffersink_set_frame_size(i32, i32) #1

declare dso_local i64 @av_fifo_size(i64) #1

declare dso_local i32 @av_fifo_generic_read(i64, i32**, i32, i32*) #1

declare dso_local i32 @av_buffersrc_add_frame(i32, i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @sub2video_update(%struct.TYPE_34__*, i32**) #1

declare dso_local i32 @avsubtitle_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
