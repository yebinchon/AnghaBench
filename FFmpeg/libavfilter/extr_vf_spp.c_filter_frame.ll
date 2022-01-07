; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i32*, i32, i64, i32 }
%struct.TYPE_23__ = type { i64, i32*, i64*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %6, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %7, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %29, i64 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %8, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_22__* @av_pix_fmt_desc_get(i32 %35)
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %12, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %2
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 7
  %51 = call i32* @av_frame_get_qp_table(%struct.TYPE_23__* %48, i32* %10, i32* %50)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %125

54:                                               ; preds = %47
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %125, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @AV_CEIL_RSHIFT(i32 %71, i32 4)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %81

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @AV_CEIL_RSHIFT(i32 %78, i32 4)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %74, %68
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %81
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @av_reallocp_array(i32** %91, i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %3, align 4
  br label %364

101:                                              ; preds = %89
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %101, %81
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @av_assert0(i32 %115)
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @memcpy(i32* %119, i32* %120, i32 %123)
  br label %125

125:                                              ; preds = %107, %59, %54, %47
  br label %126

126:                                              ; preds = %125, %2
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %319

131:                                              ; preds = %126
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %319, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %11, align 8
  br label %150

150:                                              ; preds = %146, %141, %136
  %151 = load i32*, i32** %11, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %318

158:                                              ; preds = %153, %150
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @AV_CEIL_RSHIFT(i32 %161, i32 %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %17, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @AV_CEIL_RSHIFT(i32 %169, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %18, align 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = call i32 @av_frame_is_writable(%struct.TYPE_23__* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %158
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 7
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 7
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %223

190:                                              ; preds = %184, %178, %158
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @FFALIGN(i32 %193, i32 8)
  store i32 %194, i32* %19, align 4
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @FFALIGN(i32 %197, i32 8)
  store i32 %198, i32* %20, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %20, align 4
  %202 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %199, i32 %200, i32 %201)
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %9, align 8
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %204 = icmp ne %struct.TYPE_23__* %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %190
  %206 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = call i32 @AVERROR(i32 %207)
  store i32 %208, i32* %3, align 4
  br label %364

209:                                              ; preds = %190
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %212 = call i32 @av_frame_copy_props(%struct.TYPE_23__* %210, %struct.TYPE_23__* %211)
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %209, %184
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 2
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 2
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @filter(%struct.TYPE_21__* %224, i64 %229, i64 %234, i32 %239, i32 %244, i32 %247, i32 %250, i32* %251, i32 %252, i32 1, i32 %253)
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 2
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %316

261:                                              ; preds = %223
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 2
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 1
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 1
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = load i32*, i32** %11, align 8
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %13, align 4
  %288 = call i32 @filter(%struct.TYPE_21__* %262, i64 %267, i64 %272, i32 %277, i32 %282, i32 %283, i32 %284, i32* %285, i32 %286, i32 0, i32 %287)
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 2
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 2
  %297 = load i64*, i64** %296, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 2
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %17, align 4
  %311 = load i32, i32* %18, align 4
  %312 = load i32*, i32** %11, align 8
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %13, align 4
  %315 = call i32 @filter(%struct.TYPE_21__* %289, i64 %294, i64 %299, i32 %304, i32 %309, i32 %310, i32 %311, i32* %312, i32 %313, i32 0, i32 %314)
  br label %316

316:                                              ; preds = %261, %223
  %317 = call i32 (...) @emms_c()
  br label %318

318:                                              ; preds = %316, %153
  br label %319

319:                                              ; preds = %318, %131, %126
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %322 = icmp ne %struct.TYPE_23__* %320, %321
  br i1 %322, label %323, label %360

323:                                              ; preds = %319
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 2
  %326 = load i64*, i64** %325, align 8
  %327 = getelementptr inbounds i64, i64* %326, i64 3
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %358

330:                                              ; preds = %323
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 2
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 3
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 3
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 2
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 3
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 3
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @av_image_copy_plane(i64 %335, i32 %340, i64 %345, i32 %350, i32 %353, i32 %356)
  br label %358

358:                                              ; preds = %330, %323
  %359 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  br label %360

360:                                              ; preds = %358, %319
  %361 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %363 = call i32 @ff_filter_frame(%struct.TYPE_24__* %361, %struct.TYPE_23__* %362)
  store i32 %363, i32* %3, align 4
  br label %364

364:                                              ; preds = %360, %205, %97
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_22__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32* @av_frame_get_qp_table(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_reallocp_array(i32**, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_frame_is_writable(%struct.TYPE_23__*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @filter(%struct.TYPE_21__*, i64, i64, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
