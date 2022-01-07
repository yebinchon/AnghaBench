; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_pick_move.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_pick_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, double, i32*, double*, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { double }

@nind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"%d %d, Result: %f, Prior: %f, Prob: %f, Mean Value: %f, Child Result: %f, Visited: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pick_move(%struct.TYPE_7__* noalias sret %0, %struct.TYPE_8__* %1, float %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [362 x float], align 16
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store float %2, float* %6, align 4
  store i32 %3, i32* %7, align 4
  %15 = bitcast [362 x float]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1448, i1 false)
  %16 = bitcast %struct.TYPE_7__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 20, i1 false)
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 362
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load float, float* %6, align 4
  %29 = fpext float %28 to double
  %30 = fdiv double 1.000000e+00, %29
  %31 = fptosi double %30 to i32
  %32 = call double @pow(i32 %27, i32 %31)
  %33 = load double, double* %10, align 8
  %34 = fadd double %33, %32
  store double %34, double* %10, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 362
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load float, float* %6, align 4
  %51 = fpext float %50 to double
  %52 = fdiv double 1.000000e+00, %51
  %53 = fptosi double %52 to i32
  %54 = call double @pow(i32 %49, i32 %53)
  %55 = load double, double* %10, align 8
  %56 = fdiv double %54, %55
  %57 = fptrunc double %56 to float
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 %59
  store float %57, float* %60, align 4
  br label %61

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %39

64:                                               ; preds = %39
  %65 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 0
  %66 = call i32 @sample_array(float* %65, i32 362)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sdiv i32 %67, 19
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = srem i32 %70, 19
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = fadd double %75, 1.000000e+00
  %77 = fdiv double %76, 2.000000e+00
  %78 = fptosi double %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sitofp i32 %86 to double
  %88 = fadd double %87, 1.000000e+00
  %89 = fdiv double %88, 2.000000e+00
  %90 = fptosi double %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @nind, align 4
  %93 = zext i32 %92 to i64
  %94 = call i8* @llvm.stacksave()
  store i8* %94, i8** %12, align 8
  %95 = alloca i32, i64 %93, align 16
  store i64 %93, i64* %13, align 8
  %96 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 0
  %97 = load i32, i32* @nind, align 4
  %98 = call i32 @top_k(float* %96, i32 362, i32 %97, i32* %95)
  %99 = load i32, i32* @stderr, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @print_board(i32 %99, i32 %102, i32 %103, i32* %95)
  %105 = load i32, i32* @stderr, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sdiv i32 %106, 19
  %108 = load i32, i32* %11, align 4
  %109 = srem i32 %108, 19
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load double, double* %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load double*, double** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %133, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = icmp ne %struct.TYPE_6__* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %64
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  br label %150

149:                                              ; preds = %64
  br label %150

150:                                              ; preds = %149, %139
  %151 = phi double [ %148, %139 ], [ 0.000000e+00, %149 ]
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %109, double %112, double %119, float %123, i32 %130, double %151, i32 %158)
  %160 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 0
  %161 = call i32 @max_index(float* %160, i32 362)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* @stderr, align 4
  %163 = load i32, i32* %14, align 4
  %164 = sdiv i32 %163, 19
  %165 = load i32, i32* %14, align 4
  %166 = srem i32 %165, 19
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load double*, double** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %172, i64 %174
  %176 = load double, double* %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %190, i64 %192
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %206

196:                                              ; preds = %150
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %199, i64 %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load double, double* %204, align 8
  br label %207

206:                                              ; preds = %150
  br label %207

207:                                              ; preds = %206, %196
  %208 = phi double [ %205, %196 ], [ 0.000000e+00, %206 ]
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @fprintf(i32 %162, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %166, double %169, double %176, float %180, i32 %187, double %208, i32 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load double*, double** %218, align 8
  %220 = bitcast double* %219 to float*
  %221 = call i32 @max_index(float* %220, i32 362)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* @stderr, align 4
  %223 = load i32, i32* %14, align 4
  %224 = sdiv i32 %223, 19
  %225 = load i32, i32* %14, align 4
  %226 = srem i32 %225, 19
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 1
  %229 = load double, double* %228, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  %232 = load double*, double** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  %236 = load double, double* %235, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [362 x float], [362 x float]* %9, i64 0, i64 %238
  %240 = load float, float* %239, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %250, i64 %252
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %253, align 8
  %255 = icmp ne %struct.TYPE_6__* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %207
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %259, i64 %261
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load double, double* %264, align 8
  br label %267

266:                                              ; preds = %207
  br label %267

267:                                              ; preds = %266, %256
  %268 = phi double [ %265, %256 ], [ 0.000000e+00, %266 ]
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @fprintf(i32 %222, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %224, i32 %226, double %229, double %236, float %240, i32 %247, double %268, i32 %275)
  %277 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %277)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local double @pow(i32, i32) #2

declare dso_local i32 @sample_array(float*, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @top_k(float*, i32, i32, i32*) #2

declare dso_local i32 @print_board(i32, i32, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, double, double, float, i32, double, i32) #2

declare dso_local i32 @max_index(float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
