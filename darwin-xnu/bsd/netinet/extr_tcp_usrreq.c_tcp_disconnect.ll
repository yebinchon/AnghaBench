; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@SO_LINGER = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@TMPF_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcpcb* (%struct.tcpcb*)* @tcp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcpcb* @tcp_disconnect(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %9, %struct.socket** %4, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %1
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %21, i32 0)
  store %struct.tcpcb* %22, %struct.tcpcb** %2, align 8
  br label %64

23:                                               ; preds = %15
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %31 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %30)
  store %struct.tcpcb* %31, %struct.tcpcb** %3, align 8
  br label %62

32:                                               ; preds = %23
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SO_LINGER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.socket*, %struct.socket** %4, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %46 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %45, i32 0)
  store %struct.tcpcb* %46, %struct.tcpcb** %3, align 8
  br label %61

47:                                               ; preds = %39, %32
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = call i32 @soisdisconnecting(%struct.socket* %48)
  %50 = load %struct.socket*, %struct.socket** %4, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 3
  %52 = call i32 @sbflush(%struct.TYPE_4__* %51)
  %53 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %54 = call %struct.tcpcb* @tcp_usrclosed(%struct.tcpcb* %53)
  store %struct.tcpcb* %54, %struct.tcpcb** %3, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %56 = icmp ne %struct.tcpcb* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %59 = call i32 @tcp_output(%struct.tcpcb* %58)
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  store %struct.tcpcb* %63, %struct.tcpcb** %2, align 8
  br label %64

64:                                               ; preds = %62, %20
  %65 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  ret %struct.tcpcb* %65
}

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @soisdisconnecting(%struct.socket*) #1

declare dso_local i32 @sbflush(%struct.TYPE_4__*) #1

declare dso_local %struct.tcpcb* @tcp_usrclosed(%struct.tcpcb*) #1

declare dso_local i32 @tcp_output(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
