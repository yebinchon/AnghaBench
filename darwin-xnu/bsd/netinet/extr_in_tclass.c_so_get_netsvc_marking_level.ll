; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_so_get_netsvc_marking_level.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_tclass.c_so_get_netsvc_marking_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ifnet = type { i32 }
%struct.inpcb = type { %struct.ifnet* }
%struct.in6pcb = type { %struct.ifnet* }

@NETSVC_MRKNG_UNKNOWN = common dso_local global i32 0, align 4
@IFEF_QOSMARKING_ENABLED = common dso_local global i32 0, align 4
@IFEF_QOSMARKING_CAPABLE = common dso_local global i32 0, align 4
@SOF1_QOSMARKING_ALLOWED = common dso_local global i32 0, align 4
@NETSVC_MRKNG_LVL_L3L2_ALL = common dso_local global i32 0, align 4
@NETSVC_MRKNG_LVL_L3L2_BK = common dso_local global i32 0, align 4
@NETSVC_MRKNG_LVL_L2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @so_get_netsvc_marking_level(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.in6pcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %7 = load i32, i32* @NETSVC_MRKNG_UNKNOWN, align 4
  store i32 %7, i32* %3, align 4
  store %struct.ifnet* null, %struct.ifnet** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = call i32 @SOCK_DOM(%struct.socket* %8)
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 128, label %20
  ]

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %5, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %4, align 8
  br label %19

19:                                               ; preds = %15, %10
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.socket*, %struct.socket** %2, align 8
  %22 = call %struct.in6pcb* @sotoin6pcb(%struct.socket* %21)
  store %struct.in6pcb* %22, %struct.in6pcb** %6, align 8
  %23 = load %struct.in6pcb*, %struct.in6pcb** %6, align 8
  %24 = icmp ne %struct.in6pcb* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.in6pcb*, %struct.in6pcb** %6, align 8
  %27 = getelementptr inbounds %struct.in6pcb, %struct.in6pcb* %26, i32 0, i32 0
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  store %struct.ifnet* %28, %struct.ifnet** %4, align 8
  br label %29

29:                                               ; preds = %25, %20
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %29, %19
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = icmp ne %struct.ifnet* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFEF_QOSMARKING_ENABLED, align 4
  %39 = load i32, i32* @IFEF_QOSMARKING_CAPABLE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* @IFEF_QOSMARKING_ENABLED, align 4
  %43 = load i32, i32* @IFEF_QOSMARKING_CAPABLE, align 4
  %44 = or i32 %42, %43
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load %struct.socket*, %struct.socket** %2, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SOF1_QOSMARKING_ALLOWED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @NETSVC_MRKNG_LVL_L3L2_ALL, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @NETSVC_MRKNG_LVL_L3L2_BK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %53
  br label %60

58:                                               ; preds = %34
  %59 = load i32, i32* @NETSVC_MRKNG_LVL_L2, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @SOCK_DOM(%struct.socket*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.in6pcb* @sotoin6pcb(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
