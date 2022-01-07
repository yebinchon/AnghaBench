; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_decode_fft_packets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_decode_fft_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@fft_subpackets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @qdm2_decode_fft_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdm2_decode_fft_packets(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %278

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %34, %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 -1, i32* %33, align 4
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %24

37:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  store i32 256, i32* %6, align 4
  br label %38

38:                                               ; preds = %226, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %229

44:                                               ; preds = %38
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %80, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %5, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 6
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %11, align 8
  br label %79

79:                                               ; preds = %69, %65, %51
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %6, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %278

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 16
  br i1 %95, label %111, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = load i64*, i64** @fft_subpackets, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 16
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %102, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101, %96, %91
  br label %278

112:                                              ; preds = %101, %88
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 8
  %120 = call i32 @init_get_bits(i32* %10, i32 %115, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %123, 32
  br i1 %124, label %125, label %141

125:                                              ; preds = %112
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %128, 48
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load i64*, i64** @fft_subpackets, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 16
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %131, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %130
  store i32 1, i32* %9, align 4
  br label %142

141:                                              ; preds = %130, %125, %112
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp sge i32 %146, 17
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 24
  br i1 %150, label %157, label %151

151:                                              ; preds = %148, %142
  %152 = load i32, i32* %8, align 4
  %153 = icmp sge i32 %152, 33
  br i1 %153, label %154, label %176

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %155, 40
  br i1 %156, label %157, label %176

157:                                              ; preds = %154, %148
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 5
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 15
  %164 = sub nsw i32 %161, %163
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %157
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @qdm2_fft_decode_tones(%struct.TYPE_8__* %171, i32 %172, i32* %10, i32 %173)
  br label %175

175:                                              ; preds = %170, %167, %157
  br label %225

176:                                              ; preds = %154, %151
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 31
  br i1 %178, label %179, label %192

179:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %188, %179
  %181 = load i32, i32* %4, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @qdm2_fft_decode_tones(%struct.TYPE_8__* %184, i32 %185, i32* %10, i32 %186)
  br label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %180

191:                                              ; preds = %180
  br label %224

192:                                              ; preds = %176
  %193 = load i32, i32* %8, align 4
  %194 = icmp eq i32 %193, 46
  br i1 %194, label %195, label %223

195:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %196

196:                                              ; preds = %207, %195
  %197 = load i32, i32* %4, align 4
  %198 = icmp slt i32 %197, 6
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = call i32 @get_bits(i32* %10, i32 6)
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  br label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %196

210:                                              ; preds = %196
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %219, %210
  %212 = load i32, i32* %4, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @qdm2_fft_decode_tones(%struct.TYPE_8__* %215, i32 %216, i32* %10, i32 %217)
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %4, align 4
  br label %211

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %222, %192
  br label %224

224:                                              ; preds = %223, %191
  br label %225

225:                                              ; preds = %224, %175
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %38

229:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  br label %230

230:                                              ; preds = %262, %229
  %231 = load i32, i32* %3, align 4
  %232 = icmp slt i32 %231, 5
  br i1 %232, label %233, label %265

233:                                              ; preds = %230
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %3, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %261

242:                                              ; preds = %233
  %243 = load i32, i32* %4, align 4
  %244 = icmp sge i32 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %242
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %252, i32* %258, align 4
  br label %259

259:                                              ; preds = %245, %242
  %260 = load i32, i32* %3, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %259, %233
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %3, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %3, align 4
  br label %230

265:                                              ; preds = %230
  %266 = load i32, i32* %4, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 4
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %271, i32* %277, align 4
  br label %278

278:                                              ; preds = %20, %87, %111, %268, %265
  ret void
}

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @qdm2_fft_decode_tones(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
