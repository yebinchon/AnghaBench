; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_ff_vc1_pred_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_ff_vc1_pred_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32**, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ff_vc1_dqscale = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32**, i32*)* @ff_vc1_pred_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_vc1_pred_dc(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32** %6, i32*** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = add nsw i32 %31, %38
  store i32 %39, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %24, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FFABS(i32 %47)
  store i32 %48, i32* %25, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %25, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %27, align 4
  %57 = load i32, i32* %27, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %282

60:                                               ; preds = %8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  store i32* %81, i32** %23, align 8
  %82 = load i32*, i32** %23, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 -1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %20, align 4
  %85 = load i32*, i32** %23, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sub nsw i32 -1, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %19, align 4
  %91 = load i32*, i32** %23, align 8
  %92 = load i32, i32* %21, align 4
  %93 = sub nsw i32 0, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %141

99:                                               ; preds = %60
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %141

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 3
  br i1 %104, label %105, label %141

105:                                              ; preds = %102
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %24, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @FFABS(i32 %114)
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %26, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %105
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load i32, i32* %20, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %26, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul i32 %123, %130
  %132 = load i32*, i32** @ff_vc1_dqscale, align 8
  %133 = load i32, i32* %27, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul i32 %131, %136
  %138 = add i32 %137, 131072
  %139 = ashr i32 %138, 18
  store i32 %139, i32* %20, align 4
  br label %140

140:                                              ; preds = %122, %118, %105
  br label %141

141:                                              ; preds = %140, %102, %99, %60
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %189

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 2
  br i1 %146, label %147, label %189

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 3
  br i1 %149, label %150, label %189

150:                                              ; preds = %147
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %24, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @FFABS(i32 %162)
  store i32 %163, i32* %26, align 4
  %164 = load i32, i32* %26, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %150
  %167 = load i32, i32* %26, align 4
  %168 = load i32, i32* %25, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %166
  %171 = load i32, i32* %18, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %26, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul i32 %171, %178
  %180 = load i32*, i32** @ff_vc1_dqscale, align 8
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = mul i32 %179, %184
  %186 = add i32 %185, 131072
  %187 = ashr i32 %186, 18
  store i32 %187, i32* %18, align 4
  br label %188

188:                                              ; preds = %170, %166, %150
  br label %189

189:                                              ; preds = %188, %147, %144, %141
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %249

192:                                              ; preds = %189
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %249

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 3
  br i1 %197, label %198, label %249

198:                                              ; preds = %195
  %199 = load i32, i32* %24, align 4
  store i32 %199, i32* %28, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 1
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %28, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %28, align 4
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 2
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %28, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %28, align 4
  br label %214

214:                                              ; preds = %208, %205
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %28, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @FFABS(i32 %222)
  store i32 %223, i32* %26, align 4
  %224 = load i32, i32* %26, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %248

226:                                              ; preds = %214
  %227 = load i32, i32* %26, align 4
  %228 = load i32, i32* %25, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %226
  %231 = load i32, i32* %19, align 4
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %26, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = mul i32 %231, %238
  %240 = load i32*, i32** @ff_vc1_dqscale, align 8
  %241 = load i32, i32* %27, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = mul i32 %239, %244
  %246 = add i32 %245, 131072
  %247 = ashr i32 %246, 18
  store i32 %247, i32* %19, align 4
  br label %248

248:                                              ; preds = %230, %226, %214
  br label %249

249:                                              ; preds = %248, %195, %192, %189
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %265

255:                                              ; preds = %252
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* %19, align 4
  %258 = sub nsw i32 %256, %257
  %259 = call i64 @abs(i32 %258)
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %20, align 4
  %262 = sub nsw i32 %260, %261
  %263 = call i64 @abs(i32 %262)
  %264 = icmp sle i64 %259, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %255, %252
  %266 = load i32, i32* %20, align 4
  store i32 %266, i32* %22, align 4
  %267 = load i32*, i32** %17, align 8
  store i32 1, i32* %267, align 4
  br label %277

268:                                              ; preds = %255, %249
  %269 = load i32, i32* %14, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* %18, align 4
  store i32 %272, i32* %22, align 4
  %273 = load i32*, i32** %17, align 8
  store i32 0, i32* %273, align 4
  br label %276

274:                                              ; preds = %268
  store i32 0, i32* %22, align 4
  %275 = load i32*, i32** %17, align 8
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %274, %271
  br label %277

277:                                              ; preds = %276, %265
  %278 = load i32*, i32** %23, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32**, i32*** %16, align 8
  store i32* %279, i32** %280, align 8
  %281 = load i32, i32* %22, align 4
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %277, %59
  %283 = load i32, i32* %9, align 4
  ret i32 %283
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
