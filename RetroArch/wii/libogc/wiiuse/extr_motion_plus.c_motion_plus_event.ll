; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_motion_plus.c_motion_plus_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_motion_plus.c_motion_plus_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.motion_plus_t = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @motion_plus_event(%struct.motion_plus_t* %0, i32* %1) #0 {
  %3 = alloca %struct.motion_plus_t*, align 8
  %4 = alloca i32*, align 8
  store %struct.motion_plus_t* %0, %struct.motion_plus_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 252
  %9 = shl i32 %8, 6
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %9, %12
  %14 = load %struct.motion_plus_t*, %struct.motion_plus_t** %3, align 8
  %15 = getelementptr inbounds %struct.motion_plus_t, %struct.motion_plus_t* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 252
  %20 = shl i32 %19, 6
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load %struct.motion_plus_t*, %struct.motion_plus_t** %3, align 8
  %26 = getelementptr inbounds %struct.motion_plus_t, %struct.motion_plus_t* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 252
  %31 = shl i32 %30, 6
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = load %struct.motion_plus_t*, %struct.motion_plus_t** %3, align 8
  %37 = getelementptr inbounds %struct.motion_plus_t, %struct.motion_plus_t* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1
  %42 = load %struct.motion_plus_t*, %struct.motion_plus_t** %3, align 8
  %43 = getelementptr inbounds %struct.motion_plus_t, %struct.motion_plus_t* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 2
  %52 = shl i32 %51, 1
  %53 = or i32 %47, %52
  %54 = load %struct.motion_plus_t*, %struct.motion_plus_t** %3, align 8
  %55 = getelementptr inbounds %struct.motion_plus_t, %struct.motion_plus_t* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
