; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_socket_clear_address.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/net/extr_net_sockets_common.c_socket_clear_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*)* @socket_clear_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_clear_address(%struct.sockaddr* %0) #0 {
  %2 = alloca %struct.sockaddr*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %2, align 8
  %5 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %6 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %20 [
    i32 129, label %8
    i32 128, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %10 = bitcast %struct.sockaddr* %9 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %10, %struct.sockaddr_in** %3, align 8
  %11 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %11, i32 0, i32 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.sockaddr*, %struct.sockaddr** %2, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %4, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  %19 = call i32 @memset(i32* %18, i32 0, i32 4)
  br label %22

20:                                               ; preds = %1
  %21 = call i32 @vc_container_assert(i32 0)
  br label %22

22:                                               ; preds = %20, %14, %8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vc_container_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
