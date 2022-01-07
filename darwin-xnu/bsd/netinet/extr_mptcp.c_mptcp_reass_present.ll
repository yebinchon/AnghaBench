; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_reass_present.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_reass_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mptcb = type { i64, i64, i32, i32, i32 }
%struct.tseg_qent = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mptcb* }

@MPTCPS_ESTABLISHED = common dso_local global i64 0, align 8
@MPTCPF_REASS_INPROG = common dso_local global i32 0, align 4
@tqe_q = common dso_local global i32 0, align 4
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@PKTF_MPTCP_DFIN = common dso_local global i32 0, align 4
@tcp_reass_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @mptcp_reass_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_reass_present(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.mptcb*, align 8
  %5 = alloca %struct.tseg_qent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.TYPE_9__* @mpsotomppcb(%struct.socket* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.mptcb*, %struct.mptcb** %12, align 8
  store %struct.mptcb* %13, %struct.mptcb** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %15 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MPTCPS_ESTABLISHED, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %139

21:                                               ; preds = %1
  %22 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %23 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %22, i32 0, i32 3
  %24 = call %struct.tseg_qent* @LIST_FIRST(i32* %23)
  store %struct.tseg_qent* %24, %struct.tseg_qent** %5, align 8
  %25 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %26 = icmp ne %struct.tseg_qent* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %29 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %35 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %27, %21
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %139

40:                                               ; preds = %27
  %41 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %42 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MPTCPF_REASS_INPROG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %139

49:                                               ; preds = %40
  %50 = load i32, i32* @MPTCPF_REASS_INPROG, align 4
  %51 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %52 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %123, %49
  %56 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %57 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %60 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %64 = load i32, i32* @tqe_q, align 4
  %65 = call i32 @LIST_REMOVE(%struct.tseg_qent* %63, i32 %64)
  %66 = load %struct.socket*, %struct.socket** %3, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SS_CANTRCVMORE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %74 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @m_freem(%struct.TYPE_8__* %75)
  br label %98

77:                                               ; preds = %55
  %78 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %79 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PKTF_MPTCP_DFIN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load %struct.socket*, %struct.socket** %3, align 8
  %91 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %92 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i64 @sbappendstream_rcvdemux(%struct.socket* %90, %struct.TYPE_8__* %93, i32 0, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i32, i32* @tcp_reass_zone, align 4
  %100 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %101 = call i32 @zfree(i32 %99, %struct.tseg_qent* %100)
  %102 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %103 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %107 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %106, i32 0, i32 3
  %108 = call %struct.tseg_qent* @LIST_FIRST(i32* %107)
  store %struct.tseg_qent* %108, %struct.tseg_qent** %5, align 8
  br label %109

109:                                              ; preds = %98
  %110 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %111 = icmp ne %struct.tseg_qent* %110, null
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.tseg_qent*, %struct.tseg_qent** %5, align 8
  %114 = getelementptr inbounds %struct.tseg_qent, %struct.tseg_qent* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %120 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br label %123

123:                                              ; preds = %112, %109
  %124 = phi i1 [ false, %109 ], [ %122, %112 ]
  br i1 %124, label %55, label %125

125:                                              ; preds = %123
  %126 = load i32, i32* @MPTCPF_REASS_INPROG, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.mptcb*, %struct.mptcb** %4, align 8
  %129 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.socket*, %struct.socket** %3, align 8
  %136 = call i32 @sorwakeup(%struct.socket* %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %47, %38, %19
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_9__* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.tseg_qent* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.tseg_qent*, i32) #1

declare dso_local i32 @m_freem(%struct.TYPE_8__*) #1

declare dso_local i64 @sbappendstream_rcvdemux(%struct.socket*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @zfree(i32, %struct.tseg_qent*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
