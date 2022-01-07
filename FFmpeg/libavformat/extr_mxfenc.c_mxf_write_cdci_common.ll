; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_cdci_common.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_cdci_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64**, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@ff_mxf_d10_muxer = common dso_local global i32 0, align 4
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i64 0, align 8
@AVCOL_RANGE_MPEG = common dso_local global i64 0, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AVCSubDescriptor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64*)* @mxf_write_cdci_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_write_cdci_common(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64* %2, i64** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 15
  %31 = sdiv i32 %30, 16
  %32 = mul nsw i32 %31, 16
  store i32 %32, i32* %10, align 4
  store i64* null, i64** %14, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @mxf_write_generic_desc(%struct.TYPE_16__* %33, %struct.TYPE_15__* %34, i64* %35)
  store i32 %36, i32* %15, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @get_trc(i64* %37, i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %3
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1080
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1920, i32* %9, align 4
  br label %68

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 720
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1280, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 15
  %79 = sdiv i32 %78, 16
  %80 = mul nsw i32 %79, 16
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %72, %69
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @mxf_write_local_tag(i32* %82, i32 4, i32 12803)
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @avio_wb32(i32* %84, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @mxf_write_local_tag(i32* %87, i32 4, i32 12802)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %90, %93
  %95 = call i32 @avio_wb32(i32* %89, i32 %94)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, @ff_mxf_d10_muxer
  br i1 %99, label %100, label %113

100:                                              ; preds = %81
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @mxf_write_local_tag(i32* %101, i32 4, i32 12822)
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @avio_wb32(i32* %103, i32 0)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @mxf_write_local_tag(i32* %105, i32 4, i32 12819)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @avio_wb32(i32* %107, i32 0)
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @mxf_write_local_tag(i32* %109, i32 4, i32 12820)
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @avio_wb32(i32* %111, i32 0)
  br label %113

113:                                              ; preds = %100, %81
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @mxf_write_local_tag(i32* %114, i32 4, i32 12805)
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @avio_wb32(i32* %116, i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @mxf_write_local_tag(i32* %119, i32 4, i32 12804)
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = ashr i32 %126, %129
  %131 = call i32 @avio_wb32(i32* %121, i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @mxf_write_local_tag(i32* %132, i32 4, i32 12806)
  %134 = load i32*, i32** %8, align 8
  %135 = call i32 @avio_wb32(i32* %134, i32 0)
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @mxf_write_local_tag(i32* %136, i32 4, i32 12807)
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @avio_wb32(i32* %138, i32 0)
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @mxf_write_local_tag(i32* %140, i32 4, i32 12809)
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @avio_wb32(i32* %142, i32 %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 608
  br i1 %150, label %151, label %152

151:                                              ; preds = %113
  store i32 576, i32* %11, align 4
  br label %167

152:                                              ; preds = %113
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 512
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 486, i32* %11, align 4
  br label %166

160:                                              ; preds = %152
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %160, %159
  br label %167

167:                                              ; preds = %166, %151
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @mxf_write_local_tag(i32* %168, i32 4, i32 12808)
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %171, %174
  %176 = call i32 @avio_wb32(i32* %170, i32 %175)
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @mxf_write_local_tag(i32* %177, i32 4, i32 12810)
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @avio_wb32(i32* %179, i32 0)
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @mxf_write_local_tag(i32* %181, i32 4, i32 12811)
  %183 = load i32*, i32** %8, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sub nsw i32 %188, %189
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = ashr i32 %190, %193
  %195 = call i32 @avio_wb32(i32* %183, i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %167
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @mxf_write_local_tag(i32* %201, i32 4, i32 12823)
  %203 = load i32*, i32** %8, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sub nsw i32 %208, %209
  %211 = and i32 %210, 1
  %212 = sub nsw i32 0, %211
  %213 = call i32 @avio_wb32(i32* %203, i32 %212)
  br label %214

214:                                              ; preds = %200, %167
  %215 = load i32*, i32** %8, align 8
  %216 = call i32 @mxf_write_local_tag(i32* %215, i32 4, i32 13057)
  %217 = load i32*, i32** %8, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @avio_wb32(i32* %217, i32 %220)
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 @mxf_write_local_tag(i32* %222, i32 4, i32 13058)
  %224 = load i32*, i32** %8, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @avio_wb32(i32* %224, i32 %227)
  %229 = load i32*, i32** %8, align 8
  %230 = call i32 @mxf_write_local_tag(i32* %229, i32 4, i32 13064)
  %231 = load i32*, i32** %8, align 8
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @avio_wb32(i32* %231, i32 %234)
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 @mxf_write_local_tag(i32* %236, i32 1, i32 13059)
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @avio_w8(i32* %238, i32 %241)
  %243 = load i32*, i32** %8, align 8
  %244 = call i32 @mxf_write_local_tag(i32* %243, i32 2, i32 13063)
  %245 = load i32*, i32** %8, align 8
  %246 = call i32 @avio_wb16(i32* %245, i32 0)
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @AVCOL_RANGE_UNSPECIFIED, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %305

254:                                              ; preds = %214
  store i32 0, i32* %16, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 1, %257
  %259 = sub nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 1, %262
  %264 = sub nsw i32 %263, 1
  store i32 %264, i32* %18, align 4
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @AVCOL_RANGE_MPEG, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %289

272:                                              ; preds = %254
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 4
  %277 = shl i32 1, %276
  store i32 %277, i32* %16, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %280, 8
  %282 = shl i32 235, %281
  store i32 %282, i32* %17, align 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %285, 4
  %287 = shl i32 14, %286
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %18, align 4
  br label %289

289:                                              ; preds = %272, %254
  %290 = load i32*, i32** %8, align 8
  %291 = call i32 @mxf_write_local_tag(i32* %290, i32 4, i32 13060)
  %292 = load i32*, i32** %8, align 8
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @avio_wb32(i32* %292, i32 %293)
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @mxf_write_local_tag(i32* %295, i32 4, i32 13061)
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @avio_wb32(i32* %297, i32 %298)
  %300 = load i32*, i32** %8, align 8
  %301 = call i32 @mxf_write_local_tag(i32* %300, i32 4, i32 13062)
  %302 = load i32*, i32** %8, align 8
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @avio_wb32(i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %289, %214
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %305
  %311 = load i32*, i32** %8, align 8
  %312 = call i32 @mxf_write_local_tag(i32* %311, i32 1, i32 12821)
  %313 = load i32*, i32** %8, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @avio_w8(i32* %313, i32 %316)
  br label %318

318:                                              ; preds = %310, %305
  %319 = load i32*, i32** %8, align 8
  %320 = call i32 @mxf_write_local_tag(i32* %319, i32 1, i32 12812)
  %321 = load i32*, i32** %8, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @avio_w8(i32* %321, i32 %324)
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  switch i32 %330, label %355 [
    i32 576, label %331
    i32 608, label %341
    i32 480, label %342
    i32 512, label %352
    i32 720, label %353
    i32 1080, label %354
  ]

331:                                              ; preds = %318
  store i32 23, i32* %12, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %338 = icmp eq i64 %336, %337
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i32 335, i32 336
  store i32 %340, i32* %13, align 4
  br label %356

341:                                              ; preds = %318
  store i32 7, i32* %12, align 4
  store i32 320, i32* %13, align 4
  br label %356

342:                                              ; preds = %318
  store i32 20, i32* %12, align 4
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %349 = icmp eq i64 %347, %348
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i32 285, i32 283
  store i32 %351, i32* %13, align 4
  br label %356

352:                                              ; preds = %318
  store i32 7, i32* %12, align 4
  store i32 270, i32* %13, align 4
  br label %356

353:                                              ; preds = %318
  store i32 26, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %356

354:                                              ; preds = %318
  store i32 21, i32* %12, align 4
  store i32 584, i32* %13, align 4
  br label %356

355:                                              ; preds = %318
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %356

356:                                              ; preds = %355, %354, %353, %352, %342, %341, %331
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %356
  %362 = load i32, i32* %13, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  store i32 0, i32* %13, align 4
  %365 = load i32, i32* %12, align 4
  %366 = mul nsw i32 %365, 2
  store i32 %366, i32* %12, align 4
  br label %367

367:                                              ; preds = %364, %361, %356
  %368 = load i32*, i32** %8, align 8
  %369 = call i32 @mxf_write_local_tag(i32* %368, i32 16, i32 12813)
  %370 = load i32*, i32** %8, align 8
  %371 = call i32 @avio_wb32(i32* %370, i32 2)
  %372 = load i32*, i32** %8, align 8
  %373 = call i32 @avio_wb32(i32* %372, i32 4)
  %374 = load i32*, i32** %8, align 8
  %375 = load i32, i32* %12, align 4
  %376 = call i32 @avio_wb32(i32* %374, i32 %375)
  %377 = load i32*, i32** %8, align 8
  %378 = load i32, i32* %13, align 4
  %379 = call i32 @avio_wb32(i32* %377, i32 %378)
  %380 = load i32*, i32** %8, align 8
  %381 = call i32 @mxf_write_local_tag(i32* %380, i32 8, i32 12814)
  %382 = load i32*, i32** %8, align 8
  %383 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %383, i32 0, i32 9
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @avio_wb32(i32* %382, i32 %386)
  %388 = load i32*, i32** %8, align 8
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @avio_wb32(i32* %388, i32 %392)
  %394 = load i64*, i64** %14, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %367
  %399 = load i32*, i32** %8, align 8
  %400 = call i32 @mxf_write_local_tag(i32* %399, i32 16, i32 12816)
  %401 = load i32*, i32** %8, align 8
  %402 = load i64*, i64** %14, align 8
  %403 = call i32 @avio_write(i32* %401, i64* %402, i32 16)
  br label %404

404:                                              ; preds = %398, %367
  %405 = load i32*, i32** %8, align 8
  %406 = call i32 @mxf_write_local_tag(i32* %405, i32 16, i32 12801)
  %407 = load i32*, i32** %8, align 8
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 8
  %410 = load i64**, i64*** %409, align 8
  %411 = load i64*, i64** %410, align 8
  %412 = call i32 @avio_write(i32* %407, i64* %411, i32 16)
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %430

417:                                              ; preds = %404
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %430

422:                                              ; preds = %417
  %423 = load i32*, i32** %8, align 8
  %424 = call i32 @mxf_write_local_tag(i32* %423, i32 1, i32 12818)
  %425 = load i32*, i32** %8, align 8
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @avio_w8(i32* %425, i32 %428)
  br label %430

430:                                              ; preds = %422, %417, %404
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_13__*, %struct.TYPE_13__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %438, label %451

438:                                              ; preds = %430
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %451, label %443

443:                                              ; preds = %438
  %444 = load i32*, i32** %8, align 8
  %445 = call i32 @mxf_write_local_tag(i32* %444, i32 24, i32 33024)
  %446 = load i32*, i32** %8, align 8
  %447 = call i32 @mxf_write_refs_count(i32* %446, i32 1)
  %448 = load i32*, i32** %8, align 8
  %449 = load i32, i32* @AVCSubDescriptor, align 4
  %450 = call i32 @mxf_write_uuid(i32* %448, i32 %449, i32 0)
  br label %451

451:                                              ; preds = %443, %438, %430
  %452 = load i32, i32* %15, align 4
  ret i32 %452
}

declare dso_local i32 @mxf_write_generic_desc(%struct.TYPE_16__*, %struct.TYPE_15__*, i64*) #1

declare dso_local i32 @get_trc(i64*, i32) #1

declare dso_local i32 @mxf_write_local_tag(i32*, i32, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i64*, i32) #1

declare dso_local i32 @mxf_write_refs_count(i32*, i32) #1

declare dso_local i32 @mxf_write_uuid(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
