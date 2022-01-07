; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_context.c_egl_context_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { void (...)*, void (i32)* }
%struct.TYPE_5__ = type { void (...)*, void (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egl_context_set_callbacks(%struct.TYPE_7__* %0, void ()* %1, void (i32)* %2, void ()* %3, void (i32)* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca void ()*, align 8
  %8 = alloca void (i32)*, align 8
  %9 = alloca void ()*, align 8
  %10 = alloca void (i32)*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store void ()* %1, void ()** %7, align 8
  store void (i32)* %2, void (i32)** %8, align 8
  store void ()* %3, void ()** %9, align 8
  store void (i32)* %4, void (i32)** %10, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %53 [
    i32 130, label %17
    i32 129, label %29
    i32 128, label %41
  ]

17:                                               ; preds = %5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %11, align 8
  %22 = load void ()*, void ()** %7, align 8
  %23 = bitcast void ()* %22 to void (...)*
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store void (...)* %23, void (...)** %25, align 8
  %26 = load void (i32)*, void (i32)** %8, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store void (i32)* %26, void (i32)** %28, align 8
  br label %55

29:                                               ; preds = %5
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %12, align 8
  %34 = load void ()*, void ()** %7, align 8
  %35 = bitcast void ()* %34 to void (...)*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store void (...)* %35, void (...)** %37, align 8
  %38 = load void (i32)*, void (i32)** %8, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store void (i32)* %38, void (i32)** %40, align 8
  br label %55

41:                                               ; preds = %5
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %13, align 8
  %46 = load void ()*, void ()** %9, align 8
  %47 = bitcast void ()* %46 to void (...)*
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store void (...)* %47, void (...)** %49, align 8
  %50 = load void (i32)*, void (i32)** %10, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store void (i32)* %50, void (i32)** %52, align 8
  br label %55

53:                                               ; preds = %5
  %54 = call i32 (...) @UNREACHABLE()
  br label %55

55:                                               ; preds = %53, %41, %29, %17
  ret void
}

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
