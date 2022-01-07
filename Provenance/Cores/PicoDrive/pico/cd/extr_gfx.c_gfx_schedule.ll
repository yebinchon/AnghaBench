; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_schedule.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@UPDATE_CYCLES = common dso_local global i32 0, align 4
@gfx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PCD_EVENT_GFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gfx_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_schedule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 98
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 99
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %10, %15
  store i32 %16, i32* %1, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 100
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 101
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %1, align 4
  %30 = mul nsw i32 5, %29
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @UPDATE_CYCLES, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %0
  %37 = load i32, i32* @UPDATE_CYCLES, align 4
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 5, %38
  %40 = add nsw i32 %37, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %1, align 4
  %43 = mul nsw i32 5, %42
  %44 = sdiv i32 %41, %43
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %0
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 4
  %49 = load i32, i32* @PCD_EVENT_GFX, align 4
  %50 = load i32, i32* %1, align 4
  %51 = mul nsw i32 5, %50
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i32 @pcd_event_schedule_s68k(i32 %49, i32 %53)
  ret void
}

declare dso_local i32 @pcd_event_schedule_s68k(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
