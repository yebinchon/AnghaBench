; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_audio_decoder.c_avcodec_input_port_set_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_audio_decoder.c_avcodec_input_port_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_21__*, %struct.TYPE_30__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_19__**, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { %struct.TYPE_28__*, %struct.TYPE_20__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_22__*, i32, i64 }
%struct.TYPE_22__ = type { i64, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@CODEC_ID_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ffmpeg codec id %d (for %4.4s) not recognized\00", align 1
@MMAL_ENXIO = common dso_local global i32 0, align 4
@AVCODEC_MAX_AUDIO_FRAME_SIZE = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"avcodec extradata\00", align 1
@CODEC_CAP_TRUNCATED = common dso_local global i32 0, align 4
@CODEC_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"could not open codec\00", align 1
@MMAL_EIO = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"avcodec output format %i\00", align 1
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*)* @avcodec_input_port_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avcodec_input_port_set_format(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_30__* %10, %struct.TYPE_30__** %4, align 8
  %11 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  store %struct.TYPE_31__* %15, %struct.TYPE_31__** %5, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @encoding_to_codecid(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CODEC_ID_NONE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_18__* @avcodec_find_decoder(i32 %26)
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %7, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 4
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %35)
  %37 = load i32, i32* @MMAL_ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %263

38:                                               ; preds = %25
  %39 = load i32, i32* @AVCODEC_MAX_AUDIO_FRAME_SIZE, align 4
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @av_free(i64 %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @av_malloc(i32 %54)
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 8
  store i32 %65, i32* %69, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 7
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 6
  store i32 %89, i32* %93, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 5
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 4
  store i32 %110, i32* %114, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 3
  store i64 %119, i64* %123, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i64 @vcos_calloc(i32 1, i64 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  store i64 %131, i64* %135, align 8
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %51
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @memcpy(i64 %147, i32 %152, i64 %157)
  br label %159

159:                                              ; preds = %142, %51
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @CODEC_CAP_TRUNCATED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load i32, i32* @CODEC_FLAG_TRUNCATED, align 4
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %166, %159
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %179 = call i64 @avcodec_open(%struct.TYPE_22__* %177, %struct.TYPE_18__* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %183 = load i32, i32* @MMAL_EIO, align 4
  store i32 %183, i32* %2, align 4
  br label %263

184:                                              ; preds = %174
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @AV_SAMPLE_FMT_NONE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  store i64 %193, i64* %197, align 8
  br label %198

198:                                              ; preds = %192, %184
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %201, i64 0
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %207, align 8
  %209 = call i32 @mmal_format_copy(%struct.TYPE_20__* %205, %struct.TYPE_21__* %208)
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %214)
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @samplefmt_to_encoding(i64 %220)
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %224, i64 0
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 1
  store i32 %221, i32* %229, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @samplefmt_to_sample_size(i64 %234)
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %238, i64 0
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  store i32 %235, i32* %246, align 4
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %249, i64 0
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 0
  %255 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %254, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %258, i64 0
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %259, align 8
  %261 = call i32 %255(%struct.TYPE_19__* %260)
  %262 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %198, %181, %29
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @encoding_to_codecid(i32) #1

declare dso_local %struct.TYPE_18__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @av_free(i64) #1

declare dso_local i64 @av_malloc(i32) #1

declare dso_local i64 @vcos_calloc(i32, i64, i8*) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @avcodec_open(%struct.TYPE_22__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i64) #1

declare dso_local i32 @samplefmt_to_encoding(i64) #1

declare dso_local i32 @samplefmt_to_sample_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
