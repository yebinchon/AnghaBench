; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_route_copyout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inp_route_copyout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.route }
%struct.route = type { i32 }
%struct.TYPE_2__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inp_route_copyout(%struct.inpcb* %0, %struct.route* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.route*, align 8
  %5 = alloca %struct.route*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.route* %1, %struct.route** %4, align 8
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %6, i32 0, i32 1
  store %struct.route* %7, %struct.route** %5, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @socket_lock_assert_owned(i32 %10)
  %12 = load %struct.route*, %struct.route** %5, align 8
  %13 = call i64 @ROUTE_UNUSABLE(%struct.route* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.route*, %struct.route** %5, align 8
  %17 = getelementptr inbounds %struct.route, %struct.route* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @rt_key(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AF_INET, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15, %2
  %25 = load %struct.route*, %struct.route** %5, align 8
  %26 = call i32 @ROUTE_RELEASE(%struct.route* %25)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.route*, %struct.route** %4, align 8
  %29 = load %struct.route*, %struct.route** %5, align 8
  %30 = call i32 @route_copyout(%struct.route* %28, %struct.route* %29, i32 4)
  ret void
}

declare dso_local i32 @socket_lock_assert_owned(i32) #1

declare dso_local i64 @ROUTE_UNUSABLE(%struct.route*) #1

declare dso_local %struct.TYPE_2__* @rt_key(i32) #1

declare dso_local i32 @ROUTE_RELEASE(%struct.route*) #1

declare dso_local i32 @route_copyout(%struct.route*, %struct.route*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
