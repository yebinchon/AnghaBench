; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_decorr_mono.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_decorr_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Decorr = type { i32*, i32, i64, i64, i32 }

@MAX_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32, %struct.Decorr*, i32)* @decorr_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decorr_mono(i8** %0, i8** %1, i32 %2, %struct.Decorr* %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Decorr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.Decorr* %3, %struct.Decorr** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %21 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i8**, i8*** %7, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8** %29, i8*** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i8**, i8*** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8** %34, i8*** %6, align 8
  br label %35

35:                                               ; preds = %24, %5
  %36 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %37 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @store_weight(i64 %38)
  %40 = call i64 @restore_weight(i32 %39)
  %41 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %42 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %63, %35
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MAX_TERM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %49 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @log2s(i32 %54)
  %56 = call i32 @wp_exp2(i32 %55)
  %57 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %58 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %68 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MAX_TERM, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %158

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %74, 0
  br i1 %76, label %77, label %157

77:                                               ; preds = %73
  %78 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %79 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 1
  %82 = sub nsw i32 3, %81
  %83 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %84 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  %89 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %90 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %88, %93
  %95 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %96 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = ashr i32 %94, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %14, align 8
  %105 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %106 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %111 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 %109, i32* %113, align 4
  %114 = load i8**, i8*** %6, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %13, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %119 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %123 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = call i64 @APPLY_WEIGHT(i64 %124, i8* %125)
  %127 = load i8*, i8** %13, align 8
  %128 = sub i64 0, %126
  %129 = getelementptr i8, i8* %127, i64 %128
  store i8* %129, i8** %13, align 8
  %130 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %131 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %134 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = call i32 @UPDATE_WEIGHT(i64 %132, i32 %135, i8* %136, i8* %137)
  %139 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %140 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %143 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i8**, i8*** %7, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 0
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i8**, i8*** %6, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8*, i8** %150, i64 %151
  store i8** %152, i8*** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i8**, i8*** %7, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8*, i8** %154, i64 %155
  store i8** %156, i8*** %7, align 8
  br label %73

157:                                              ; preds = %73
  br label %238

158:                                              ; preds = %66
  %159 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %160 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %237

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %168, %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %8, align 4
  %167 = icmp ne i32 %165, 0
  br i1 %167, label %168, label %236

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %171 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  %174 = load i32, i32* @MAX_TERM, align 4
  %175 = sub nsw i32 %174, 1
  %176 = and i32 %173, %175
  store i32 %176, i32* %15, align 4
  %177 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %178 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  store i8* %185, i8** %17, align 8
  %186 = load i8**, i8*** %6, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %16, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %191 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  %198 = load i32, i32* @MAX_TERM, align 4
  %199 = sub nsw i32 %198, 1
  %200 = and i32 %197, %199
  store i32 %200, i32* %11, align 4
  %201 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %202 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i8*, i8** %17, align 8
  %205 = call i64 @APPLY_WEIGHT(i64 %203, i8* %204)
  %206 = load i8*, i8** %16, align 8
  %207 = sub i64 0, %205
  %208 = getelementptr i8, i8* %206, i64 %207
  store i8* %208, i8** %16, align 8
  %209 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %210 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %213 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %17, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i32 @UPDATE_WEIGHT(i64 %211, i32 %214, i8* %215, i8* %216)
  %218 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %219 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %222 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, %220
  store i64 %224, i64* %222, align 8
  %225 = load i8*, i8** %16, align 8
  %226 = load i8**, i8*** %7, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 0
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i8**, i8*** %6, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8*, i8** %229, i64 %230
  store i8** %231, i8*** %6, align 8
  %232 = load i32, i32* %10, align 4
  %233 = load i8**, i8*** %7, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8*, i8** %233, i64 %234
  store i8** %235, i8*** %7, align 8
  br label %164

236:                                              ; preds = %164
  br label %237

237:                                              ; preds = %236, %158
  br label %238

238:                                              ; preds = %237, %157
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %287

241:                                              ; preds = %238
  %242 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %243 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %287

246:                                              ; preds = %241
  %247 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %248 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @MAX_TERM, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %287

252:                                              ; preds = %246
  %253 = load i32, i32* @MAX_TERM, align 4
  %254 = zext i32 %253 to i64
  %255 = call i8* @llvm.stacksave()
  store i8* %255, i8** %18, align 8
  %256 = alloca i8*, i64 %254, align 16
  store i64 %254, i64* %19, align 8
  %257 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %258 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @memcpy(i8** %256, i32* %259, i32 8)
  store i32 0, i32* %12, align 4
  br label %261

261:                                              ; preds = %282, %252
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @MAX_TERM, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %285

265:                                              ; preds = %261
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %256, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = ptrtoint i8* %269 to i32
  %271 = load %struct.Decorr*, %struct.Decorr** %9, align 8
  %272 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  store i32 %270, i32* %276, align 4
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  %279 = load i32, i32* @MAX_TERM, align 4
  %280 = sub nsw i32 %279, 1
  %281 = and i32 %278, %280
  store i32 %281, i32* %11, align 4
  br label %282

282:                                              ; preds = %265
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %261

285:                                              ; preds = %261
  %286 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %286)
  br label %287

287:                                              ; preds = %285, %246, %241, %238
  ret void
}

declare dso_local i64 @restore_weight(i32) #1

declare dso_local i32 @store_weight(i64) #1

declare dso_local i32 @wp_exp2(i32) #1

declare dso_local i32 @log2s(i32) #1

declare dso_local i64 @APPLY_WEIGHT(i64, i8*) #1

declare dso_local i32 @UPDATE_WEIGHT(i64, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8**, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
