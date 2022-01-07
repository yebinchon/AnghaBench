; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { %struct.TYPE_2__*, %struct.socket* }
%struct.TYPE_2__ = type { %struct.socket* }
%struct.socket = type { i64 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpcb*)* @unp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_shutdown(%struct.unpcb* %0) #0 {
  %2 = alloca %struct.unpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.unpcb* %0, %struct.unpcb** %2, align 8
  %5 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %6 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %5, i32 0, i32 1
  %7 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %7, %struct.socket** %3, align 8
  %8 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %9 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %8, i32 0, i32 1
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOCK_STREAM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %17 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %22 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.socket*, %struct.socket** %24, align 8
  store %struct.socket* %25, %struct.socket** %4, align 8
  %26 = load %struct.socket*, %struct.socket** %3, align 8
  %27 = load %struct.socket*, %struct.socket** %4, align 8
  %28 = call i32 @unp_get_locks_in_order(%struct.socket* %26, %struct.socket* %27)
  %29 = load %struct.socket*, %struct.socket** %4, align 8
  %30 = call i32 @socantrcvmore(%struct.socket* %29)
  %31 = load %struct.socket*, %struct.socket** %4, align 8
  %32 = call i32 @socket_unlock(%struct.socket* %31, i32 1)
  br label %33

33:                                               ; preds = %20, %15, %1
  ret void
}

declare dso_local i32 @unp_get_locks_in_order(%struct.socket*, %struct.socket*) #1

declare dso_local i32 @socantrcvmore(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
