; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_do_probe.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i32, %struct.TYPE_21__*, i64*, i8* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_20__ = type { i32, i64, i32 }

@HB_MAX_PROBE_SIZE = common dso_local global i32 0, align 4
@HB_MAX_PROBES = common dso_local global i64 0, align 8
@AVPROBE_PADDING_SIZE = common dso_local global i64 0, align 8
@HB_ACODEC_DCA_HD = common dso_local global i64 0, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@do_probe.fmt_id_type = internal constant [19 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 144 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 146 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 145 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 141 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 140 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 137 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 131 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 134 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 132 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 143 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 142 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 139 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 128 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"g722\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mlp\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"truehd\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"shn\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"aac\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ac3\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"eac3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"h264\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"m4v\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mp3\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"mpegvideo\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"cavsvideo\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dnxhd\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"h261\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"h263\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"mjpeg\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"vc1\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@WORK_DECAVCODECV = common dso_local global i8* null, align 8
@V = common dso_local global i8* null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@A = common dso_local global i8* null, align 8
@HB_ACODEC_AC3 = common dso_local global i64 0, align 8
@HB_ACODEC_FFMPEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, %struct.TYPE_17__*)* @do_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_probe(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = icmp eq %struct.TYPE_21__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = call i8* @hb_buffer_init(i32 0)
  %21 = bitcast i8* %20 to %struct.TYPE_21__*
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 5
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %19, %3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @HB_MAX_PROBE_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 5
  %43 = call i32 @hb_buffer_close(%struct.TYPE_21__** %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HB_MAX_PROBES, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %317

50:                                               ; preds = %36
  %51 = call i8* @hb_buffer_init(i32 0)
  %52 = bitcast i8* %51 to %struct.TYPE_21__*
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %54, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %28
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @AVPROBE_PADDING_SIZE, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @hb_buffer_realloc(%struct.TYPE_21__* %69, i64 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %79, %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy(i64 %86, i32 %89, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @HB_ACODEC_DCA_HD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %57
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = call i32 @probe_dts_profile(i32* %105, %struct.TYPE_16__* %106)
  store i32 %107, i32* %4, align 4
  br label %317

108:                                              ; preds = %57
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %317

119:                                              ; preds = %108
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 5
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 2
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %119
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = call i32 @do_deep_probe(i32* %134, %struct.TYPE_16__* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 5
  %142 = call i32 @hb_buffer_close(%struct.TYPE_21__** %141)
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %317

145:                                              ; preds = %119
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  store i32 0, i32* %11, align 4
  %146 = bitcast %struct.TYPE_18__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %146, i8 0, i64 24, i1 false)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i64 %151, i64* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = call %struct.TYPE_19__* @av_probe_input_format2(%struct.TYPE_18__* %12, i32 1, i32* %11)
  store %struct.TYPE_19__* %159, %struct.TYPE_19__** %10, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %161 = icmp ne %struct.TYPE_19__* %160, null
  br i1 %161, label %162, label %315

162:                                              ; preds = %145
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %165 = sdiv i32 %164, 2
  %166 = icmp sgt i32 %163, %165
  br i1 %166, label %167, label %315

167:                                              ; preds = %162
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.TYPE_20__* @avcodec_find_decoder_by_name(i32 %170)
  store %struct.TYPE_20__* %171, %struct.TYPE_20__** %13, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %173 = icmp ne %struct.TYPE_20__* %172, null
  br i1 %173, label %205, label %174

174:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %201, %174
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* @do_probe.fmt_id_type, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 16
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %204

182:                                              ; preds = %175
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* @do_probe.fmt_id_type, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.anon, %struct.anon* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 16
  %191 = call i32 @strcmp(i32 %185, i8* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* @do_probe.fmt_id_type, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call %struct.TYPE_20__* @avcodec_find_decoder(i32 %198)
  store %struct.TYPE_20__* %199, %struct.TYPE_20__** %13, align 8
  br label %204

200:                                              ; preds = %182
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %175

204:                                              ; preds = %193, %175
  br label %205

205:                                              ; preds = %204, %167
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %207 = icmp ne %struct.TYPE_20__* %206, null
  br i1 %207, label %208, label %305

208:                                              ; preds = %205
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %270

220:                                              ; preds = %208
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  switch i32 %223, label %261 [
    i32 133, label %224
    i32 132, label %234
    i32 137, label %241
    i32 128, label %251
  ]

224:                                              ; preds = %220
  %225 = load i8*, i8** @WORK_DECAVCODECV, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 4
  store i32 1, i32* %230, align 8
  %231 = load i8*, i8** @V, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  br label %269

234:                                              ; preds = %220
  %235 = load i8*, i8** @WORK_DECAVCODECV, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 4
  store i32 2, i32* %240, align 8
  br label %269

241:                                              ; preds = %220
  %242 = load i8*, i8** @WORK_DECAVCODECV, align 8
  %243 = ptrtoint i8* %242 to i64
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 4
  store i32 27, i32* %247, align 8
  %248 = load i8*, i8** @V, align 8
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 7
  store i8* %248, i8** %250, align 8
  br label %269

251:                                              ; preds = %220
  %252 = load i8*, i8** @WORK_DECAVCODECV, align 8
  %253 = ptrtoint i8* %252 to i64
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  store i64 %253, i64* %255, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 4
  store i32 234, i32* %257, align 8
  %258 = load i8*, i8** @V, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 7
  store i8* %258, i8** %260, align 8
  br label %269

261:                                              ; preds = %220
  %262 = load i8*, i8** @WORK_DECAVCODECV, align 8
  %263 = ptrtoint i8* %262 to i64
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 2
  store i64 %263, i64* %265, align 8
  %266 = load i8*, i8** @V, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 7
  store i8* %266, i8** %268, align 8
  br label %269

269:                                              ; preds = %261, %251, %241, %234, %224
  br label %293

270:                                              ; preds = %208
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %270
  %277 = load i8*, i8** @A, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 7
  store i8* %277, i8** %279, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  switch i32 %282, label %287 [
    i32 145, label %283
  ]

283:                                              ; preds = %276
  %284 = load i64, i64* @HB_ACODEC_AC3, align 8
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  br label %291

287:                                              ; preds = %276
  %288 = load i64, i64* @HB_ACODEC_FFMPEG, align 8
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 2
  store i64 %288, i64* %290, align 8
  br label %291

291:                                              ; preds = %287, %283
  br label %292

292:                                              ; preds = %291, %270
  br label %293

293:                                              ; preds = %292, %269
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 6
  %296 = load i64*, i64** %295, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @strncpy(i64* %296, i32 %299, i32 79)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 6
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 79
  store i64 0, i64* %304, align 8
  br label %305

305:                                              ; preds = %293, %205
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 132
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 5
  %313 = call i32 @hb_buffer_close(%struct.TYPE_21__** %312)
  store i32 1, i32* %8, align 4
  br label %314

314:                                              ; preds = %310, %305
  br label %315

315:                                              ; preds = %314, %162, %145
  %316 = load i32, i32* %8, align 4
  store i32 %316, i32* %4, align 4
  br label %317

317:                                              ; preds = %315, %143, %118, %104, %49
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local i8* @hb_buffer_init(i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_21__**) #1

declare dso_local i32 @hb_buffer_realloc(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @probe_dts_profile(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @do_deep_probe(i32*, %struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_19__* @av_probe_input_format2(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @avcodec_find_decoder_by_name(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_20__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
