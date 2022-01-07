; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-internal.c_rijndaelKeySetupEnc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-internal.c_rijndaelKeySetupEnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rijndaelKeySetupEnc(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @GETU32(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = call i32 @GETU32(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 8
  %21 = call i32 @GETU32(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = call i32 @GETU32(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %92

31:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %88, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %91

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @TE421(i32 %42)
  %44 = xor i32 %41, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @TE432(i32 %45)
  %47 = xor i32 %44, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @TE443(i32 %48)
  %50 = xor i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @TE414(i32 %51)
  %53 = xor i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @RCON(i32 %54)
  %56 = xor i32 %53, %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %61, %64
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %70, %73
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = xor i32 %79, %82
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %5, align 8
  br label %88

88:                                               ; preds = %35
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %32

91:                                               ; preds = %32
  store i32 10, i32* %4, align 4
  br label %314

92:                                               ; preds = %3
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 16
  %95 = call i32 @GETU32(i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 20
  %100 = call i32 @GETU32(i32* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 192
  br i1 %104, label %105, label %188

105:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %184, %105
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %187

109:                                              ; preds = %106
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @TE421(i32 %116)
  %118 = xor i32 %115, %117
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @TE432(i32 %119)
  %121 = xor i32 %118, %120
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @TE443(i32 %122)
  %124 = xor i32 %121, %123
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @TE414(i32 %125)
  %127 = xor i32 %124, %126
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @RCON(i32 %128)
  %130 = xor i32 %127, %129
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 6
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 6
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %135, %138
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 7
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 7
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %144, %147
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 8
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  %156 = load i32, i32* %155, align 4
  %157 = xor i32 %153, %156
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 9
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %160, 7
  br i1 %161, label %162, label %163

162:                                              ; preds = %109
  store i32 12, i32* %4, align 4
  br label %314

163:                                              ; preds = %109
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 9
  %169 = load i32, i32* %168, align 4
  %170 = xor i32 %166, %169
  %171 = load i32*, i32** %5, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 10
  store i32 %170, i32* %172, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 10
  %178 = load i32, i32* %177, align 4
  %179 = xor i32 %175, %178
  %180 = load i32*, i32** %5, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 11
  store i32 %179, i32* %181, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 6
  store i32* %183, i32** %5, align 8
  br label %184

184:                                              ; preds = %163
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %106

187:                                              ; preds = %106
  br label %188

188:                                              ; preds = %187, %92
  %189 = load i32*, i32** %6, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 24
  %191 = call i32 @GETU32(i32* %190)
  %192 = load i32*, i32** %5, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 6
  store i32 %191, i32* %193, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 28
  %196 = call i32 @GETU32(i32* %195)
  %197 = load i32*, i32** %5, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 7
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp eq i32 %199, 256
  br i1 %200, label %201, label %313

201:                                              ; preds = %188
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %309, %201
  %203 = load i32, i32* %8, align 4
  %204 = icmp slt i32 %203, 7
  br i1 %204, label %205, label %312

205:                                              ; preds = %202
  %206 = load i32*, i32** %5, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 7
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %9, align 4
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @TE421(i32 %212)
  %214 = xor i32 %211, %213
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @TE432(i32 %215)
  %217 = xor i32 %214, %216
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @TE443(i32 %218)
  %220 = xor i32 %217, %219
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @TE414(i32 %221)
  %223 = xor i32 %220, %222
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @RCON(i32 %224)
  %226 = xor i32 %223, %225
  %227 = load i32*, i32** %5, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 8
  store i32 %226, i32* %228, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 8
  %234 = load i32, i32* %233, align 4
  %235 = xor i32 %231, %234
  %236 = load i32*, i32** %5, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 9
  store i32 %235, i32* %237, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 9
  %243 = load i32, i32* %242, align 4
  %244 = xor i32 %240, %243
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 10
  store i32 %244, i32* %246, align 4
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %5, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 10
  %252 = load i32, i32* %251, align 4
  %253 = xor i32 %249, %252
  %254 = load i32*, i32** %5, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 11
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp eq i32 %256, 6
  br i1 %257, label %258, label %259

258:                                              ; preds = %205
  store i32 14, i32* %4, align 4
  br label %314

259:                                              ; preds = %205
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 11
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %9, align 4
  %263 = load i32*, i32** %5, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @TE411(i32 %266)
  %268 = xor i32 %265, %267
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @TE422(i32 %269)
  %271 = xor i32 %268, %270
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @TE433(i32 %272)
  %274 = xor i32 %271, %273
  %275 = load i32, i32* %9, align 4
  %276 = call i32 @TE444(i32 %275)
  %277 = xor i32 %274, %276
  %278 = load i32*, i32** %5, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 12
  store i32 %277, i32* %279, align 4
  %280 = load i32*, i32** %5, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 5
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %5, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 12
  %285 = load i32, i32* %284, align 4
  %286 = xor i32 %282, %285
  %287 = load i32*, i32** %5, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 13
  store i32 %286, i32* %288, align 4
  %289 = load i32*, i32** %5, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 6
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %5, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 13
  %294 = load i32, i32* %293, align 4
  %295 = xor i32 %291, %294
  %296 = load i32*, i32** %5, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 14
  store i32 %295, i32* %297, align 4
  %298 = load i32*, i32** %5, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 7
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %5, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 14
  %303 = load i32, i32* %302, align 4
  %304 = xor i32 %300, %303
  %305 = load i32*, i32** %5, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 15
  store i32 %304, i32* %306, align 4
  %307 = load i32*, i32** %5, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 8
  store i32* %308, i32** %5, align 8
  br label %309

309:                                              ; preds = %259
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %202

312:                                              ; preds = %202
  br label %313

313:                                              ; preds = %312, %188
  store i32 -1, i32* %4, align 4
  br label %314

314:                                              ; preds = %313, %258, %162, %91
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @GETU32(i32*) #1

declare dso_local i32 @TE421(i32) #1

declare dso_local i32 @TE432(i32) #1

declare dso_local i32 @TE443(i32) #1

declare dso_local i32 @TE414(i32) #1

declare dso_local i32 @RCON(i32) #1

declare dso_local i32 @TE411(i32) #1

declare dso_local i32 @TE422(i32) #1

declare dso_local i32 @TE433(i32) #1

declare dso_local i32 @TE444(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
