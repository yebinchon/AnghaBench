; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_Rgb16ToPlanarRgb16Wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_Rgb16ToPlanarRgb16Wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@HAVE_BIGENDIAN = common dso_local global i64 0, align 8
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unsupported conversion to planar RGB %s -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i32*, i32, i32, i32**, i32*)* @Rgb16ToPlanarRgb16Wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Rgb16ToPlanarRgb16Wrapper(%struct.TYPE_8__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %27 = load i32**, i32*** %14, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %26, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 1
  %31 = load i32**, i32*** %14, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %30, align 8
  %34 = getelementptr inbounds i32*, i32** %30, i64 1
  %35 = load i32**, i32*** %14, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %34, align 8
  %38 = getelementptr inbounds i32*, i32** %34, i64 1
  %39 = load i32**, i32*** %14, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 3
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %38, align 8
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %43 = load i32**, i32*** %14, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %42, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 1
  %47 = load i32**, i32*** %14, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %46, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 1
  %51 = load i32**, i32*** %14, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 2
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %50, align 8
  %54 = getelementptr inbounds i32*, i32** %50, i64 1
  %55 = load i32**, i32*** %14, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 3
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %54, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %58, align 4
  %62 = getelementptr inbounds i32, i32* %58, i64 1
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %62, align 4
  %66 = getelementptr inbounds i32, i32* %62, i64 1
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %66, align 4
  %70 = getelementptr inbounds i32, i32* %66, i64 1
  %71 = load i32*, i32** %15, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %70, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %75 = load i32*, i32** %15, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %74, align 4
  %78 = getelementptr inbounds i32, i32* %74, i64 1
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %78, align 4
  %82 = getelementptr inbounds i32, i32* %78, i64 1
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %82, align 4
  %86 = getelementptr inbounds i32, i32* %82, i64 1
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %86, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_9__* @av_pix_fmt_desc_get(i32 %92)
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %20, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_9__* @av_pix_fmt_desc_get(i32 %96)
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %21, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %22, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %109 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %7
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %111, %7
  %119 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121, %111
  %129 = load i32, i32* %24, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %24, align 4
  br label %131

131:                                              ; preds = %128, %121, %118
  %132 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %134, %131
  %142 = load i64, i64* @HAVE_BIGENDIAN, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144, %134
  %152 = load i32, i32* %24, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %24, align 4
  br label %154

154:                                              ; preds = %151, %144, %141
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %159 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %157, %160
  %162 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %163 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %164 = or i32 %162, %163
  %165 = icmp ne i32 %161, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %154
  %167 = load i32, i32* %22, align 4
  %168 = icmp slt i32 %167, 9
  br i1 %168, label %169, label %180

169:                                              ; preds = %166, %154
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = load i32, i32* @AV_LOG_ERROR, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @av_log(%struct.TYPE_8__* %170, i32 %171, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %174, i32 %177)
  %179 = load i32, i32* %13, align 4
  store i32 %179, i32* %8, align 4
  br label %266

180:                                              ; preds = %166
  store i32 0, i32* %25, align 4
  br label %181

181:                                              ; preds = %211, %180
  %182 = load i32, i32* %25, align 4
  %183 = icmp slt i32 %182, 4
  br i1 %183, label %184, label %214

184:                                              ; preds = %181
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sdiv i32 %190, 2
  %192 = load i32, i32* %25, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = sext i32 %191 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %194, align 8
  %198 = load i32, i32* %25, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = mul nsw i32 %201, %202
  %204 = sdiv i32 %203, 2
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = sext i32 %204 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %207, align 8
  br label %211

211:                                              ; preds = %184
  %212 = load i32, i32* %25, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %25, align 4
  br label %181

214:                                              ; preds = %181
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  switch i32 %217, label %254 [
    i32 130, label %218
    i32 131, label %218
    i32 128, label %218
    i32 129, label %218
    i32 134, label %236
    i32 135, label %236
    i32 132, label %236
    i32 133, label %236
  ]

218:                                              ; preds = %214, %214, %214, %214
  %219 = load i32**, i32*** %10, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i64 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds [4 x i32*], [4 x i32*]* %16, i64 0, i64 0
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %24, align 4
  %230 = load i32, i32* %22, align 4
  %231 = sub nsw i32 16, %230
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @packed16togbra16(i32* %221, i32 %224, i32** %225, i32* %226, i32 %227, i32 %228, i32 %229, i32 %231, i32 %234)
  br label %264

236:                                              ; preds = %214, %214, %214, %214
  %237 = load i32**, i32*** %10, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32*, i32** %11, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %23, align 4
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %22, align 4
  %249 = sub nsw i32 16, %248
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @packed16togbra16(i32* %239, i32 %242, i32** %243, i32* %244, i32 %245, i32 %246, i32 %247, i32 %249, i32 %252)
  br label %264

254:                                              ; preds = %214
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %256 = load i32, i32* @AV_LOG_ERROR, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @av_log(%struct.TYPE_8__* %255, i32 %256, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %259, i32 %262)
  br label %264

264:                                              ; preds = %254, %236, %218
  %265 = load i32, i32* %13, align 4
  store i32 %265, i32* %8, align 4
  br label %266

266:                                              ; preds = %264, %169
  %267 = load i32, i32* %8, align 4
  ret i32 %267
}

declare dso_local %struct.TYPE_9__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32, i32) #1

declare dso_local i32 @packed16togbra16(i32*, i32, i32**, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
