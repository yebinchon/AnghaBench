; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcBulgeVertexes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcBulgeVertexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i64* }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { float }
%struct.TYPE_9__ = type { float* }
%struct.TYPE_8__ = type { float, float, float }

@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@FUNCTABLE_SIZE = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FUNCTABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcBulgeVertexes(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to float*
  store float* %13, float** %4, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %15 = inttoptr i64 %14 to float*
  store float* %15, float** %5, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 8
  %17 = inttoptr i64 %16 to float*
  store float* %17, float** %6, align 8
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0, i32 0), align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fmul float %18, %21
  %23 = fmul float %22, 0x3F50624DE0000000
  store float %23, float* %7, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %83, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %30 = load i32, i32* @M_PI, align 4
  %31 = mul nsw i32 %30, 2
  %32 = sdiv i32 %29, %31
  %33 = sitofp i32 %32 to float
  %34 = load float*, float** %4, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 4
  %40 = fmul float %36, %39
  %41 = load float, float* %7, align 4
  %42 = fadd float %40, %41
  %43 = fmul float %33, %42
  %44 = fptosi float %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load float*, float** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FUNCTABLE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load float, float* %53, align 4
  %55 = fmul float %51, %54
  store float %55, float* %9, align 4
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 0
  %58 = load float, float* %57, align 4
  %59 = load float, float* %9, align 4
  %60 = fmul float %58, %59
  %61 = load float*, float** %5, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  %63 = load float, float* %62, align 4
  %64 = fadd float %63, %60
  store float %64, float* %62, align 4
  %65 = load float*, float** %6, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  %67 = load float, float* %66, align 4
  %68 = load float, float* %9, align 4
  %69 = fmul float %67, %68
  %70 = load float*, float** %5, align 8
  %71 = getelementptr inbounds float, float* %70, i64 1
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %69
  store float %73, float* %71, align 4
  %74 = load float*, float** %6, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  %76 = load float, float* %75, align 4
  %77 = load float, float* %9, align 4
  %78 = fmul float %76, %77
  %79 = load float*, float** %5, align 8
  %80 = getelementptr inbounds float, float* %79, i64 2
  %81 = load float, float* %80, align 4
  %82 = fadd float %81, %78
  store float %82, float* %80, align 4
  br label %83

83:                                               ; preds = %28
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  %86 = load float*, float** %5, align 8
  %87 = getelementptr inbounds float, float* %86, i64 4
  store float* %87, float** %5, align 8
  %88 = load float*, float** %4, align 8
  %89 = getelementptr inbounds float, float* %88, i64 4
  store float* %89, float** %4, align 8
  %90 = load float*, float** %6, align 8
  %91 = getelementptr inbounds float, float* %90, i64 4
  store float* %91, float** %6, align 8
  br label %24

92:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
