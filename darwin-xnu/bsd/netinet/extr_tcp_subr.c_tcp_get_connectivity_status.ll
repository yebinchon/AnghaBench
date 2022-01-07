; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_get_connectivity_status.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_get_connectivity_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_conn_status = type { i32, i32, i32, i32 }

@TCP_CONNECTIVITY_PROBES_MAX = common dso_local global i64 0, align 8
@IFEF_PROBE_CONNECTIVITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_get_connectivity_status(%struct.tcpcb* %0, %struct.tcp_conn_status* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_conn_status*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_conn_status* %1, %struct.tcp_conn_status** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = icmp eq %struct.tcpcb* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %9 = icmp eq %struct.tcp_conn_status* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %67

11:                                               ; preds = %7
  %12 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %13 = call i32 @bzero(%struct.tcp_conn_status* %12, i32 16)
  %14 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_CONNECTIVITY_PROBES_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @TCPS_HAVEESTABLISHED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_conn_status, %struct.tcp_conn_status* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  br label %31

28:                                               ; preds = %19
  %29 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %30 = getelementptr inbounds %struct.tcp_conn_status, %struct.tcp_conn_status* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCP_CONNECTIVITY_PROBES_MAX, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %40 = getelementptr inbounds %struct.tcp_conn_status, %struct.tcp_conn_status* %39, i32 0, i32 2
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFEF_PROBE_CONNECTIVITY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.tcp_conn_status*, %struct.tcp_conn_status** %4, align 8
  %66 = getelementptr inbounds %struct.tcp_conn_status, %struct.tcp_conn_status* %65, i32 0, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %10, %64, %53, %46, %41
  ret void
}

declare dso_local i32 @bzero(%struct.tcp_conn_status*, i32) #1

declare dso_local i64 @TCPS_HAVEESTABLISHED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
