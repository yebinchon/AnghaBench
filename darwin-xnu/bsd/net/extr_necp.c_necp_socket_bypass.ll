; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_bypass.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_socket_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.inpcb = type { i32 }

@necp_pass_loopback = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, %struct.inpcb*)* @necp_socket_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_socket_bypass(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.inpcb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.inpcb*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.inpcb* %2, %struct.inpcb** %7, align 8
  %8 = load i64, i64* @necp_pass_loopback, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %14 = call i64 @necp_is_loopback(%struct.sockaddr* %11, %struct.sockaddr* %12, %struct.inpcb* %13, i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %24

17:                                               ; preds = %10, %3
  %18 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %19 = call i64 @necp_is_intcoproc(%struct.inpcb* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %24

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %21, %16
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @necp_is_loopback(%struct.sockaddr*, %struct.sockaddr*, %struct.inpcb*, i32*) #1

declare dso_local i64 @necp_is_intcoproc(%struct.inpcb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
