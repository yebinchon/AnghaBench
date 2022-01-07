; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_ctloutput.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockopt*)* }
%struct.socket = type { i32, i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32 }
%struct.sockopt = type { i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.socket*, %struct.sockopt*)* }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@SO_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@SOPT_SET = common dso_local global i64 0, align 8
@FLOW_DIVERT_CONNECT_STARTED = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@g_tcp_protosw = common dso_local global %struct.TYPE_3__* null, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@g_tcp6_protosw = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*)* @flow_divert_ctloutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 2
  %9 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %8, align 8
  store %struct.flow_divert_pcb* %9, %struct.flow_divert_pcb** %6, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 2
  %19 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %18, align 8
  %20 = icmp ne %struct.flow_divert_pcb* %19, null
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %26 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SO_TRAFFIC_CLASS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %21
  %31 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %32 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOPT_SET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %6, align 8
  %38 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %6, align 8
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @flow_divert_send_traffic_class_update(%struct.flow_divert_pcb* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %36, %30
  br label %50

50:                                               ; preds = %49, %21
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = call i64 @SOCK_DOM(%struct.socket* %51)
  %53 = load i64, i64* @PF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_tcp_protosw, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.socket*, %struct.sockopt*)*, i32 (%struct.socket*, %struct.sockopt*)** %57, align 8
  %59 = load %struct.socket*, %struct.socket** %4, align 8
  %60 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %61 = call i32 %58(%struct.socket* %59, %struct.sockopt* %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @flow_divert_send_traffic_class_update(%struct.flow_divert_pcb*, i32) #1

declare dso_local i64 @SOCK_DOM(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
