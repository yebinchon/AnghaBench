; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_asv2_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_asv2_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@ff_asv_scantab = common dso_local global i32* null, align 8
@ff_asv_ac_ccp_tab = common dso_local global i32** null, align 8
@ff_asv_dc_ccp_tab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @asv2_encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asv2_encode_block(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 63, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i32*, i32** @ff_asv_scantab, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %23, %30
  %32 = add nsw i32 %31, 32768
  %33 = ashr i32 %32, 16
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  br label %40

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %10

40:                                               ; preds = %35, %10
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 2
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @asv2_put_bits(i32* %44, i32 4, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 32
  %53 = ashr i32 %52, 6
  %54 = call i32 @asv2_put_bits(i32* %48, i32 8, i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 0, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %288, %40
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %291

61:                                               ; preds = %57
  %62 = load i32*, i32** @ff_asv_scantab, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 4, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 0
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 0
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %73, %81
  %83 = add nsw i32 %82, 32768
  %84 = ashr i32 %83, 16
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 0
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = icmp ne i32 %84, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %61
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, 8
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %61
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %100, %108
  %110 = add nsw i32 %109, 32768
  %111 = ashr i32 %110, 16
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = icmp ne i32 %111, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %94
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %94
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %127, %135
  %137 = add nsw i32 %136, 32768
  %138 = ashr i32 %137, 16
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = icmp ne i32 %138, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %121
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, 2
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %145, %121
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 9
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 9
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %154, %162
  %164 = add nsw i32 %163, 32768
  %165 = ashr i32 %164, 16
  %166 = load i32*, i32** %4, align 8
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 9
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = icmp ne i32 %165, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %148
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %172, %148
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = phi i1 [ true, %175 ], [ %180, %178 ]
  %183 = zext i1 %182 to i32
  %184 = call i32 @av_assert2(i32 %183)
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32**, i32*** @ff_asv_ac_ccp_tab, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32**, i32*** @ff_asv_ac_ccp_tab, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @put_bits(i32* %189, i32 %196, i32 %203)
  br label %223

205:                                              ; preds = %181
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32**, i32*** @ff_asv_dc_ccp_tab, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32**, i32*** @ff_asv_dc_ccp_tab, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @put_bits(i32* %207, i32 %214, i32 %221)
  br label %223

223:                                              ; preds = %205, %187
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %287

226:                                              ; preds = %223
  %227 = load i32, i32* %9, align 4
  %228 = and i32 %227, 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 1
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 0
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @asv2_put_level(%struct.TYPE_4__* %231, i32* %233, i32 %239)
  br label %241

241:                                              ; preds = %230, %226
  %242 = load i32, i32* %9, align 4
  %243 = and i32 %242, 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32*, i32** %4, align 8
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @asv2_put_level(%struct.TYPE_4__* %246, i32* %248, i32 %254)
  br label %256

256:                                              ; preds = %245, %241
  %257 = load i32, i32* %9, align 4
  %258 = and i32 %257, 2
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %256
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32*, i32** %4, align 8
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @asv2_put_level(%struct.TYPE_4__* %261, i32* %263, i32 %269)
  br label %271

271:                                              ; preds = %260, %256
  %272 = load i32, i32* %9, align 4
  %273 = and i32 %272, 1
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i32*, i32** %4, align 8
  %280 = load i32, i32* %8, align 4
  %281 = add nsw i32 %280, 9
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @asv2_put_level(%struct.TYPE_4__* %276, i32* %278, i32 %284)
  br label %286

286:                                              ; preds = %275, %271
  br label %287

287:                                              ; preds = %286, %223
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %5, align 4
  br label %57

291:                                              ; preds = %57
  ret void
}

declare dso_local i32 @asv2_put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @asv2_put_level(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
