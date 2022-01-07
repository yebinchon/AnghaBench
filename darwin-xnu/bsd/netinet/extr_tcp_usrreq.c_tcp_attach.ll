; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.proc = type { i32 }
%struct.tcpcb = type { i32 }
%struct.inpcb = type { i32, i32 }

@tcbinfo = common dso_local global i32 0, align 4
@tcp_sendspace = common dso_local global i32 0, align 4
@tcp_recvspace = common dso_local global i32 0, align 4
@SB_USRSIZE = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@nstat_collect = common dso_local global i64 0, align 8
@TCPS_CLOSED = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.proc*)* @tcp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_attach(%struct.socket* %0, %struct.proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = call i32 @in_pcballoc(%struct.socket* %10, i32* @tcbinfo, %struct.proc* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.socket*, %struct.socket** %4, align 8
  %19 = call %struct.inpcb* @sotoinpcb(%struct.socket* %18)
  store %struct.inpcb* %19, %struct.inpcb** %7, align 8
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25, %17
  %32 = load %struct.socket*, %struct.socket** %4, align 8
  %33 = load i32, i32* @tcp_sendspace, align 4
  %34 = load i32, i32* @tcp_recvspace, align 4
  %35 = call i32 @soreserve(%struct.socket* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.socket*, %struct.socket** %4, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.socket*, %struct.socket** %4, align 8
  %49 = call i32 @soreserve_preconnect(%struct.socket* %48, i32 2048)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.socket*, %struct.socket** %4, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SB_USRSIZE, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* @SB_AUTOSIZE, align 4
  %60 = load %struct.socket*, %struct.socket** %4, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %50
  %66 = load %struct.socket*, %struct.socket** %4, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SB_USRSIZE, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* @SB_AUTOSIZE, align 4
  %75 = load %struct.socket*, %struct.socket** %4, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %65
  %81 = load i32, i32* @INP_IPV4, align 4
  %82 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %87 = call %struct.tcpcb* @tcp_newtcpcb(%struct.inpcb* %86)
  store %struct.tcpcb* %87, %struct.tcpcb** %6, align 8
  %88 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %89 = icmp eq %struct.tcpcb* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %80
  %91 = load %struct.socket*, %struct.socket** %4, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SS_NOFDREF, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @SS_NOFDREF, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.socket*, %struct.socket** %4, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %103 = call i32 @in_pcbdetach(%struct.inpcb* %102)
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.socket*, %struct.socket** %4, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @ENOBUFS, align 4
  store i32 %109, i32* %3, align 4
  br label %120

110:                                              ; preds = %80
  %111 = load i64, i64* @nstat_collect, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %115 = call i32 @nstat_tcp_new_pcb(%struct.inpcb* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* @TCPS_CLOSED, align 4
  %118 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %119 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %90, %38, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*, %struct.proc*) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @soreserve_preconnect(%struct.socket*, i32) #1

declare dso_local %struct.tcpcb* @tcp_newtcpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @nstat_tcp_new_pcb(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
