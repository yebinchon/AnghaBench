; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___save_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wpad.c___save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*)* @__save_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__save_state(%struct.wiimote_t* %0) #0 {
  %2 = alloca %struct.wiimote_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %2, align 8
  %3 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %4 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %7 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %5, i32* %8, align 4
  %9 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %10 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %13 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 4
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %16 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %19 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %22 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %52 [
    i32 128, label %25
    i32 130, label %34
    i32 129, label %43
  ]

25:                                               ; preds = %1
  %26 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %27 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %31 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %36 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %40 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  br label %52

43:                                               ; preds = %1
  %44 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %45 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wiimote_t*, %struct.wiimote_t** %2, align 8
  %49 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %1, %43, %34, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
