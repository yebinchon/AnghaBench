; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_init_tone_level_dequantization.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_init_tone_level_dequantization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32****, i32**, i32***, i32** }

@vlc_tab_tone_level_idx_hi1 = common dso_local global i32 0, align 4
@vlc_tab_tone_level_idx_hi2 = common dso_local global i32 0, align 4
@vlc_tab_tone_level_idx_mid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @init_tone_level_dequantization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_tone_level_dequantization(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @init_quantized_coeffs_elem0(i32 %25, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @get_bits_left(i32* %28)
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %42

31:                                               ; preds = %16
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %40, i32 0, i32 8)
  br label %46

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %10

46:                                               ; preds = %31, %10
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %145, %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %148

55:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %141, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %144

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %137, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %140

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @get_bits_left(i32* %67)
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %140

71:                                               ; preds = %66
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @get_bits1(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @get_bits_left(i32* %80)
  %82 = icmp slt i32 %81, 16
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %108

84:                                               ; preds = %79
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @qdm2_get_vlc(i32* %85, i32* @vlc_tab_tone_level_idx_hi1, i32 0, i32 2)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32****, i32***** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32***, i32**** %89, i64 %91
  %93 = load i32***, i32**** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32**, i32*** %93, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %86, i32* %104, align 4
  br label %105

105:                                              ; preds = %84
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %76

108:                                              ; preds = %83, %76
  br label %136

109:                                              ; preds = %71
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32****, i32***** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32***, i32**** %116, i64 %118
  %120 = load i32***, i32**** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32**, i32*** %120, i64 %122
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %113
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %110

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %108
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %63

140:                                              ; preds = %70, %63
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %56

144:                                              ; preds = %56
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %51

148:                                              ; preds = %51
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @QDM2_SB_USED(i32 %151)
  %153 = sub nsw i32 %152, 4
  store i32 %153, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %226, %148
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %229

158:                                              ; preds = %154
  store i32 0, i32* %9, align 4
  br label %159

159:                                              ; preds = %222, %158
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %225

165:                                              ; preds = %159
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @get_bits_left(i32* %166)
  %168 = icmp slt i32 %167, 16
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %225

170:                                              ; preds = %165
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @qdm2_get_vlc(i32* %171, i32* @vlc_tab_tone_level_idx_hi2, i32 0, i32 2)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %172, i32* %182, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp sgt i32 %183, 19
  br i1 %184, label %185, label %198

185:                                              ; preds = %170
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 3
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 16
  store i32 %197, i32* %195, align 4
  br label %221

198:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %199

199:                                              ; preds = %217, %198
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %220

202:                                              ; preds = %199
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 4
  %205 = load i32***, i32**** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32**, i32*** %205, i64 %207
  %209 = load i32**, i32*** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32*, i32** %209, i64 %211
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 -16, i32* %216, align 4
  br label %217

217:                                              ; preds = %202
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %199

220:                                              ; preds = %199
  br label %221

221:                                              ; preds = %220, %185
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %159

225:                                              ; preds = %169, %159
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %154

229:                                              ; preds = %154
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @QDM2_SB_USED(i32 %232)
  %234 = sub nsw i32 %233, 5
  store i32 %234, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %281, %229
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %284

239:                                              ; preds = %235
  store i32 0, i32* %9, align 4
  br label %240

240:                                              ; preds = %277, %239
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %280

246:                                              ; preds = %240
  store i32 0, i32* %6, align 4
  br label %247

247:                                              ; preds = %273, %246
  %248 = load i32, i32* %6, align 4
  %249 = icmp slt i32 %248, 8
  br i1 %249, label %250, label %276

250:                                              ; preds = %247
  %251 = load i32*, i32** %4, align 8
  %252 = call i32 @get_bits_left(i32* %251)
  %253 = icmp slt i32 %252, 16
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  br label %276

255:                                              ; preds = %250
  %256 = load i32*, i32** %4, align 8
  %257 = call i32 @qdm2_get_vlc(i32* %256, i32* @vlc_tab_tone_level_idx_mid, i32 0, i32 2)
  %258 = sub nsw i32 %257, 32
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 4
  %261 = load i32***, i32**** %260, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32**, i32*** %261, i64 %263
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %258, i32* %272, align 4
  br label %273

273:                                              ; preds = %255
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %247

276:                                              ; preds = %254, %247
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %240

280:                                              ; preds = %240
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %5, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %5, align 4
  br label %235

284:                                              ; preds = %235
  ret void
}

declare dso_local i32 @init_quantized_coeffs_elem0(i32, i32*) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @qdm2_get_vlc(i32*, i32*, i32, i32) #1

declare dso_local i32 @QDM2_SB_USED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
