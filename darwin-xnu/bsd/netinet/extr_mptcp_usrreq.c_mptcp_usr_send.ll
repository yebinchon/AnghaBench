; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i64 }
%struct.proc = type { i32 }
%struct.mppcb = type { i64 }
%struct.mptses = type { i32 }

@PRUS_OOB = common dso_local global i32 0, align 4
@PRUS_EOF = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MPPCB_STATE_DEAD = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SOF1_PRECONNECT_DATA = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SB_NOCOMPRESS = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* @mptcp_usr_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.mppcb*, align 8
  %14 = alloca %struct.mptses*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.proc* %5, %struct.proc** %12, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = call %struct.mppcb* @mpsotomppcb(%struct.socket* %16)
  store %struct.mppcb* %17, %struct.mppcb** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PRUS_OOB, align 4
  %20 = load i32, i32* @PRUS_EOF, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %15, align 4
  br label %116

26:                                               ; preds = %6
  %27 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %28 = icmp ne %struct.sockaddr* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %30, i32* %15, align 4
  br label %116

31:                                               ; preds = %26
  %32 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %33 = icmp ne %struct.mbuf* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %40, i32* %15, align 4
  br label %116

41:                                               ; preds = %34, %31
  %42 = load %struct.mppcb*, %struct.mppcb** %13, align 8
  %43 = icmp eq %struct.mppcb* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.mppcb*, %struct.mppcb** %13, align 8
  %46 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MPPCB_STATE_DEAD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %41
  %51 = load i32, i32* @ECONNRESET, align 4
  store i32 %51, i32* %15, align 4
  br label %116

52:                                               ; preds = %44
  %53 = load %struct.mppcb*, %struct.mppcb** %13, align 8
  %54 = call %struct.mptses* @mptompte(%struct.mppcb* %53)
  store %struct.mptses* %54, %struct.mptses** %14, align 8
  %55 = load %struct.mptses*, %struct.mptses** %14, align 8
  %56 = icmp ne %struct.mptses* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load %struct.socket*, %struct.socket** %7, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SS_ISCONNECTED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %52
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SOF1_PRECONNECT_DATA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOTCONN, align 4
  store i32 %73, i32* %15, align 4
  br label %116

74:                                               ; preds = %65, %52
  %75 = load %struct.mppcb*, %struct.mppcb** %13, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %77 = call i32 @mptcp_insert_dsn(%struct.mppcb* %75, %struct.mbuf* %76)
  %78 = load %struct.socket*, %struct.socket** %7, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @SB_NOCOMPRESS, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @VERIFY(i32 %83)
  %85 = load %struct.socket*, %struct.socket** %7, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 2
  %87 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %88 = call i32 @sbappendstream(%struct.TYPE_3__* %86, %struct.mbuf* %87)
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %89 = load %struct.mptses*, %struct.mptses** %14, align 8
  %90 = call i32 @mptcp_output(%struct.mptses* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  br label %116

94:                                               ; preds = %74
  %95 = load %struct.socket*, %struct.socket** %7, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SS_ISCONNECTING, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %94
  %102 = load %struct.socket*, %struct.socket** %7, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SS_NBIO, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %109, i32* %15, align 4
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.socket*, %struct.socket** %7, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 2
  %113 = call i32 @sbwait(%struct.TYPE_3__* %112)
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %110, %108
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %93, %72, %50, %39, %29, %24
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %121 = icmp ne %struct.mbuf* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = call i32 @m_freem(%struct.mbuf* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %127 = icmp ne %struct.mbuf* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %130 = call i32 @m_freem(%struct.mbuf* %129)
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i32, i32* %15, align 4
  ret i32 %133
}

declare dso_local %struct.mppcb* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.mptses* @mptompte(%struct.mppcb*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mptcp_insert_dsn(%struct.mppcb*, %struct.mbuf*) #1

declare dso_local i32 @sbappendstream(%struct.TYPE_3__*, %struct.mbuf*) #1

declare dso_local i32 @mptcp_output(%struct.mptses*) #1

declare dso_local i32 @sbwait(%struct.TYPE_3__*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
