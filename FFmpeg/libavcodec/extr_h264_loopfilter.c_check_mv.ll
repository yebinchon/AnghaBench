; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_loopfilter.c_check_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_loopfilter.c_check_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32***, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64, i32)* @check_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mv(%struct.TYPE_3__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %18, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %92, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %92

41:                                               ; preds = %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32***, i32**** %43, align 8
  %45 = getelementptr inbounds i32**, i32*** %44, i64 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32***, i32**** %53, align 8
  %55 = getelementptr inbounds i32**, i32*** %54, i64 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %51, %61
  %63 = add nsw i32 %62, 3
  %64 = icmp uge i32 %63, 7
  %65 = zext i1 %64 to i32
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32***, i32**** %67, align 8
  %69 = getelementptr inbounds i32**, i32*** %68, i64 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32***, i32**** %77, align 8
  %79 = getelementptr inbounds i32**, i32*** %78, i64 0
  %80 = load i32**, i32*** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %75, %85
  %87 = call i32 @FFABS(i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = icmp sge i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = or i32 %65, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %41, %31, %4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %316

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %170, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %108, %116
  %118 = zext i1 %117 to i32
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32***, i32**** %120, align 8
  %122 = getelementptr inbounds i32**, i32*** %121, i64 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32***, i32**** %130, align 8
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i32*, i32** %133, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %128, %138
  %140 = add nsw i32 %139, 3
  %141 = icmp uge i32 %140, 7
  %142 = zext i1 %141 to i32
  %143 = or i32 %118, %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32***, i32**** %145, align 8
  %147 = getelementptr inbounds i32**, i32*** %146, i64 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32***, i32**** %155, align 8
  %157 = getelementptr inbounds i32**, i32*** %156, i64 1
  %158 = load i32**, i32*** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds i32*, i32** %158, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %153, %163
  %165 = call i32 @FFABS(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = icmp sge i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = or i32 %143, %168
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %100, %97
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %315

173:                                              ; preds = %170
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load i32**, i32*** %183, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %8, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %181, %189
  %191 = zext i1 %190 to i32
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %7, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32**, i32*** %201, align 8
  %203 = getelementptr inbounds i32*, i32** %202, i64 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %8, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %199, %207
  %209 = zext i1 %208 to i32
  %210 = or i32 %191, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %173
  store i32 1, i32* %5, align 4
  br label %318

213:                                              ; preds = %173
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i32***, i32**** %215, align 8
  %217 = getelementptr inbounds i32**, i32*** %216, i64 0
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* %7, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32***, i32**** %225, align 8
  %227 = getelementptr inbounds i32**, i32*** %226, i64 1
  %228 = load i32**, i32*** %227, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds i32*, i32** %228, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %223, %233
  %235 = add nsw i32 %234, 3
  %236 = icmp uge i32 %235, 7
  %237 = zext i1 %236 to i32
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i32***, i32**** %239, align 8
  %241 = getelementptr inbounds i32**, i32*** %240, i64 0
  %242 = load i32**, i32*** %241, align 8
  %243 = load i64, i64* %7, align 8
  %244 = getelementptr inbounds i32*, i32** %242, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  %250 = load i32***, i32**** %249, align 8
  %251 = getelementptr inbounds i32**, i32*** %250, i64 1
  %252 = load i32**, i32*** %251, align 8
  %253 = load i64, i64* %8, align 8
  %254 = getelementptr inbounds i32*, i32** %252, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %247, %257
  %259 = call i32 @FFABS(i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = icmp sge i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = or i32 %237, %262
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32***, i32**** %265, align 8
  %267 = getelementptr inbounds i32**, i32*** %266, i64 1
  %268 = load i32**, i32*** %267, align 8
  %269 = load i64, i64* %7, align 8
  %270 = getelementptr inbounds i32*, i32** %268, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32***, i32**** %275, align 8
  %277 = getelementptr inbounds i32**, i32*** %276, i64 0
  %278 = load i32**, i32*** %277, align 8
  %279 = load i64, i64* %8, align 8
  %280 = getelementptr inbounds i32*, i32** %278, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %273, %283
  %285 = add nsw i32 %284, 3
  %286 = icmp uge i32 %285, 7
  %287 = zext i1 %286 to i32
  %288 = or i32 %263, %287
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 1
  %291 = load i32***, i32**** %290, align 8
  %292 = getelementptr inbounds i32**, i32*** %291, i64 1
  %293 = load i32**, i32*** %292, align 8
  %294 = load i64, i64* %7, align 8
  %295 = getelementptr inbounds i32*, i32** %293, i64 %294
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  %301 = load i32***, i32**** %300, align 8
  %302 = getelementptr inbounds i32**, i32*** %301, i64 0
  %303 = load i32**, i32*** %302, align 8
  %304 = load i64, i64* %8, align 8
  %305 = getelementptr inbounds i32*, i32** %303, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = sub nsw i32 %298, %308
  %310 = call i32 @FFABS(i32 %309)
  %311 = load i32, i32* %9, align 4
  %312 = icmp sge i32 %310, %311
  %313 = zext i1 %312 to i32
  %314 = or i32 %288, %313
  store i32 %314, i32* %5, align 4
  br label %318

315:                                              ; preds = %170
  br label %316

316:                                              ; preds = %315, %92
  %317 = load i32, i32* %10, align 4
  store i32 %317, i32* %5, align 4
  br label %318

318:                                              ; preds = %316, %213, %212
  %319 = load i32, i32* %5, align 4
  ret i32 %319
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
