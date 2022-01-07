; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_DamageBlendBlob.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_DamageBlendBlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32, i32 }

@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@DAMAGE_TIME = common dso_local global i32 0, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@RF_FIRST_PERSON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DamageBlendBlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DamageBlendBlob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %84

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1, i32 0), align 8
  %9 = load i64, i64* @GLHW_RAGEPRO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %84

12:                                               ; preds = %7
  %13 = load i32, i32* @DAMAGE_TIME, align 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %12
  br label %84

24:                                               ; preds = %19
  %25 = call i32 @memset(%struct.TYPE_12__* %3, i32 0, i32 32)
  %26 = load i32, i32* @RT_SPRITE, align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @RF_FIRST_PERSON, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 5, i32 1), align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 5, i32 0), align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VectorMA(i32 %30, i32 8, i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 3), align 4
  %40 = mul nsw i32 %39, -8
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 5, i32 0), align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VectorMA(i32 %38, i32 %40, i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4), align 8
  %50 = mul nsw i32 %49, 8
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 5, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @VectorMA(i32 %48, i32 %50, i32 %53, i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %58 = mul nsw i32 %57, 3
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0, i32 0), align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 255, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 255, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 255, i32* %70, align 4
  %71 = load i32, i32* %1, align 4
  %72 = sitofp i32 %71 to float
  %73 = load i32, i32* %2, align 4
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %72, %74
  %76 = fpext float %75 to double
  %77 = fsub double 1.000000e+00, %76
  %78 = fmul double 2.000000e+02, %77
  %79 = fptosi double %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %79, i32* %82, align 4
  %83 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_12__* %3)
  br label %84

84:                                               ; preds = %24, %23, %11, %6
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
