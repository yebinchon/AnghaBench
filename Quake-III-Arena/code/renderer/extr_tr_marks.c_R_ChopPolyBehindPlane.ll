; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_marks.c_R_ChopPolyBehindPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_marks.c_R_ChopPolyBehindPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_VERTS_ON_POLY = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float**, i32*, float**, float*, float, float)* @R_ChopPolyBehindPlane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_ChopPolyBehindPlane(i32 %0, float** %1, i32* %2, float** %3, float* %4, float %5, float %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float**, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [3 x i32], align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store float** %1, float*** %9, align 8
  store i32* %2, i32** %10, align 8
  store float** %3, float*** %11, align 8
  store float* %4, float** %12, align 8
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %27 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %32 = add nsw i32 %31, 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca float, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %37 = add nsw i32 %36, 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_VERTS_ON_POLY, align 4
  %42 = sub nsw i32 %41, 2
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  store i32 1, i32* %26, align 4
  br label %273

46:                                               ; preds = %7
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %49, align 4
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %102, %46
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %50
  %55 = load float**, float*** %9, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float*, float** %55, i64 %57
  %59 = load float*, float** %58, align 8
  %60 = load float*, float** %12, align 8
  %61 = call float @DotProduct(float* %59, float* %60)
  store float %61, float* %19, align 4
  %62 = load float, float* %13, align 4
  %63 = load float, float* %19, align 4
  %64 = fsub float %63, %62
  store float %64, float* %19, align 4
  %65 = load float, float* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %35, i64 %67
  store float %65, float* %68, align 4
  %69 = load float, float* %19, align 4
  %70 = load float, float* %14, align 4
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load i32, i32* @SIDE_FRONT, align 4
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %39, i64 %75
  store i32 %73, i32* %76, align 4
  br label %93

77:                                               ; preds = %54
  %78 = load float, float* %19, align 4
  %79 = load float, float* %14, align 4
  %80 = fneg float %79
  %81 = fcmp olt float %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @SIDE_BACK, align 4
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %39, i64 %85
  store i32 %83, i32* %86, align 4
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* @SIDE_ON, align 4
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %39, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %39, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  br label %50

105:                                              ; preds = %50
  %106 = getelementptr inbounds i32, i32* %39, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %39, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = getelementptr inbounds float, float* %35, i64 0
  %112 = load float, float* %111, align 16
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %35, i64 %114
  store float %112, float* %115, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %105
  store i32 1, i32* %26, align 4
  br label %273

121:                                              ; preds = %105
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %10, align 8
  store i32 %126, i32* %127, align 4
  %128 = load float**, float*** %11, align 8
  %129 = load float**, float*** %9, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @Com_Memcpy(float** %128, float** %129, i32 %133)
  store i32 1, i32* %26, align 4
  br label %273

135:                                              ; preds = %121
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %269, %135
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %272

140:                                              ; preds = %136
  %141 = load float**, float*** %9, align 8
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float*, float** %141, i64 %143
  %145 = load float*, float** %144, align 8
  store float* %145, float** %22, align 8
  %146 = load float**, float*** %11, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float*, float** %146, i64 %149
  %151 = load float*, float** %150, align 8
  store float* %151, float** %24, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %39, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @SIDE_ON, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %140
  %159 = load float*, float** %22, align 8
  %160 = load float*, float** %24, align 8
  %161 = call i32 @VectorCopy(float* %159, float* %160)
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %269

165:                                              ; preds = %140
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %39, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @SIDE_FRONT, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %165
  %173 = load float*, float** %22, align 8
  %174 = load float*, float** %24, align 8
  %175 = call i32 @VectorCopy(float* %173, float* %174)
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load float**, float*** %11, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float*, float** %179, i64 %182
  %184 = load float*, float** %183, align 8
  store float* %184, float** %24, align 8
  br label %185

185:                                              ; preds = %172, %165
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %39, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SIDE_ON, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %204, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %20, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %39, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %39, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %193, %185
  br label %269

205:                                              ; preds = %193
  %206 = load float**, float*** %9, align 8
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  %209 = load i32, i32* %8, align 4
  %210 = srem i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float*, float** %206, i64 %211
  %213 = load float*, float** %212, align 8
  store float* %213, float** %23, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %35, i64 %215
  %217 = load float, float* %216, align 4
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %35, i64 %220
  %222 = load float, float* %221, align 4
  %223 = fsub float %217, %222
  store float %223, float* %25, align 4
  %224 = load float, float* %25, align 4
  %225 = fcmp oeq float %224, 0.000000e+00
  br i1 %225, label %226, label %227

226:                                              ; preds = %205
  store float 0.000000e+00, float* %19, align 4
  br label %234

227:                                              ; preds = %205
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %35, i64 %229
  %231 = load float, float* %230, align 4
  %232 = load float, float* %25, align 4
  %233 = fdiv float %231, %232
  store float %233, float* %19, align 4
  br label %234

234:                                              ; preds = %227, %226
  store i32 0, i32* %21, align 4
  br label %235

235:                                              ; preds = %262, %234
  %236 = load i32, i32* %21, align 4
  %237 = icmp slt i32 %236, 3
  br i1 %237, label %238, label %265

238:                                              ; preds = %235
  %239 = load float*, float** %22, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load float, float* %19, align 4
  %245 = load float*, float** %23, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = load float*, float** %22, align 8
  %251 = load i32, i32* %21, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fsub float %249, %254
  %256 = fmul float %244, %255
  %257 = fadd float %243, %256
  %258 = load float*, float** %24, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  store float %257, float* %261, align 4
  br label %262

262:                                              ; preds = %238
  %263 = load i32, i32* %21, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %21, align 4
  br label %235

265:                                              ; preds = %235
  %266 = load i32*, i32** %10, align 8
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %265, %204, %158
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %136

272:                                              ; preds = %136
  store i32 0, i32* %26, align 4
  br label %273

273:                                              ; preds = %272, %125, %120, %44
  %274 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %26, align 4
  switch i32 %275, label %277 [
    i32 0, label %276
    i32 1, label %276
  ]

276:                                              ; preds = %273, %273
  ret void

277:                                              ; preds = %273
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @DotProduct(float*, float*) #2

declare dso_local i32 @Com_Memcpy(float**, float**, i32) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
