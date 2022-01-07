; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_pcb.c_in6_pcbconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inpcb = type { i64, i64, %struct.TYPE_6__*, i32, i32, %struct.ifnet*, %struct.in6_addr, %struct.socket* }
%struct.TYPE_6__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }
%struct.socket = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.sockaddr_in6 = type { i64, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@SOF1_DNS_COUNTED = common dso_local global i32 0, align 4
@net_api_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_IFDENIED = common dso_local global i32 0, align 4
@WNT_RELEASE = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@INP_IN6ADDR_ANY = common dso_local global i32 0, align 4
@nstat_collect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_pcbconnect(%struct.inpcb* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.inpcb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = bitcast %struct.sockaddr* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.ifnet* null, %struct.ifnet** %11, align 8
  %16 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 7
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  store %struct.socket* %18, %struct.socket** %12, align 8
  %19 = load %struct.socket*, %struct.socket** %12, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_UDP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @htons(i32 53)
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.socket*, %struct.socket** %12, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SOF1_DNS_COUNTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @SOF1_DNS_COUNTED, align 4
  %41 = load %struct.socket*, %struct.socket** %12, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @net_api_stats, i32 0, i32 0), align 4
  %46 = call i32 @INC_ATOMIC_INT64_LIM(i32 %45)
  br label %47

47:                                               ; preds = %39, %32, %26, %3
  %48 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %50 = call i32 @in6_pcbladdr(%struct.inpcb* %48, %struct.sockaddr* %49, %struct.in6_addr* %7, %struct.ifnet** %11)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %54 = icmp ne %struct.ifnet* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %58 = call i64 @inp_restricted_send(%struct.inpcb* %56, %struct.ifnet* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.socket*, %struct.socket** %12, align 8
  %62 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %63 = load i32, i32* @SO_FILT_HINT_IFDENIED, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @soevent(%struct.socket* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55, %52
  br label %186

67:                                               ; preds = %47
  %68 = load %struct.socket*, %struct.socket** %12, align 8
  %69 = call i32 @socket_unlock(%struct.socket* %68, i32 0)
  %70 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %71 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 1
  %75 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 6
  %80 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %86

83:                                               ; preds = %67
  %84 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %85 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %84, i32 0, i32 6
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi %struct.in6_addr* [ %7, %82 ], [ %85, %83 ]
  %88 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %89 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call %struct.inpcb* @in6_pcblookup_hash(%struct.TYPE_6__* %72, i32* %74, i64 %77, %struct.in6_addr* %87, i64 %90, i32 0, i32* null)
  store %struct.inpcb* %91, %struct.inpcb** %9, align 8
  %92 = load %struct.socket*, %struct.socket** %12, align 8
  %93 = call i32 @socket_lock(%struct.socket* %92, i32 0)
  %94 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %95 = icmp ne %struct.inpcb* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %98 = load i32, i32* @WNT_RELEASE, align 4
  %99 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %100 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %101 = icmp eq %struct.inpcb* %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = call i32 @in_pcb_checkstate(%struct.inpcb* %97, i32 %98, i32 %103)
  %105 = load i32, i32* @EADDRINUSE, align 4
  store i32 %105, i32* %10, align 4
  br label %186

106:                                              ; preds = %86
  %107 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %108 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %107, i32 0, i32 6
  %109 = call i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %113 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %118 = load %struct.proc*, %struct.proc** %6, align 8
  %119 = call i32 @in6_pcbbind(%struct.inpcb* %117, i32* null, %struct.proc* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %186

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %111
  %125 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %126 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %125, i32 0, i32 6
  %127 = bitcast %struct.in6_addr* %126 to i8*
  %128 = bitcast %struct.in6_addr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 4 %128, i64 4, i1 false)
  %129 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %130 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %131 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %130, i32 0, i32 5
  store %struct.ifnet* %129, %struct.ifnet** %131, align 8
  %132 = load i32, i32* @INP_IN6ADDR_ANY, align 4
  %133 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %134 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %124, %106
  %138 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %139 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @lck_rw_try_lock_exclusive(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %137
  %146 = load %struct.socket*, %struct.socket** %12, align 8
  %147 = call i32 @socket_unlock(%struct.socket* %146, i32 0)
  %148 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %149 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @lck_rw_lock_exclusive(i32 %152)
  %154 = load %struct.socket*, %struct.socket** %12, align 8
  %155 = call i32 @socket_lock(%struct.socket* %154, i32 0)
  br label %156

156:                                              ; preds = %145, %137
  %157 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %158 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %161 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %163 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %166 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* @nstat_collect, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %156
  %170 = load %struct.socket*, %struct.socket** %12, align 8
  %171 = call i64 @SOCK_PROTO(%struct.socket* %170)
  %172 = load i64, i64* @IPPROTO_UDP, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %176 = call i32 @nstat_pcb_invalidate_cache(%struct.inpcb* %175)
  br label %177

177:                                              ; preds = %174, %169, %156
  %178 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %179 = call i32 @in_pcbrehash(%struct.inpcb* %178)
  %180 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %181 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @lck_rw_done(i32 %184)
  br label %186

186:                                              ; preds = %177, %122, %96, %66
  %187 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %188 = icmp ne %struct.ifnet* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %191 = call i32 @ifnet_release(%struct.ifnet* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %10, align 4
  ret i32 %193
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @INC_ATOMIC_INT64_LIM(i32) #1

declare dso_local i32 @in6_pcbladdr(%struct.inpcb*, %struct.sockaddr*, %struct.in6_addr*, %struct.ifnet**) #1

declare dso_local i64 @inp_restricted_send(%struct.inpcb*, %struct.ifnet*) #1

declare dso_local i32 @soevent(%struct.socket*, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local %struct.inpcb* @in6_pcblookup_hash(%struct.TYPE_6__*, i32*, i64, %struct.in6_addr*, i64, i32, i32*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(%struct.in6_addr*) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #1

declare dso_local i32 @in6_pcbbind(%struct.inpcb*, i32*, %struct.proc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i64 @SOCK_PROTO(%struct.socket*) #1

declare dso_local i32 @nstat_pcb_invalidate_cache(%struct.inpcb*) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @ifnet_release(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
