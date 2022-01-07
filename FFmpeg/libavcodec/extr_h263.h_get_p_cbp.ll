; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h263.h_get_p_cbp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h263.h_get_p_cbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32*, i32*, %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32 (i32)* }

@FF_MPV_FLAG_CBP_RD = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@MV_TYPE_16X16 = common dso_local global i64 0, align 8
@FF_LAMBDA_SHIFT = common dso_local global i32 0, align 4
@ff_h263_inter_MCBPC_bits = common dso_local global i32* null, align 8
@ff_h263_cbpy_tab = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, [64 x i32]*, i32, i32)* @get_p_cbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_p_cbp(%struct.TYPE_5__* %0, [64 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store [64 x i32]* %1, [64 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FF_MPV_FLAG_CBP_RD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %253

25:                                               ; preds = %4
  %26 = load i32, i32* @INT_MAX, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @INT_MAX, align 4
  store i32 %27, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MV_TYPE_16X16, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 16
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 8, i32 0
  %41 = add nsw i32 %34, %40
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FF_LAMBDA_SHIFT, align 4
  %46 = sub nsw i32 %45, 6
  %47 = ashr i32 %44, %46
  store i32 %47, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %96, %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %99

51:                                               ; preds = %48
  %52 = load i32*, i32** @ff_h263_inter_MCBPC_bits, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 7
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 5
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %64, %51
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 7
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %78, %74
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %48

99:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %177, %99
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %180

103:                                              ; preds = %100
  %104 = load i32**, i32*** @ff_h263_cbpy_tab, align 8
  %105 = load i32, i32* %10, align 4
  %106 = xor i32 %105, 15
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %103
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 7
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %117, %103
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, 2
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 7
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %131, %127
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 7
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %145, %141
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 7
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %159, %155
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %173, %169
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %100

180:                                              ; preds = %100
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = mul nsw i32 4, %182
  %184 = add nsw i32 %181, %183
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %187, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %180
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MV_TYPE_16X16, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %193
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %16, align 4
  %204 = mul nsw i32 2, %203
  %205 = add nsw i32 %202, %204
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  store i32 0, i32* %9, align 4
  br label %208

208:                                              ; preds = %207, %199
  br label %209

209:                                              ; preds = %208, %193, %180
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %249, %209
  %211 = load i32, i32* %10, align 4
  %212 = icmp slt i32 %211, 6
  br i1 %212, label %213, label %252

213:                                              ; preds = %210
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %248

222:                                              ; preds = %213
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %10, align 4
  %225 = sub nsw i32 5, %224
  %226 = ashr i32 %223, %225
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %248

229:                                              ; preds = %222
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 -1, i32* %235, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32 (i32)*, i32 (i32)** %238, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 %239(i32 %246)
  br label %248

248:                                              ; preds = %229, %222, %213
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %210

252:                                              ; preds = %210
  br label %277

253:                                              ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %254

254:                                              ; preds = %273, %253
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 6
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load i32, i32* %10, align 4
  %268 = sub nsw i32 5, %267
  %269 = shl i32 1, %268
  %270 = load i32, i32* %9, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %266, %257
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %254

276:                                              ; preds = %254
  br label %277

277:                                              ; preds = %276, %252
  %278 = load i32, i32* %9, align 4
  ret i32 %278
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
