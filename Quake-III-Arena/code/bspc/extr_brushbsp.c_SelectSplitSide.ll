; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_SelectSplitSide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_SelectSplitSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }

@TEXINFO_NODE = common dso_local global i64 0, align 8
@SFL_TESTED = common dso_local global i32 0, align 4
@SFL_CURVE = common dso_local global i32 0, align 4
@PSIDE_FACING = common dso_local global i32 0, align 4
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@PSIDE_BOTH = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_14__* null, align 8
@SURF_HINT = common dso_local global i32 0, align 4
@numthreads = common dso_local global i32 0, align 4
@c_nonvis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @SelectSplitSide(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %24, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32 -99999, i32* %6, align 4
  store i32 0, i32* %22, align 4
  store i32 2, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %232, %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %235

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %7, align 8
  br label %31

31:                                               ; preds = %207, %29
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %211

34:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %203, %34
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %206

41:                                               ; preds = %35
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %203

53:                                               ; preds = %41
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TEXINFO_NODE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %203

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SFL_TESTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %203

68:                                               ; preds = %60
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SFL_CURVE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %203

79:                                               ; preds = %75, %68
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, -2
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = call i32 @CheckPlaneAgainstParents(i32 %85, %struct.TYPE_12__* %86)
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = call i32 @CheckPlaneAgainstVolume(i32 %88, %struct.TYPE_12__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  br label %203

93:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %8, align 8
  br label %95

95:                                               ; preds = %139, %93
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %98, label %143

98:                                               ; preds = %95
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @TestBrushToPlanenum(%struct.TYPE_13__* %99, i32 %100, i32* %21, i32* %24, i32* %23)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @PSIDE_FACING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %112, %98
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @PSIDE_FRONT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @PSIDE_BACK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @PSIDE_BOTH, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %8, align 8
  br label %95

143:                                              ; preds = %95
  %144 = load i32, i32* %19, align 4
  %145 = mul nsw i32 5, %144
  %146 = load i32, i32* %20, align 4
  %147 = mul nsw i32 5, %146
  %148 = sub nsw i32 %145, %147
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @abs(i32 %151) #3
  %153 = sub nsw i32 %148, %152
  store i32 %153, i32* %5, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** @mapplanes, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %164

161:                                              ; preds = %143
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 5
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %161, %143
  %165 = load i32, i32* %23, align 4
  %166 = mul nsw i32 %165, 1000
  %167 = load i32, i32* %5, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %24, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %164
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SURF_HINT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  store i32 -9999999, i32* %5, align 4
  br label %179

179:                                              ; preds = %178, %171, %164
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %179
  %184 = load i32, i32* %5, align 4
  store i32 %184, i32* %6, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %10, align 8
  %186 = load i32, i32* %20, align 4
  store i32 %186, i32* %22, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %8, align 8
  br label %188

188:                                              ; preds = %197, %183
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = icmp ne %struct.TYPE_13__* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %191
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %8, align 8
  br label %188

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201, %179
  br label %203

203:                                              ; preds = %202, %92, %78, %67, %59, %52
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %35

206:                                              ; preds = %35
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  store %struct.TYPE_13__* %210, %struct.TYPE_13__** %7, align 8
  br label %31

211:                                              ; preds = %31
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %213 = icmp ne %struct.TYPE_11__* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = icmp sgt i32 %215, 1
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i32, i32* @numthreads, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @c_nonvis, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @c_nonvis, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223, %214
  %225 = load i32, i32* %12, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  store i32 1, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %224
  br label %235

231:                                              ; preds = %211
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %25

235:                                              ; preds = %230, %25
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %7, align 8
  br label %237

237:                                              ; preds = %263, %235
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %239 = icmp ne %struct.TYPE_13__* %238, null
  br i1 %239, label %240, label %267

240:                                              ; preds = %237
  store i32 0, i32* %11, align 4
  br label %241

241:                                              ; preds = %259, %240
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %241
  %248 = load i32, i32* @SFL_TESTED, align 4
  %249 = xor i32 %248, -1
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %251, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %257, %249
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %247
  %260 = load i32, i32* %11, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %11, align 4
  br label %241

262:                                              ; preds = %241
  br label %263

263:                                              ; preds = %262
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %265, align 8
  store %struct.TYPE_13__* %266, %struct.TYPE_13__** %7, align 8
  br label %237

267:                                              ; preds = %237
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  ret %struct.TYPE_11__* %268
}

declare dso_local i32 @CheckPlaneAgainstParents(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @CheckPlaneAgainstVolume(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @TestBrushToPlanenum(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
