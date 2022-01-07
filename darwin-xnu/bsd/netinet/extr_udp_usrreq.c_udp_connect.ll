; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_udp_usrreq.c_udp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SOF1_CONNECT_COUNTED = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_connect(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.inpcb* @sotoinpcb(%struct.socket* %10)
  store %struct.inpcb* %11, %struct.inpcb** %8, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %13 = icmp eq %struct.inpcb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  %17 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INADDR_ANY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EISCONN, align 4
  store i32 %24, i32* %4, align 4
  br label %63

25:                                               ; preds = %16
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @SOF1_CONNECT_COUNTED, align 4
  %34 = load %struct.socket*, %struct.socket** %5, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @net_api_stats, i32 0, i32 0), align 4
  %39 = call i32 @INC_ATOMIC_INT64_LIM(i32 %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %43 = load %struct.proc*, %struct.proc** %7, align 8
  %44 = load i32, i32* @IFSCOPE_NONE, align 4
  %45 = call i32 @in_pcbconnect(%struct.inpcb* %41, %struct.sockaddr* %42, %struct.proc* %43, i32 %44, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = call i32 @soisconnected(%struct.socket* %49)
  %51 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %57 = call i64 @inp_calc_flowhash(%struct.inpcb* %56)
  %58 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %48
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %23, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @in_pcbconnect(%struct.inpcb*, %struct.sockaddr*, %struct.proc*, i32, i32*) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i64 @inp_calc_flowhash(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
