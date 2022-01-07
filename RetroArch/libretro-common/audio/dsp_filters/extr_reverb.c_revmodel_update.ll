; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmodel = type { float, float, float, i64, float, float, float, float, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { float, float, float }

@freezemode = common dso_local global i64 0, align 8
@muted = common dso_local global i32 0, align 4
@fixedgain = common dso_local global i32 0, align 4
@numcombs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.revmodel*)* @revmodel_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revmodel_update(%struct.revmodel* %0) #0 {
  %2 = alloca %struct.revmodel*, align 8
  %3 = alloca i32, align 4
  store %struct.revmodel* %0, %struct.revmodel** %2, align 8
  %4 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %5 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %4, i32 0, i32 1
  %6 = load float, float* %5, align 4
  %7 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %8 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %7, i32 0, i32 2
  %9 = load float, float* %8, align 8
  %10 = fdiv float %9, 2.000000e+00
  %11 = fadd float %10, 5.000000e-01
  %12 = fmul float %6, %11
  %13 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %14 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %13, i32 0, i32 0
  store float %12, float* %14, align 8
  %15 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %16 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @freezemode, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %22 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %21, i32 0, i32 4
  store float 1.000000e+00, float* %22, align 8
  %23 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %24 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %23, i32 0, i32 5
  store float 0.000000e+00, float* %24, align 4
  %25 = load i32, i32* @muted, align 4
  %26 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %27 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %30 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %29, i32 0, i32 6
  %31 = load float, float* %30, align 8
  %32 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %33 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %32, i32 0, i32 4
  store float %31, float* %33, align 8
  %34 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %35 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %34, i32 0, i32 7
  %36 = load float, float* %35, align 4
  %37 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %38 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %37, i32 0, i32 5
  store float %36, float* %38, align 4
  %39 = load i32, i32* @fixedgain, align 4
  %40 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %41 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %28, %20
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @numcombs, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %49 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %48, i32 0, i32 4
  %50 = load float, float* %49, align 8
  %51 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %52 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %51, i32 0, i32 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store float %50, float* %57, align 4
  %58 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %59 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %58, i32 0, i32 5
  %60 = load float, float* %59, align 4
  %61 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %62 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %61, i32 0, i32 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store float %60, float* %67, align 4
  %68 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %69 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %68, i32 0, i32 5
  %70 = load float, float* %69, align 4
  %71 = fsub float 1.000000e+00, %70
  %72 = load %struct.revmodel*, %struct.revmodel** %2, align 8
  %73 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %72, i32 0, i32 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store float %71, float* %78, align 4
  br label %79

79:                                               ; preds = %47
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %43

82:                                               ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
