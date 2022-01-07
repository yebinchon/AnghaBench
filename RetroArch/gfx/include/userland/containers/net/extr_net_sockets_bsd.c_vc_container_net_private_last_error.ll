; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_bsd.c_vc_container_net_private_last_error.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_bsd.c_vc_container_net_private_last_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_TOO_BIG = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_WOULD_BLOCK = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_IN_USE = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NETWORK = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_CONNECTION_LOST = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_NOT_CONNECTED = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_TIMED_OUT = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_CONNECTION_REFUSED = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_INVALID_SOCKET = common dso_local global i32 0, align 4
@VC_CONTAINER_NET_ERROR_GENERAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_net_private_last_error() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @errno, align 4
  switch i32 %2, label %55 [
    i32 153, label %3
    i32 145, label %5
    i32 141, label %7
    i32 139, label %9
    i32 128, label %11
    i32 142, label %13
    i32 150, label %15
    i32 152, label %17
    i32 151, label %19
    i32 137, label %21
    i32 135, label %23
    i32 136, label %25
    i32 149, label %27
    i32 147, label %29
    i32 134, label %31
    i32 133, label %33
    i32 132, label %35
    i32 130, label %37
    i32 148, label %39
    i32 140, label %41
    i32 138, label %43
    i32 144, label %45
    i32 143, label %47
    i32 129, label %49
    i32 146, label %51
    i32 131, label %53
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @VC_CONTAINER_NET_ERROR_ACCESS_DENIED, align 4
  store i32 %4, i32* %1, align 4
  br label %57

5:                                                ; preds = %0
  %6 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  store i32 %6, i32* %1, align 4
  br label %57

7:                                                ; preds = %0
  %8 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  store i32 %8, i32* %1, align 4
  br label %57

9:                                                ; preds = %0
  %10 = load i32, i32* @VC_CONTAINER_NET_ERROR_TOO_BIG, align 4
  store i32 %10, i32* %1, align 4
  br label %57

11:                                               ; preds = %0
  %12 = load i32, i32* @VC_CONTAINER_NET_ERROR_WOULD_BLOCK, align 4
  store i32 %12, i32* %1, align 4
  br label %57

13:                                               ; preds = %0
  %14 = load i32, i32* @VC_CONTAINER_NET_ERROR_IN_PROGRESS, align 4
  store i32 %14, i32* %1, align 4
  br label %57

15:                                               ; preds = %0
  %16 = load i32, i32* @VC_CONTAINER_NET_ERROR_IN_PROGRESS, align 4
  store i32 %16, i32* %1, align 4
  br label %57

17:                                               ; preds = %0
  %18 = load i32, i32* @VC_CONTAINER_NET_ERROR_IN_USE, align 4
  store i32 %18, i32* %1, align 4
  br label %57

19:                                               ; preds = %0
  %20 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  store i32 %20, i32* %1, align 4
  br label %57

21:                                               ; preds = %0
  %22 = load i32, i32* @VC_CONTAINER_NET_ERROR_NETWORK, align 4
  store i32 %22, i32* %1, align 4
  br label %57

23:                                               ; preds = %0
  %24 = load i32, i32* @VC_CONTAINER_NET_ERROR_NETWORK, align 4
  store i32 %24, i32* %1, align 4
  br label %57

25:                                               ; preds = %0
  %26 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 4
  store i32 %26, i32* %1, align 4
  br label %57

27:                                               ; preds = %0
  %28 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 4
  store i32 %28, i32* %1, align 4
  br label %57

29:                                               ; preds = %0
  %30 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 4
  store i32 %30, i32* %1, align 4
  br label %57

31:                                               ; preds = %0
  %32 = load i32, i32* @VC_CONTAINER_NET_ERROR_NO_MEMORY, align 4
  store i32 %32, i32* %1, align 4
  br label %57

33:                                               ; preds = %0
  %34 = load i32, i32* @VC_CONTAINER_NET_ERROR_NOT_CONNECTED, align 4
  store i32 %34, i32* %1, align 4
  br label %57

35:                                               ; preds = %0
  %36 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_LOST, align 4
  store i32 %36, i32* %1, align 4
  br label %57

37:                                               ; preds = %0
  %38 = load i32, i32* @VC_CONTAINER_NET_ERROR_TIMED_OUT, align 4
  store i32 %38, i32* %1, align 4
  br label %57

39:                                               ; preds = %0
  %40 = load i32, i32* @VC_CONTAINER_NET_ERROR_CONNECTION_REFUSED, align 4
  store i32 %40, i32* %1, align 4
  br label %57

41:                                               ; preds = %0
  %42 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  store i32 %42, i32* %1, align 4
  br label %57

43:                                               ; preds = %0
  %44 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_PARAMETER, align 4
  store i32 %44, i32* %1, align 4
  br label %57

45:                                               ; preds = %0
  %46 = load i32, i32* @VC_CONTAINER_NET_ERROR_NETWORK, align 4
  store i32 %46, i32* %1, align 4
  br label %57

47:                                               ; preds = %0
  %48 = load i32, i32* @VC_CONTAINER_NET_ERROR_NETWORK, align 4
  store i32 %48, i32* %1, align 4
  br label %57

49:                                               ; preds = %0
  %50 = load i32, i32* @VC_CONTAINER_NET_ERROR_NO_MEMORY, align 4
  store i32 %50, i32* %1, align 4
  br label %57

51:                                               ; preds = %0
  %52 = load i32, i32* @VC_CONTAINER_NET_ERROR_NO_MEMORY, align 4
  store i32 %52, i32* %1, align 4
  br label %57

53:                                               ; preds = %0
  %54 = load i32, i32* @VC_CONTAINER_NET_ERROR_INVALID_SOCKET, align 4
  store i32 %54, i32* %1, align 4
  br label %57

55:                                               ; preds = %0
  %56 = load i32, i32* @VC_CONTAINER_NET_ERROR_GENERAL, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
