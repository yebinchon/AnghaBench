; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgb16ToRgb16Wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planarRgb16ToRgb16Wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@HAVE_BIGENDIAN = common dso_local global i64 0, align 8
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unsupported planar RGB conversion %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i32*, i32, i32, i32**, i32*)* @planarRgb16ToRgb16Wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planarRgb16ToRgb16Wrapper(%struct.TYPE_8__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [4 x i32*], align 16
  %17 = alloca [4 x i32*], align 16
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %25 = load i32**, i32*** %10, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %24, align 8
  %28 = getelementptr inbounds i32*, i32** %24, i64 1
  %29 = load i32**, i32*** %10, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %28, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 1
  %33 = load i32**, i32*** %10, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %32, align 8
  %36 = getelementptr inbounds i32*, i32** %32, i64 1
  %37 = load i32**, i32*** %10, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %41 = load i32**, i32*** %10, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %40, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 1
  %45 = load i32**, i32*** %10, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %44, align 8
  %48 = getelementptr inbounds i32*, i32** %44, i64 1
  %49 = load i32**, i32*** %10, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %48, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 1
  %53 = load i32**, i32*** %10, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 3
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %52, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds i32, i32* %56, i64 1
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds i32, i32* %60, i64 1
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %64, align 4
  %68 = getelementptr inbounds i32, i32* %64, i64 1
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %68, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %72, align 4
  %76 = getelementptr inbounds i32, i32* %72, i64 1
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %76, align 4
  %80 = getelementptr inbounds i32, i32* %76, i64 1
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %80, align 4
  %84 = getelementptr inbounds i32, i32* %80, i64 1
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %84, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.TYPE_9__* @av_pix_fmt_desc_get(i32 %90)
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %20, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_9__* @av_pix_fmt_desc_get(i32 %94)
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %21, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %102 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %7
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104, %7
  %112 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114, %104
  %122 = load i32, i32* %23, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %23, align 4
  br label %124

124:                                              ; preds = %121, %114, %111
  %125 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127, %124
  %135 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %147, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137, %127
  %145 = load i32, i32* %23, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %23, align 4
  br label %147

147:                                              ; preds = %144, %137, %134
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %152 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %156 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %157 = or i32 %155, %156
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %22, align 4
  %161 = icmp sle i32 %160, 8
  br i1 %161, label %162, label %173

162:                                              ; preds = %159, %147
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @av_log(%struct.TYPE_8__* %163, i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %8, align 4
  br label %281

173:                                              ; preds = %159
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %269 [
    i32 134, label %177
    i32 135, label %177
    i32 130, label %200
    i32 131, label %200
    i32 128, label %223
    i32 129, label %223
    i32 132, label %246
    i32 133, label %246
  ]

177:                                              ; preds = %173, %173
  %178 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %180 = load i32**, i32*** %14, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i32*, i32** %15, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %183, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = load i32*, i32** %15, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @gbr16ptopacked16(i32** %178, i32* %179, i32* %189, i32 %192, i32 %193, i32 0, i32 %194, i32 %195, i32 %198)
  br label %279

200:                                              ; preds = %173, %173
  %201 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %203 = load i32**, i32*** %14, align 8
  %204 = getelementptr inbounds i32*, i32** %203, i64 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = load i32*, i32** %15, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %205, i64 %211
  %213 = load i32*, i32** %15, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %22, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @gbr16ptopacked16(i32** %201, i32* %202, i32* %212, i32 %215, i32 %216, i32 0, i32 %217, i32 %218, i32 %221)
  br label %279

223:                                              ; preds = %173, %173
  %224 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %226 = load i32**, i32*** %14, align 8
  %227 = getelementptr inbounds i32*, i32** %226, i64 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = load i32*, i32** %15, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  %236 = load i32*, i32** %15, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %23, align 4
  %241 = load i32, i32* %22, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @gbr16ptopacked16(i32** %224, i32* %225, i32* %235, i32 %238, i32 %239, i32 1, i32 %240, i32 %241, i32 %244)
  br label %279

246:                                              ; preds = %173, %173
  %247 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %249 = load i32**, i32*** %14, align 8
  %250 = getelementptr inbounds i32*, i32** %249, i64 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load i32*, i32** %15, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %252, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %251, i64 %257
  %259 = load i32*, i32** %15, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* %23, align 4
  %264 = load i32, i32* %22, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @gbr16ptopacked16(i32** %247, i32* %248, i32* %258, i32 %261, i32 %262, i32 1, i32 %263, i32 %264, i32 %267)
  br label %279

269:                                              ; preds = %173
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %271 = load i32, i32* @AV_LOG_ERROR, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @av_log(%struct.TYPE_8__* %270, i32 %271, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %274, i32 %277)
  br label %279

279:                                              ; preds = %269, %246, %223, %200, %177
  %280 = load i32, i32* %13, align 4
  store i32 %280, i32* %8, align 4
  br label %281

281:                                              ; preds = %279, %162
  %282 = load i32, i32* %8, align 4
  ret i32 %282
}

declare dso_local %struct.TYPE_9__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32) #1

declare dso_local i32 @gbr16ptopacked16(i32**, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
