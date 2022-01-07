; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_slice_get_derivative.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorconstancy.c_slice_get_derivative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, double**, i32*, i32* }
%struct.TYPE_6__ = type { i32*, double***, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, double** }

@INDEX_ORD = common dso_local global i64 0, align 8
@INDEX_DIR = common dso_local global i64 0, align 8
@INDEX_SRC = common dso_local global i64 0, align 8
@INDEX_DST = common dso_local global i64 0, align 8
@NUM_PLANES = common dso_local global i32 0, align 4
@DIR_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @slice_get_derivative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_get_derivative(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %9, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %11, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @INDEX_ORD, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @INDEX_DIR, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @INDEX_SRC, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @INDEX_DST, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load double**, double*** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double*, double** %67, i64 %69
  %71 = load double*, double** %70, align 8
  store double* %71, double** %17, align 8
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %273, %4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @NUM_PLANES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %276

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %19, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %20, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %21, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load double***, double**** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double**, double*** %100, i64 %102
  %104 = load double**, double*** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double*, double** %104, i64 %106
  %108 = load double*, double** %107, align 8
  store double* %108, double** %22, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @DIR_X, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %190

112:                                              ; preds = %76
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load double**, double*** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double*, double** %115, i64 %117
  %119 = load double*, double** %118, align 8
  store double* %119, double** %28, align 8
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %7, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %23, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  %128 = mul nsw i32 %125, %127
  %129 = load i32, i32* %8, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %23, align 4
  store i32 %131, i32* %25, align 4
  br label %132

132:                                              ; preds = %186, %112
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %24, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  store i32 0, i32* %26, align 4
  br label %137

137:                                              ; preds = %182, %136
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %185

141:                                              ; preds = %137
  %142 = load double*, double** %22, align 8
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = load i32, i32* %20, align 4
  %146 = call i64 @INDX2D(i32 %143, i32 %144, i32 %145)
  %147 = getelementptr inbounds double, double* %142, i64 %146
  store double 0.000000e+00, double* %147, align 8
  store i32 0, i32* %27, align 4
  br label %148

148:                                              ; preds = %178, %141
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %148
  %153 = load double*, double** %28, align 8
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %26, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %27, align 4
  %158 = call i32 @GINDX(i32 %156, i32 %157)
  %159 = add nsw i32 %155, %158
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load double*, double** %17, align 8
  %164 = load i32, i32* %27, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = load double, double* %166, align 8
  %168 = call i64 @GAUSS(double* %153, i32 %154, i32 %159, i32 %160, i32 %161, i32 %162, double %167)
  %169 = sitofp i64 %168 to double
  %170 = load double*, double** %22, align 8
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %26, align 4
  %173 = load i32, i32* %20, align 4
  %174 = call i64 @INDX2D(i32 %171, i32 %172, i32 %173)
  %175 = getelementptr inbounds double, double* %170, i64 %174
  %176 = load double, double* %175, align 8
  %177 = fadd double %176, %169
  store double %177, double* %175, align 8
  br label %178

178:                                              ; preds = %152
  %179 = load i32, i32* %27, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %27, align 4
  br label %148

181:                                              ; preds = %148
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %26, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %26, align 4
  br label %137

185:                                              ; preds = %137
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %25, align 4
  br label %132

189:                                              ; preds = %132
  br label %272

190:                                              ; preds = %76
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load double***, double**** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double**, double*** %193, i64 %195
  %197 = load double**, double*** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double*, double** %197, i64 %199
  %201 = load double*, double** %200, align 8
  store double* %201, double** %29, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %7, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* %8, align 4
  %206 = sdiv i32 %204, %205
  store i32 %206, i32* %23, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  %210 = mul nsw i32 %207, %209
  %211 = load i32, i32* %8, align 4
  %212 = sdiv i32 %210, %211
  store i32 %212, i32* %24, align 4
  %213 = load i32, i32* %23, align 4
  store i32 %213, i32* %26, align 4
  br label %214

214:                                              ; preds = %268, %190
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %24, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %271

218:                                              ; preds = %214
  store i32 0, i32* %25, align 4
  br label %219

219:                                              ; preds = %264, %218
  %220 = load i32, i32* %25, align 4
  %221 = load i32, i32* %19, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %267

223:                                              ; preds = %219
  %224 = load double*, double** %22, align 8
  %225 = load i32, i32* %25, align 4
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* %20, align 4
  %228 = call i64 @INDX2D(i32 %225, i32 %226, i32 %227)
  %229 = getelementptr inbounds double, double* %224, i64 %228
  store double 0.000000e+00, double* %229, align 8
  store i32 0, i32* %27, align 4
  br label %230

230:                                              ; preds = %260, %223
  %231 = load i32, i32* %27, align 4
  %232 = load i32, i32* %16, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %263

234:                                              ; preds = %230
  %235 = load double*, double** %29, align 8
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %27, align 4
  %239 = call i32 @GINDX(i32 %237, i32 %238)
  %240 = add nsw i32 %236, %239
  %241 = load i32, i32* %26, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load double*, double** %17, align 8
  %246 = load i32, i32* %27, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds double, double* %245, i64 %247
  %249 = load double, double* %248, align 8
  %250 = call i64 @GAUSS(double* %235, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, double %249)
  %251 = sitofp i64 %250 to double
  %252 = load double*, double** %22, align 8
  %253 = load i32, i32* %25, align 4
  %254 = load i32, i32* %26, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i64 @INDX2D(i32 %253, i32 %254, i32 %255)
  %257 = getelementptr inbounds double, double* %252, i64 %256
  %258 = load double, double* %257, align 8
  %259 = fadd double %258, %251
  store double %259, double* %257, align 8
  br label %260

260:                                              ; preds = %234
  %261 = load i32, i32* %27, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %27, align 4
  br label %230

263:                                              ; preds = %230
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %25, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %25, align 4
  br label %219

267:                                              ; preds = %219
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %26, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %26, align 4
  br label %214

271:                                              ; preds = %214
  br label %272

272:                                              ; preds = %271, %189
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %18, align 4
  br label %72

276:                                              ; preds = %72
  ret i32 0
}

declare dso_local i64 @INDX2D(i32, i32, i32) #1

declare dso_local i64 @GAUSS(double*, i32, i32, i32, i32, i32, double) #1

declare dso_local i32 @GINDX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
