; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_vc_container_net_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uint32_t = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NOT_ALLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_net_control(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %21 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @uint32_t, align 4
  %13 = call i32 @va_arg(i32 %11, i32 %12)
  %14 = call i32 @socket_set_read_buffer_size(i32* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @uint32_t, align 4
  %19 = call i32 @va_arg(i32 %17, i32 %18)
  %20 = call i32 @socket_set_read_timeout_ms(i32* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @VC_CONTAINER_NET_ERROR_NOT_ALLOWED, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %15, %9
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @socket_set_read_buffer_size(i32*, i32) #1

declare dso_local i32 @va_arg(i32, i32) #1

declare dso_local i32 @socket_set_read_timeout_ms(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
