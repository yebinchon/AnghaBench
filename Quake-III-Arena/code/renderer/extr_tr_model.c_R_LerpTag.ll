; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_model.c_R_LerpTag.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_model.c_R_LerpTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float**, float* }
%struct.TYPE_9__ = type { float*, float** }
%struct.TYPE_8__ = type { i32* }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_LerpTag(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, float %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_8__* @R_GetModelByHandle(i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %19, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %6
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load float**, float*** %30, align 8
  %32 = call i32 @AxisClear(float** %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load float*, float** %34, align 8
  %36 = call i32 @VectorClear(float* %35)
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %7, align 4
  br label %219

38:                                               ; preds = %6
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = call %struct.TYPE_9__* @R_GetTag(i32 %43, i32 %44, i8* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %14, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call %struct.TYPE_9__* @R_GetTag(i32 %51, i32 %52, i8* %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %15, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %57, %38
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load float**, float*** %62, align 8
  %64 = call i32 @AxisClear(float** %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = call i32 @VectorClear(float* %67)
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %7, align 4
  br label %219

70:                                               ; preds = %57
  %71 = load float, float* %12, align 4
  store float %71, float* %17, align 4
  %72 = load float, float* %12, align 4
  %73 = fsub float 1.000000e+00, %72
  store float %73, float* %18, align 4
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %196, %70
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %199

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load float*, float** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = load float, float* %18, align 4
  %86 = fmul float %84, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load float*, float** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float, float* %17, align 4
  %95 = fmul float %93, %94
  %96 = fadd float %86, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load float*, float** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %96, float* %102, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load float**, float*** %104, align 8
  %106 = getelementptr inbounds float*, float** %105, i64 0
  %107 = load float*, float** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load float, float* %18, align 4
  %113 = fmul float %111, %112
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load float**, float*** %115, align 8
  %117 = getelementptr inbounds float*, float** %116, i64 0
  %118 = load float*, float** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  %122 = load float, float* %121, align 4
  %123 = load float, float* %17, align 4
  %124 = fmul float %122, %123
  %125 = fadd float %113, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load float**, float*** %127, align 8
  %129 = getelementptr inbounds float*, float** %128, i64 0
  %130 = load float*, float** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  store float %125, float* %133, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load float**, float*** %135, align 8
  %137 = getelementptr inbounds float*, float** %136, i64 1
  %138 = load float*, float** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load float, float* %141, align 4
  %143 = load float, float* %18, align 4
  %144 = fmul float %142, %143
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load float**, float*** %146, align 8
  %148 = getelementptr inbounds float*, float** %147, i64 1
  %149 = load float*, float** %148, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  %153 = load float, float* %152, align 4
  %154 = load float, float* %17, align 4
  %155 = fmul float %153, %154
  %156 = fadd float %144, %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load float**, float*** %158, align 8
  %160 = getelementptr inbounds float*, float** %159, i64 1
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %156, float* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load float**, float*** %166, align 8
  %168 = getelementptr inbounds float*, float** %167, i64 2
  %169 = load float*, float** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %169, i64 %171
  %173 = load float, float* %172, align 4
  %174 = load float, float* %18, align 4
  %175 = fmul float %173, %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load float**, float*** %177, align 8
  %179 = getelementptr inbounds float*, float** %178, i64 2
  %180 = load float*, float** %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load float, float* %17, align 4
  %186 = fmul float %184, %185
  %187 = fadd float %175, %186
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load float**, float*** %189, align 8
  %191 = getelementptr inbounds float*, float** %190, i64 2
  %192 = load float*, float** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  store float %187, float* %195, align 4
  br label %196

196:                                              ; preds = %77
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %16, align 4
  br label %74

199:                                              ; preds = %74
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load float**, float*** %201, align 8
  %203 = getelementptr inbounds float*, float** %202, i64 0
  %204 = load float*, float** %203, align 8
  %205 = call i32 @VectorNormalize(float* %204)
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load float**, float*** %207, align 8
  %209 = getelementptr inbounds float*, float** %208, i64 1
  %210 = load float*, float** %209, align 8
  %211 = call i32 @VectorNormalize(float* %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load float**, float*** %213, align 8
  %215 = getelementptr inbounds float*, float** %214, i64 2
  %216 = load float*, float** %215, align 8
  %217 = call i32 @VectorNormalize(float* %216)
  %218 = load i32, i32* @qtrue, align 4
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %199, %60, %28
  %220 = load i32, i32* %7, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_8__* @R_GetModelByHandle(i32) #1

declare dso_local i32 @AxisClear(float**) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local %struct.TYPE_9__* @R_GetTag(i32, i32, i8*) #1

declare dso_local i32 @VectorNormalize(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
