; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideo.c_ff_apply_vector_4x4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideo.c_ff_apply_vector_4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i8** }
%struct.TYPE_7__ = type { i8*, i8, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_apply_vector_4x4(%struct.TYPE_8__* %0, i32 %1, i32 %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %11, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 %38, i8* %43, align 1
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %38, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %38, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %38, i8* %51, align 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %56, i8* %66, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  store i8 %56, i8* %68, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 %56, i8* %70, align 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 3
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8 %75, i8* %81, align 1
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %75, i8* %86, align 1
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %88, 2
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  store i8 %75, i8* %92, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %75, i8* %97, align 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 3
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 3
  %106 = add nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 %102, i8* %108, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 %110, 3
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %109, i64 %113
  store i8 %102, i8* %114, align 1
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = mul nsw i32 %116, 2
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  store i8 %102, i8* %120, align 1
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  store i8 %102, i8* %126, align 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %10, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8* %148, i8** %9, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i8, i8* %150, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 %153, 3
  %155 = add nsw i32 %154, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  store i8 %151, i8* %157, align 1
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 %159, 3
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  store i8 %151, i8* %163, align 1
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 2
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8 %151, i8* %169, align 1
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %171, 2
  %173 = add nsw i32 %172, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  store i8 %151, i8* %175, align 1
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %177, 3
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  store i8 %151, i8* %181, align 1
  %182 = load i8*, i8** %9, align 8
  %183 = load i32, i32* %11, align 4
  %184 = mul nsw i32 %183, 3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 %151, i8* %186, align 1
  %187 = load i8*, i8** %9, align 8
  %188 = load i32, i32* %11, align 4
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %187, i64 %191
  store i8 %151, i8* %192, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %11, align 4
  %195 = mul nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 %151, i8* %197, align 1
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %151, i8* %202, align 1
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 %151, i8* %207, align 1
  %208 = load i8*, i8** %9, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 3
  store i8 %151, i8* %209, align 1
  %210 = load i8*, i8** %9, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  store i8 %151, i8* %211, align 1
  %212 = load i8*, i8** %9, align 8
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %151, i8* %216, align 1
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  store i8 %151, i8* %220, align 1
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8 %151, i8* %222, align 1
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 %151, i8* %224, align 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  %229 = load i8**, i8*** %228, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 2
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %231, i64 %233
  store i8* %234, i8** %9, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %9, align 8
  %239 = load i32, i32* %11, align 4
  %240 = mul nsw i32 %239, 3
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %238, i64 %242
  store i8 %237, i8* %243, align 1
  %244 = load i8*, i8** %9, align 8
  %245 = load i32, i32* %11, align 4
  %246 = mul nsw i32 %245, 3
  %247 = add nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  store i8 %237, i8* %249, align 1
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %11, align 4
  %252 = mul nsw i32 %251, 2
  %253 = add nsw i32 %252, 3
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %250, i64 %254
  store i8 %237, i8* %255, align 1
  %256 = load i8*, i8** %9, align 8
  %257 = load i32, i32* %11, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %258, 2
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %256, i64 %260
  store i8 %237, i8* %261, align 1
  %262 = load i8*, i8** %9, align 8
  %263 = load i32, i32* %11, align 4
  %264 = mul nsw i32 %263, 3
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %262, i64 %266
  store i8 %237, i8* %267, align 1
  %268 = load i8*, i8** %9, align 8
  %269 = load i32, i32* %11, align 4
  %270 = mul nsw i32 %269, 3
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  store i8 %237, i8* %272, align 1
  %273 = load i8*, i8** %9, align 8
  %274 = load i32, i32* %11, align 4
  %275 = mul nsw i32 %274, 2
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %273, i64 %277
  store i8 %237, i8* %278, align 1
  %279 = load i8*, i8** %9, align 8
  %280 = load i32, i32* %11, align 4
  %281 = mul nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8 %237, i8* %283, align 1
  %284 = load i8*, i8** %9, align 8
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 3
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  store i8 %237, i8* %288, align 1
  %289 = load i8*, i8** %9, align 8
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  store i8 %237, i8* %293, align 1
  %294 = load i8*, i8** %9, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 3
  store i8 %237, i8* %295, align 1
  %296 = load i8*, i8** %9, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 2
  store i8 %237, i8* %297, align 1
  %298 = load i8*, i8** %9, align 8
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %298, i64 %301
  store i8 %237, i8* %302, align 1
  %303 = load i8*, i8** %9, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  store i8 %237, i8* %306, align 1
  %307 = load i8*, i8** %9, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 1
  store i8 %237, i8* %308, align 1
  %309 = load i8*, i8** %9, align 8
  %310 = getelementptr inbounds i8, i8* %309, i64 0
  store i8 %237, i8* %310, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
