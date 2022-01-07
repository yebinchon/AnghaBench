; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_sosend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_subflow_sosend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.socket = type { i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)* }
%struct.sockaddr = type { i32 }
%struct.uio = type { i32 }
%struct.mbuf = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.inpcb = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@PKTF_MPTCP = common dso_local global i32 0, align 4
@ENTR_SHOULDTRACE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@kEnTrActKernSockWrite = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@kEnTrFlagNonBlocking = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.proc* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@kEnTrFlagNoWork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.uio*, %struct.mbuf*, %struct.mbuf*, i32)* @mptcp_subflow_sosend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_subflow_sosend(%struct.socket* %0, %struct.sockaddr* %1, %struct.uio* %2, %struct.mbuf* %3, %struct.mbuf* %4, i32 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.proc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.uio* %2, %struct.uio** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = call i32 @sototcpcb(%struct.socket* %21)
  %23 = call %struct.TYPE_14__* @tptomptp(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.socket* @mptetoso(i32 %25)
  store %struct.socket* %26, %struct.socket** %13, align 8
  %27 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %27, %struct.proc** %14, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %16, align 8
  store i32 1, i32* %18, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %35 = icmp eq %struct.sockaddr* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @VERIFY(i32 %36)
  %38 = load %struct.uio*, %struct.uio** %9, align 8
  %39 = icmp eq %struct.uio* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @VERIFY(i32 %44)
  %46 = load %struct.socket*, %struct.socket** %7, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %55 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %6
  %60 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UINT16_MAX, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %59, %6
  %67 = phi i1 [ false, %6 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PKTF_MPTCP, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @VERIFY(i32 %75)
  %77 = load i64, i64* @ENTR_SHOULDTRACE, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %129

79:                                               ; preds = %66
  %80 = load %struct.socket*, %struct.socket** %7, align 8
  %81 = load i32, i32* @AF_INET, align 4
  %82 = call i64 @SOCK_CHECK_DOM(%struct.socket* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load %struct.socket*, %struct.socket** %7, align 8
  %86 = load i32, i32* @AF_INET6, align 4
  %87 = call i64 @SOCK_CHECK_DOM(%struct.socket* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %84, %79
  %90 = load %struct.socket*, %struct.socket** %7, align 8
  %91 = call %struct.inpcb* @sotoinpcb(%struct.socket* %90)
  store %struct.inpcb* %91, %struct.inpcb** %20, align 8
  %92 = load %struct.inpcb*, %struct.inpcb** %20, align 8
  %93 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %89
  %97 = load %struct.inpcb*, %struct.inpcb** %20, align 8
  %98 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFF_LOOPBACK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %96
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %15, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* @kEnTrActKernSockWrite, align 4
  %112 = load i32, i32* @DBG_FUNC_START, align 4
  %113 = load %struct.socket*, %struct.socket** %7, align 8
  %114 = call i32 @VM_KERNEL_ADDRPERM(%struct.socket* %113)
  %115 = load %struct.socket*, %struct.socket** %7, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SS_NBIO, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i32, i32* @kEnTrFlagNonBlocking, align 4
  br label %124

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = load i32, i32* %17, align 4
  %127 = call i32 @KERNEL_ENERGYTRACE(i32 %111, i32 %112, i32 %114, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %96, %89
  br label %129

129:                                              ; preds = %128, %84, %66
  %130 = load %struct.socket*, %struct.socket** %7, align 8
  %131 = load %struct.socket*, %struct.socket** %13, align 8
  %132 = call i32 @mptcp_update_last_owner(%struct.socket* %130, %struct.socket* %131)
  %133 = load %struct.socket*, %struct.socket** %13, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.proc*, %struct.proc** %14, align 8
  %137 = call i64 @proc_pid(%struct.proc* %136)
  %138 = icmp ne i64 %135, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %129
  %140 = load %struct.socket*, %struct.socket** %13, align 8
  %141 = getelementptr inbounds %struct.socket, %struct.socket* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = call %struct.proc* @proc_find(i64 %142)
  store %struct.proc* %143, %struct.proc** %14, align 8
  %144 = load %struct.proc*, %struct.proc** %14, align 8
  %145 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %146 = icmp eq %struct.proc* %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %148, %struct.proc** %14, align 8
  br label %151

149:                                              ; preds = %139
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %151, %129
  %153 = load %struct.proc*, %struct.proc** %14, align 8
  %154 = getelementptr inbounds %struct.proc, %struct.proc* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = call i32 @OSIncrementAtomicLong(i32* %157)
  %159 = load %struct.socket*, %struct.socket** %7, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %161 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @sosendcheck(%struct.socket* %159, i32* null, i32 %163, i32 0, i32 1, i32 0, i32* %18, i32* null)
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %152
  br label %180

168:                                              ; preds = %152
  %169 = load %struct.socket*, %struct.socket** %7, align 8
  %170 = getelementptr inbounds %struct.socket, %struct.socket* %169, i32 0, i32 3
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)*, i32 (%struct.socket*, i32, %struct.mbuf*, i32*, i32*, %struct.proc*)** %174, align 8
  %176 = load %struct.socket*, %struct.socket** %7, align 8
  %177 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %178 = load %struct.proc*, %struct.proc** %14, align 8
  %179 = call i32 %175(%struct.socket* %176, i32 0, %struct.mbuf* %177, i32* null, i32* null, %struct.proc* %178)
  store i32 %179, i32* %19, align 4
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  br label %180

180:                                              ; preds = %168, %167
  %181 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %182 = icmp ne %struct.mbuf* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %185 = call i32 @m_freem(%struct.mbuf* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i64, i64* %16, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.proc*, %struct.proc** %14, align 8
  %191 = call i32 @proc_rele(%struct.proc* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.socket*, %struct.socket** %7, align 8
  %194 = call i32 @soclearfastopen(%struct.socket* %193)
  %195 = load i64, i64* %15, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load i32, i32* @kEnTrActKernSockWrite, align 4
  %199 = load i32, i32* @DBG_FUNC_END, align 4
  %200 = load %struct.socket*, %struct.socket** %7, align 8
  %201 = call i32 @VM_KERNEL_ADDRPERM(%struct.socket* %200)
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* @EWOULDBLOCK, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %197
  %206 = load i32, i32* @kEnTrFlagNoWork, align 4
  br label %208

207:                                              ; preds = %197
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %206, %205 ], [ 0, %207 ]
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @KERNEL_ENERGYTRACE(i32 %198, i32 %199, i32 %201, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %192
  %213 = load i32, i32* %19, align 4
  ret i32 %213
}

declare dso_local %struct.socket* @mptetoso(i32) #1

declare dso_local %struct.TYPE_14__* @tptomptp(i32) #1

declare dso_local i32 @sototcpcb(%struct.socket*) #1

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @SOCK_CHECK_DOM(%struct.socket*, i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KERNEL_ENERGYTRACE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @mptcp_update_last_owner(%struct.socket*, %struct.socket*) #1

declare dso_local i64 @proc_pid(%struct.proc*) #1

declare dso_local %struct.proc* @proc_find(i64) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @sosendcheck(%struct.socket*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

declare dso_local i32 @soclearfastopen(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
