; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_iterate_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_iterate_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@DIR_NEXT = common dso_local global i32 0, align 4
@DIR_NEXT_END = common dso_local global i32 0, align 4
@DIR_PREV_END = common dso_local global i32 0, align 4
@DIR_PREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, %struct.TYPE_4__**, %struct.TYPE_4__**, i32, i32*, i32)* @iterate_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_frame(double %0, %struct.TYPE_4__** %1, %struct.TYPE_4__** %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca %struct.TYPE_4__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store double %0, double* %8, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = sitofp i32 %15 to double
  %17 = load double, double* %8, align 8
  %18 = fmul double %16, %17
  %19 = fadd double 0.000000e+00, %18
  %20 = load i32, i32* %11, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sitofp i32 %21 to double
  %23 = load double, double* %8, align 8
  %24 = fmul double %22, %23
  %25 = fadd double 0.000000e+00, %24
  %26 = fsub double %19, %25
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @DIR_NEXT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %161

31:                                               ; preds = %6
  %32 = load double, double* %8, align 8
  %33 = fcmp oge double %32, 1.000000e+00
  br i1 %33, label %34, label %98

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %45, align 8
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %47, i32* %7, align 4
  br label %291

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %62, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %67, i32* %7, align 4
  br label %291

68:                                               ; preds = %57
  br label %97

69:                                               ; preds = %48
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %75
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %90, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %96

94:                                               ; preds = %75, %69
  %95 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %95, i32* %7, align 4
  br label %291

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %68
  br label %159

98:                                               ; preds = %31
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = icmp ne %struct.TYPE_4__* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %109, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %115

113:                                              ; preds = %98
  %114 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %114, i32* %7, align 4
  br label %291

115:                                              ; preds = %104
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %129, align 8
  br label %132

130:                                              ; preds = %118
  %131 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %131, i32* %7, align 4
  br label %291

132:                                              ; preds = %124
  br label %158

133:                                              ; preds = %115
  %134 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = icmp ne %struct.TYPE_4__* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %133
  %140 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = icmp ne %struct.TYPE_4__* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %154, align 8
  br label %157

155:                                              ; preds = %139, %133
  %156 = load i32, i32* @DIR_NEXT_END, align 4
  store i32 %156, i32* %7, align 4
  br label %291

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %132
  br label %159

159:                                              ; preds = %158, %97
  %160 = load i32, i32* @DIR_NEXT, align 4
  store i32 %160, i32* %7, align 4
  br label %291

161:                                              ; preds = %6
  %162 = load double, double* %8, align 8
  %163 = fcmp oge double %162, 1.000000e+00
  br i1 %163, label %164, label %228

164:                                              ; preds = %161
  %165 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = icmp ne %struct.TYPE_4__* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %174, %struct.TYPE_4__** %175, align 8
  br label %178

176:                                              ; preds = %164
  %177 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %177, i32* %7, align 4
  br label %291

178:                                              ; preds = %170
  %179 = load i32, i32* %14, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = icmp ne %struct.TYPE_4__* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %191, %struct.TYPE_4__** %192, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  br label %198

196:                                              ; preds = %181
  %197 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %197, i32* %7, align 4
  br label %291

198:                                              ; preds = %187
  br label %227

199:                                              ; preds = %178
  %200 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = icmp ne %struct.TYPE_4__* %203, null
  br i1 %204, label %205, label %224

205:                                              ; preds = %199
  %206 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = icmp ne %struct.TYPE_4__* %211, null
  br i1 %212, label %213, label %224

213:                                              ; preds = %205
  %214 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %219, %struct.TYPE_4__** %220, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  br label %226

224:                                              ; preds = %205, %199
  %225 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %225, i32* %7, align 4
  br label %291

226:                                              ; preds = %213
  br label %227

227:                                              ; preds = %226, %198
  br label %289

228:                                              ; preds = %161
  %229 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = icmp ne %struct.TYPE_4__* %232, null
  br i1 %233, label %234, label %243

234:                                              ; preds = %228
  %235 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  store %struct.TYPE_4__* %238, %struct.TYPE_4__** %239, align 8
  %240 = load i32*, i32** %12, align 8
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %245

243:                                              ; preds = %228
  %244 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %244, i32* %7, align 4
  br label %291

245:                                              ; preds = %234
  %246 = load i32, i32* %14, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %263

248:                                              ; preds = %245
  %249 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %251, align 8
  %253 = icmp ne %struct.TYPE_4__* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %248
  %255 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %258, %struct.TYPE_4__** %259, align 8
  br label %262

260:                                              ; preds = %248
  %261 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %261, i32* %7, align 4
  br label %291

262:                                              ; preds = %254
  br label %288

263:                                              ; preds = %245
  %264 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = icmp ne %struct.TYPE_4__* %267, null
  br i1 %268, label %269, label %285

269:                                              ; preds = %263
  %270 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = icmp ne %struct.TYPE_4__* %275, null
  br i1 %276, label %277, label %285

277:                                              ; preds = %269
  %278 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  store %struct.TYPE_4__* %283, %struct.TYPE_4__** %284, align 8
  br label %287

285:                                              ; preds = %269, %263
  %286 = load i32, i32* @DIR_PREV_END, align 4
  store i32 %286, i32* %7, align 4
  br label %291

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287, %262
  br label %289

289:                                              ; preds = %288, %227
  %290 = load i32, i32* @DIR_PREV, align 4
  store i32 %290, i32* %7, align 4
  br label %291

291:                                              ; preds = %289, %285, %260, %243, %224, %196, %176, %159, %155, %130, %113, %94, %66, %46
  %292 = load i32, i32* %7, align 4
  ret i32 %292
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
