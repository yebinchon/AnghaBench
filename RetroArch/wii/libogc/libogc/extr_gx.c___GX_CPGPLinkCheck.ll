; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_CPGPLinkCheck.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_CPGPLinkCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i64, i64 }

@_gpfifo = common dso_local global i32 0, align 4
@_cpufifo = common dso_local global i32 0, align 4
@_gxcpufifoready = common dso_local global i32 0, align 4
@_gxgpfifoready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__GX_CPGPLinkCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__GX_CPGPLinkCheck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.__gxfifo*, align 8
  %3 = alloca %struct.__gxfifo*, align 8
  store %struct.__gxfifo* bitcast (i32* @_gpfifo to %struct.__gxfifo*), %struct.__gxfifo** %2, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %3, align 8
  %4 = load i32, i32* @_gxcpufifoready, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @_gxgpfifoready, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %28

10:                                               ; preds = %6
  %11 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %12 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %15 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %20 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %23 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %28

27:                                               ; preds = %18, %10
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %26, %9
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
