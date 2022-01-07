; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_EndDispList.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_EndDispList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@_gx_dl_fifoobj = common dso_local global i32 0, align 4
@_gx_old_cpufifo = common dso_local global i32 0, align 4
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@__gxregs = common dso_local global i32 0, align 4
@_gx_saved_data = common dso_local global i32 0, align 4
@STRUCT_REGDEF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GX_EndDispList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %4 = call i32 @GX_GetCPUFifo(i32* @_gx_dl_fifoobj)
  %5 = call i32 @GX_SetCPUFifo(i32* @_gx_old_cpufifo)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @_CPU_ISR_Disable(i32 %11)
  %13 = load i32, i32* @__gxregs, align 4
  %14 = load i32, i32* @_gx_saved_data, align 4
  %15 = load i32, i32* @STRUCT_REGDEF_SIZE, align 4
  %16 = call i32 @memcpy(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @_CPU_ISR_Restore(i32 %17)
  br label %19

19:                                               ; preds = %10, %0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i64 @GX_GetFifoWrap(i32* @_gx_dl_fifoobj)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %28

26:                                               ; preds = %19
  %27 = call i32 @GX_GetFifoCount(i32* @_gx_dl_fifoobj)
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @GX_GetCPUFifo(i32*) #1

declare dso_local i32 @GX_SetCPUFifo(i32*) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @GX_GetFifoWrap(i32*) #1

declare dso_local i32 @GX_GetFifoCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
