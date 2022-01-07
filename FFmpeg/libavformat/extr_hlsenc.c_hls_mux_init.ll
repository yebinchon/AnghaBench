; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_mux_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_hls_mux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_19__*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64, i64, i64, i64, i32* }
%struct.TYPE_23__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, %struct.TYPE_22__**, %struct.TYPE_19__*, %struct.TYPE_26__*, %struct.TYPE_19__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i32*, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }

@HLS_SINGLE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@SEGMENT_TYPE_FMP4 = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"http persistent mode is currently unsupported for fragment mp4 in the HLS muxer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Multi-file byterange mode is currently unsupported in the HLS muxer.\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to open segment '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Could not parse format options list '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fflags\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-autobsf\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"movflags\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"+frag_custom+dash+delay_moov\00", align 1
@AV_DICT_APPEND = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"Some of the provided format options in '%s' are not recognized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_23__*)* @hls_mux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_mux_init(%struct.TYPE_26__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32* null, i32** %6, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 9
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HLS_SINGLE_FILE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br label %29

29:                                               ; preds = %24, %2
  %30 = phi i1 [ true, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 13
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 12
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %37 = call i32 @avformat_alloc_output_context2(%struct.TYPE_26__** %33, %struct.TYPE_19__* %36, i32* null, i32* null)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %3, align 4
  br label %430

42:                                               ; preds = %29
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 13
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %8, align 8
  %46 = call i32 @av_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %430

56:                                               ; preds = %42
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 12
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  store %struct.TYPE_19__* %59, %struct.TYPE_19__** %61, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @av_dict_copy(i32** %88, i32* %91, i32 0)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 10
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = icmp ne %struct.TYPE_19__* %95, null
  br i1 %96, label %97, label %123

97:                                               ; preds = %56
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 11
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = call i32 @avformat_alloc_output_context2(%struct.TYPE_26__** %99, %struct.TYPE_19__* %102, i32* null, i32* null)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %3, align 4
  br label %430

108:                                              ; preds = %97
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 11
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %9, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  store %struct.TYPE_19__* %114, %struct.TYPE_19__** %116, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @av_dict_copy(i32** %118, i32* %121, i32 0)
  br label %123

123:                                              ; preds = %108, %56
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %274, %123
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %277

130:                                              ; preds = %124
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %133, i64 %135
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %130
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %14, align 8
  br label %148

146:                                              ; preds = %130
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %147, %struct.TYPE_26__** %14, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %150 = call %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_26__* %149, i32* null)
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %13, align 8
  %151 = icmp ne %struct.TYPE_25__* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %3, align 4
  br label %430

155:                                              ; preds = %148
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 9
  %161 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %161, i64 %163
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = call i32 @avcodec_parameters_copy(%struct.TYPE_20__* %158, %struct.TYPE_21__* %167)
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %218

175:                                              ; preds = %155
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 9
  %183 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %183, i64 %185
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @av_codec_get_id(i32 %180, i64 %191)
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %192, %197
  br i1 %198, label %218, label %199

199:                                              ; preds = %175
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 9
  %207 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %207, i64 %209
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @av_codec_get_tag(i32 %204, i32 %215)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %199, %175, %155
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 9
  %221 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %221, i64 %223
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 1
  store i64 %229, i64* %233, align 8
  br label %239

234:                                              ; preds = %199
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %234, %218
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 9
  %242 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %242, i64 %244
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 9
  %253 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %252, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %253, i64 %255
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 8
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 9
  %266 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %266, i64 %268
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @av_dict_copy(i32** %263, i32* %272, i32 0)
  br label %274

274:                                              ; preds = %239
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %124

277:                                              ; preds = %124
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 8
  store i64 0, i64* %281, align 8
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 2
  store i32 1, i32* %283, align 8
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @SEGMENT_TYPE_FMP4, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %314

289:                                              ; preds = %277
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %289
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %301 = load i32, i32* @AV_LOG_WARNING, align 4
  %302 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %300, i32 %301, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %303

303:                                              ; preds = %299, %294
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp sgt i64 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %310 = load i32, i32* @AV_LOG_WARNING, align 4
  %311 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %309, i32 %310, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %312 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %312, i32* %3, align 4
  br label %430

313:                                              ; preds = %303
  br label %314

314:                                              ; preds = %313, %289, %277
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  store i32 0, i32* %316, align 4
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 7
  store i64 0, i64* %318, align 8
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %321 = call i32 @set_http_options(%struct.TYPE_26__* %319, i32** %6, %struct.TYPE_24__* %320)
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = call i32 @avio_open_dyn_buf(i32* %323)
  store i32 %324, i32* %12, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = load i32, i32* %12, align 4
  store i32 %327, i32* %3, align 4
  br label %430

328:                                              ; preds = %314
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @SEGMENT_TYPE_FMP4, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %354

334:                                              ; preds = %328
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 5
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @hlsenc_io_open(%struct.TYPE_26__* %338, i32* %340, i32 %343, i32** %6)
  store i32 %344, i32* %12, align 4
  br label %353

345:                                              ; preds = %334
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 5
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = call i32 @hlsenc_io_open(%struct.TYPE_26__* %346, i32* %348, i32 %351, i32** %6)
  store i32 %352, i32* %12, align 4
  br label %353

353:                                              ; preds = %345, %337
  br label %354

354:                                              ; preds = %353, %328
  %355 = call i32 @av_dict_free(i32** %6)
  %356 = load i32, i32* %12, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %354
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %360 = load i32, i32* @AV_LOG_ERROR, align 4
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %359, i32 %360, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %363)
  %365 = load i32, i32* %12, align 4
  store i32 %365, i32* %3, align 4
  br label %430

366:                                              ; preds = %354
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 4
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %389

371:                                              ; preds = %366
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 5
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 4
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @av_dict_parse_string(i32** %373, i64 %376, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 %377, i32* %12, align 4
  %378 = load i32, i32* %12, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %371
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %382 = load i32, i32* @AV_LOG_ERROR, align 4
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 4
  %385 = load i64, i64* %384, align 8
  %386 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %381, i32 %382, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %385)
  %387 = load i32, i32* %12, align 4
  store i32 %387, i32* %3, align 4
  br label %430

388:                                              ; preds = %371
  br label %389

389:                                              ; preds = %388, %366
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 5
  %392 = load i32*, i32** %391, align 8
  %393 = call i32 @av_dict_copy(i32** %6, i32* %392, i32 0)
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @SEGMENT_TYPE_FMP4, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %424

399:                                              ; preds = %389
  %400 = call i32 @av_dict_set(i32** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %401 = load i32, i32* @AV_DICT_APPEND, align 4
  %402 = call i32 @av_dict_set(i32** %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %401)
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %404 = call i32 @avformat_init_output(%struct.TYPE_26__* %403, i32** %6)
  store i32 %404, i32* %12, align 4
  %405 = load i32, i32* %12, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %399
  %408 = load i32, i32* %12, align 4
  store i32 %408, i32* %3, align 4
  br label %430

409:                                              ; preds = %399
  %410 = load i32*, i32** %6, align 8
  %411 = call i64 @av_dict_count(i32* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %423

413:                                              ; preds = %409
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %415 = load i32, i32* @AV_LOG_ERROR, align 4
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 4
  %418 = load i64, i64* %417, align 8
  %419 = call i32 (%struct.TYPE_26__*, i32, i8*, ...) @av_log(%struct.TYPE_26__* %414, i32 %415, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i64 %418)
  %420 = call i32 @av_dict_free(i32** %6)
  %421 = load i32, i32* @EINVAL, align 4
  %422 = call i32 @AVERROR(i32 %421)
  store i32 %422, i32* %3, align 4
  br label %430

423:                                              ; preds = %409
  br label %424

424:                                              ; preds = %423, %389
  %425 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @avio_flush(i32 %427)
  %429 = call i32 @av_dict_free(i32** %6)
  store i32 0, i32* %3, align 4
  br label %430

430:                                              ; preds = %424, %413, %407, %380, %358, %326, %308, %152, %106, %53, %40
  %431 = load i32, i32* %3, align 4
  ret i32 %431
}

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_26__**, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_copy(i32**, i32*, i32) #1

declare dso_local %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i64 @av_codec_get_id(i32, i64) #1

declare dso_local i64 @av_codec_get_tag(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_26__*, i32, i8*, ...) #1

declare dso_local i32 @set_http_options(%struct.TYPE_26__*, i32**, %struct.TYPE_24__*) #1

declare dso_local i32 @avio_open_dyn_buf(i32*) #1

declare dso_local i32 @hlsenc_io_open(%struct.TYPE_26__*, i32*, i32, i32**) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @av_dict_parse_string(i32**, i64, i8*, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avformat_init_output(%struct.TYPE_26__*, i32**) #1

declare dso_local i64 @av_dict_count(i32*) #1

declare dso_local i32 @avio_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
