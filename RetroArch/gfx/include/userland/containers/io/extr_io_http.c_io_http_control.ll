; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VC_CONTAINER_IO_T = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VC_CONTAINER_NET_CONTROL_SET_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NOT_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.VC_CONTAINER_IO_T*, i32, i32)* @io_http_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_http_control(%struct.VC_CONTAINER_IO_T* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.VC_CONTAINER_IO_T*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.VC_CONTAINER_IO_T* %0, %struct.VC_CONTAINER_IO_T** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 129, label %10
    i32 128, label %19
  ]

10:                                               ; preds = %3
  %11 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %4, align 8
  %12 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VC_CONTAINER_NET_CONTROL_SET_READ_BUFFER_SIZE, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vc_container_net_control(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %4, align 8
  %21 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VC_CONTAINER_NET_CONTROL_SET_READ_TIMEOUT_MS, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @vc_container_net_control(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @VC_CONTAINER_NET_ERROR_NOT_ALLOWED, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %19, %10
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @translate_net_status_to_container_status(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.VC_CONTAINER_IO_T*, %struct.VC_CONTAINER_IO_T** %4, align 8
  %35 = getelementptr inbounds %struct.VC_CONTAINER_IO_T, %struct.VC_CONTAINER_IO_T* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @vc_container_net_control(i32, i32, i32) #1

declare dso_local i32 @translate_net_status_to_container_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
