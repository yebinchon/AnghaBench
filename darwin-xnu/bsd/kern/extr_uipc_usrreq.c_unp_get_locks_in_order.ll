; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_get_locks_in_order.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_get_locks_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { i64, i32 }

@UNP_DONTDISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.socket*)* @unp_get_locks_in_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_get_locks_in_order(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = icmp ult %struct.socket* %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = call i32 @socket_lock(%struct.socket* %10, i32 1)
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call %struct.unpcb* @sotounpcb(%struct.socket* %13)
  store %struct.unpcb* %14, %struct.unpcb** %5, align 8
  %15 = load i32, i32* @UNP_DONTDISCONNECT, align 4
  %16 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %17 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %21 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.socket*, %struct.socket** %3, align 8
  %25 = call i32 @socket_unlock(%struct.socket* %24, i32 0)
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = call i32 @socket_lock(%struct.socket* %26, i32 1)
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = call i32 @socket_lock(%struct.socket* %28, i32 0)
  %30 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %31 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %35 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %12
  %39 = load i32, i32* @UNP_DONTDISCONNECT, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %42 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %46 = call i32 @wakeup(%struct.unpcb* %45)
  br label %47

47:                                               ; preds = %38, %12
  br label %48

48:                                               ; preds = %47, %9
  ret void
}

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @wakeup(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
