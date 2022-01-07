; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_box.c_box_union.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_box.c_box_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @box_union(<2 x float> %0, <2 x float> %1) #0 {
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = bitcast %struct.TYPE_6__* %3 to <2 x float>*
  store <2 x float> %0, <2 x float>* %7, align 4
  %8 = bitcast %struct.TYPE_6__* %4 to <2 x float>*
  store <2 x float> %1, <2 x float>* %8, align 4
  %9 = bitcast %struct.TYPE_6__* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 4
  %11 = bitcast %struct.TYPE_6__* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  %13 = call float @box_intersection(<2 x float> %10, <2 x float> %12)
  store float %13, float* %5, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %17 = load float, float* %16, align 4
  %18 = fmul float %15, %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %22 = load float, float* %21, align 4
  %23 = fmul float %20, %22
  %24 = fadd float %18, %23
  %25 = load float, float* %5, align 4
  %26 = fsub float %24, %25
  store float %26, float* %6, align 4
  %27 = load float, float* %6, align 4
  ret float %27
}

declare dso_local float @box_intersection(<2 x float>, <2 x float>) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
