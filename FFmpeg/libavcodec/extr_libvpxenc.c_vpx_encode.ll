; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vpx_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_vpx_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i32, i64, i32, %struct.vpx_image, %struct.vpx_image }
%struct.TYPE_16__ = type { i32, i32 }
%struct.vpx_image = type { i32, i32*, i32* }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i64, i32, i32*, i32* }
%struct.TYPE_19__ = type { i32 }

@AV_FRAME_DATA_REGIONS_OF_INTEREST = common dso_local global i32 0, align 4
@VPX_PLANE_Y = common dso_local global i64 0, align 8
@VPX_PLANE_U = common dso_local global i64 0, align 8
@VPX_PLANE_V = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@VPX_EFLAG_FORCE_KF = common dso_local global i32 0, align 4
@CONFIG_LIBVPX_VP8_ENCODER = common dso_local global i64 0, align 8
@AV_CODEC_ID_VP8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"vp8-flags\00", align 1
@VPX_CODEC_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error encoding frame\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error encoding alpha frame\00", align 1
@AV_CODEC_FLAG_PASS1 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Stat buffer alloc (%d bytes) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VPX_CR_FULL_RANGE = common dso_local global i32 0, align 4
@VPX_CR_STUDIO_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, %struct.TYPE_18__*, i32*)* @vpx_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpx_encode(%struct.TYPE_20__* %0, i32* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.vpx_image*, align 8
  %12 = alloca %struct.vpx_image*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %10, align 8
  store %struct.vpx_image* null, %struct.vpx_image** %11, align 8
  store %struct.vpx_image* null, %struct.vpx_image** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %25, label %204

25:                                               ; preds = %4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load i32, i32* @AV_FRAME_DATA_REGIONS_OF_INTEREST, align 4
  %28 = call i32* @av_frame_get_side_data(%struct.TYPE_18__* %26, i32 %27)
  store i32* %28, i32** %17, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 6
  store %struct.vpx_image* %30, %struct.vpx_image** %11, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %37 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @VPX_PLANE_Y, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %47 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @VPX_PLANE_U, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %57 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @VPX_PLANE_V, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %67 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @VPX_PLANE_Y, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %77 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @VPX_PLANE_U, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %87 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @VPX_PLANE_V, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %25
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 5
  store %struct.vpx_image* %97, %struct.vpx_image** %12, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @realloc_alpha_uv(%struct.TYPE_20__* %98, i32 %101, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %305

110:                                              ; preds = %95
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.vpx_image*, %struct.vpx_image** %12, align 8
  %117 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @VPX_PLANE_Y, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.vpx_image*, %struct.vpx_image** %12, align 8
  %127 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @VPX_PLANE_Y, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %110, %25
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %13, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = load i32, i32* @VPX_EFLAG_FORCE_KF, align 4
  %142 = load i32, i32* %16, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %140, %131
  %145 = load i64, i64* @CONFIG_LIBVPX_VP8_ENCODER, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %147
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %153
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call %struct.TYPE_19__* @av_dict_get(i64 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_19__* %162, %struct.TYPE_19__** %18, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %164 = icmp ne %struct.TYPE_19__* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strtoul(i32 %168, i32* null, i32 10)
  %170 = load i32, i32* %16, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %16, align 4
  br label %172

172:                                              ; preds = %165, %158
  br label %173

173:                                              ; preds = %172, %153, %147, %144
  %174 = load i32*, i32** %17, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %203

176:                                              ; preds = %173
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %17, align 8
  %191 = call i32 @vp8_encode_set_roi(%struct.TYPE_20__* %183, i32 %186, i32 %189, i32* %190)
  br label %202

192:                                              ; preds = %176
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32*, i32** %17, align 8
  %201 = call i32 @vp9_encode_set_roi(%struct.TYPE_20__* %193, i32 %196, i32 %199, i32* %200)
  br label %202

202:                                              ; preds = %192, %182
  br label %203

203:                                              ; preds = %202, %173
  br label %204

204:                                              ; preds = %203, %4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 4
  %207 = load %struct.vpx_image*, %struct.vpx_image** %11, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @vpx_codec_encode(i32* %206, %struct.vpx_image* %207, i32 %208, i32 %211, i32 %212, i32 %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @VPX_CODEC_OK, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %204
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %222 = call i32 @log_encoder_error(%struct.TYPE_20__* %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %223, i32* %5, align 4
  br label %305

224:                                              ; preds = %204
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %224
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 2
  %232 = load %struct.vpx_image*, %struct.vpx_image** %12, align 8
  %233 = load i32, i32* %13, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @vpx_codec_encode(i32* %231, %struct.vpx_image* %232, i32 %233, i32 %236, i32 %237, i32 %240)
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @VPX_CODEC_OK, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %229
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %247 = call i32 @log_encoder_error(%struct.TYPE_20__* %246, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %248 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %248, i32* %5, align 4
  br label %305

249:                                              ; preds = %229
  br label %250

250:                                              ; preds = %249, %224
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = call i32 @queue_frames(%struct.TYPE_20__* %251, i32* %252)
  store i32 %253, i32* %15, align 4
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %255 = icmp ne %struct.TYPE_18__* %254, null
  br i1 %255, label %298, label %256

256:                                              ; preds = %250
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %298

263:                                              ; preds = %256
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @AV_BASE64_SIZE(i32 %267)
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %19, align 4
  %270 = call i32 @av_malloc(i32 %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %284, label %277

277:                                              ; preds = %263
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %279 = load i32, i32* @AV_LOG_ERROR, align 4
  %280 = load i32, i32* %19, align 4
  %281 = call i32 @av_log(%struct.TYPE_20__* %278, i32 %279, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* @ENOMEM, align 4
  %283 = call i32 @AVERROR(i32 %282)
  store i32 %283, i32* %5, align 4
  br label %305

284:                                              ; preds = %263
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %19, align 4
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @av_base64_encode(i32 %287, i32 %288, i32 %292, i32 %296)
  br label %298

298:                                              ; preds = %284, %256, %250
  %299 = load i32, i32* %15, align 4
  %300 = icmp ne i32 %299, 0
  %301 = xor i1 %300, true
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = load i32*, i32** %9, align 8
  store i32 %303, i32* %304, align 4
  store i32 0, i32* %5, align 4
  br label %305

305:                                              ; preds = %298, %277, %245, %220, %108
  %306 = load i32, i32* %5, align 4
  ret i32 %306
}

declare dso_local i32* @av_frame_get_side_data(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @realloc_alpha_uv(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @av_dict_get(i64, i8*, i32*, i32) #1

declare dso_local i32 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @vp8_encode_set_roi(%struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i32 @vp9_encode_set_roi(%struct.TYPE_20__*, i32, i32, i32*) #1

declare dso_local i32 @vpx_codec_encode(i32*, %struct.vpx_image*, i32, i32, i32, i32) #1

declare dso_local i32 @log_encoder_error(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @queue_frames(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @AV_BASE64_SIZE(i32) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_base64_encode(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
