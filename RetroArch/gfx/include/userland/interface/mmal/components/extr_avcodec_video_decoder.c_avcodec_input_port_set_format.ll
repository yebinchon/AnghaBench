; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_input_port_set_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_input_port_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_21__*, %struct.TYPE_30__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_19__**, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { %struct.TYPE_28__*, %struct.TYPE_20__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@CODEC_ID_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ffmpeg codec id %d (for %4.4s) not recognized\00", align 1
@MMAL_ENXIO = common dso_local global i32 0, align 4
@FF_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"avcodec extradata\00", align 1
@CODEC_CAP_TRUNCATED = common dso_local global i32 0, align 4
@CODEC_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"could not open codec\00", align 1
@MMAL_EIO = common dso_local global i32 0, align 4
@PIX_FMT_NONE = common dso_local global i64 0, align 8
@PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"avcodec output format %i (%ix%i)\00", align 1
@DEFAULT_WIDTH = common dso_local global i64 0, align 8
@DEFAULT_HEIGHT = common dso_local global i64 0, align 8
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
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
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
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 3
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %35)
  %37 = load i32, i32* @MMAL_ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %285

38:                                               ; preds = %25
  %39 = call i32 (...) @avcodec_alloc_frame()
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 5
  store i64 %70, i64* %74, align 8
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FF_INPUT_BUFFER_PADDING_SIZE, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i64 @vcos_calloc(i32 1, i64 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 4
  store i64 %82, i64* %86, align 8
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %38
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcpy(i64 %98, i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %93, %38
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CODEC_CAP_TRUNCATED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load i32, i32* @CODEC_FLAG_TRUNCATED, align 4
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %118
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %117, %110
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = call i64 @avcodec_open(%struct.TYPE_22__* %128, %struct.TYPE_18__* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @MMAL_EIO, align 4
  store i32 %134, i32* %2, align 4
  br label %285

135:                                              ; preds = %125
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PIX_FMT_NONE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load i64, i64* @PIX_FMT_YUV420P, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  store i64 %144, i64* %148, align 8
  br label %149

149:                                              ; preds = %143, %135
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %154, i32 %159, i32 %164)
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  store i32 %170, i32* %177, align 4
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  store i32 %182, i32* %189, align 4
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %192, i64 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %198, align 8
  %200 = call i32 @mmal_format_copy(%struct.TYPE_20__* %196, %struct.TYPE_21__* %199)
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @pixfmt_to_encoding(i64 %205)
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %209, i64 0
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 1
  store i32 %206, i32* %214, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %217, i64 0
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %241, label %228

228:                                              ; preds = %149
  %229 = load i64, i64* @DEFAULT_WIDTH, align 8
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %232, i64 0
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 1
  store i64 %229, i64* %240, align 8
  br label %241

241:                                              ; preds = %228, %149
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %244, i64 0
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %268, label %255

255:                                              ; preds = %241
  %256 = load i64, i64* @DEFAULT_HEIGHT, align 8
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %259, i64 0
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 0
  store i64 %256, i64* %267, align 8
  br label %268

268:                                              ; preds = %255, %241
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %271, i64 0
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i32 0, i32 0
  %277 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %276, align 8
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %280, i64 0
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = call i32 %277(%struct.TYPE_19__* %282)
  %284 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %268, %132, %29
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @encoding_to_codecid(i32) #1

declare dso_local %struct.TYPE_18__* @avcodec_find_decoder(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @avcodec_alloc_frame(...) #1

declare dso_local i64 @vcos_calloc(i32, i64, i8*) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i64 @avcodec_open(%struct.TYPE_22__*, %struct.TYPE_18__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i64, i32, i32) #1

declare dso_local i32 @mmal_format_copy(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @pixfmt_to_encoding(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
