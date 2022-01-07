; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_select_mcts.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_select_mcts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float, float*, float*, float*, i32*, float*, i32*, i32, %struct.TYPE_4__**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @select_mcts(%struct.TYPE_4__* %0, i32* %1, float* %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = fneg float %22
  store float %23, float* %5, align 4
  br label %272

24:                                               ; preds = %4
  store float -1.000000e+03, float* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %89, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 362
  br i1 %27, label %28, label %92

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load float*, float** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fpext float %35 to double
  %37 = load float, float* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load float*, float** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fmul float %37, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = call float @sqrt(i32 %48)
  %50 = fmul float %45, %49
  %51 = fpext float %50 to double
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to double
  %60 = fadd double 1.000000e+00, %59
  %61 = fdiv double %51, %60
  %62 = fadd double %36, %61
  %63 = fptrunc double %62 to float
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  store float %63, float* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load float*, float** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %72, i64 %74
  %76 = load float, float* %75, align 4
  %77 = load float, float* %11, align 4
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %28
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  %86 = load float, float* %85, align 4
  store float %86, float* %11, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %79, %28
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %25

92:                                               ; preds = %25
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = icmp ne %struct.TYPE_4__* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %92
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 9
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 6
  %125 = load float*, float** %124, align 8
  %126 = load float, float* %9, align 4
  %127 = call float @select_mcts(%struct.TYPE_4__* %121, i32* %122, float* %125, float %126)
  store float %127, float* %13, align 4
  br label %236

128:                                              ; preds = %92
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 361
  br i1 %130, label %131, label %170

131:                                              ; preds = %128
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 6
  %134 = load float*, float** %133, align 8
  %135 = load float*, float** %8, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sdiv i32 %136, 19
  %138 = load i32, i32* %12, align 4
  %139 = srem i32 %138, 19
  %140 = call i32 @legal_go(float* %134, float* %135, i32 1, i32 %137, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %170, label %142

142:                                              ; preds = %131
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load float*, float** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  store float -1.000000e+00, float* %148, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 -1, i32* %154, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load float*, float** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  store float 0.000000e+00, float* %160, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load float*, float** %8, align 8
  %168 = load float, float* %9, align 4
  %169 = call float @select_mcts(%struct.TYPE_4__* %165, i32* %166, float* %167, float %168)
  store float %169, float* %5, align 4
  br label %272

170:                                              ; preds = %131, %128
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 6
  %173 = load float*, float** %172, align 8
  %174 = call float* @copy_board(float* %173)
  store float* %174, float** %14, align 8
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 361
  br i1 %176, label %177, label %184

177:                                              ; preds = %170
  %178 = load float*, float** %14, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sdiv i32 %179, 19
  %181 = load i32, i32* %12, align 4
  %182 = srem i32 %181, 19
  %183 = call i32 @move_go(float* %178, i32 1, i32 %180, i32 %182)
  br label %184

184:                                              ; preds = %177, %170
  %185 = load float*, float** %14, align 8
  %186 = call i32 @flip_board(float* %185)
  %187 = load float*, float** %14, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 6
  %190 = load float*, float** %189, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = call %struct.TYPE_4__* @expand(float* %187, float* %190, i32* %191)
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 9
  %195 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %195, i64 %197
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %198, align 8
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 9
  %201 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %201, i64 %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load float, float* %206, align 4
  %208 = fneg float %207
  store float %208, float* %13, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp eq i32 %209, 361
  br i1 %210, label %211, label %234

211:                                              ; preds = %184
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %214, i64 %216
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 8
  store i32 1, i32* %219, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %211
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 9
  %227 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %227, i64 %229
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %224, %211
  br label %234

234:                                              ; preds = %233, %184
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235, %114
  %237 = load float, float* %13, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sitofp i32 %244 to float
  %246 = fadd float %245, %237
  %247 = fptosi float %246 to i32
  store i32 %247, i32* %243, align 4
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 7
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 5
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sdiv i32 %254, %261
  %263 = sitofp i32 %262 to float
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 3
  %266 = load float*, float** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %266, i64 %268
  store float %263, float* %269, align 4
  %270 = load float, float* %13, align 4
  %271 = fneg float %270
  store float %271, float* %5, align 4
  br label %272

272:                                              ; preds = %236, %142, %19
  %273 = load float, float* %5, align 4
  ret float %273
}

declare dso_local float @sqrt(i32) #1

declare dso_local i32 @legal_go(float*, float*, i32, i32, i32) #1

declare dso_local float* @copy_board(float*) #1

declare dso_local i32 @move_go(float*, i32, i32, i32) #1

declare dso_local i32 @flip_board(float*) #1

declare dso_local %struct.TYPE_4__* @expand(float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
