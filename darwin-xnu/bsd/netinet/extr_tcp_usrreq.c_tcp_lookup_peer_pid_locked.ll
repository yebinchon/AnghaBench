; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_lookup_peer_pid_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_usrreq.c_tcp_lookup_peer_pid_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i64 }
%struct.inpcb = type { i32, %struct.TYPE_2__*, %struct.in_addr, %struct.in_addr, %struct.in6_addr, %struct.in6_addr, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { i32 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@tcbinfo = common dso_local global i32 0, align 4
@WNT_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32*)* @tcp_lookup_peer_pid_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_lookup_peer_pid_locked(%struct.socket* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inpcb*, align 8
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca %struct.in6_addr, align 4
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca %struct.in_addr, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 -1, i32* %16, align 4
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SS_ISCONNECTED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOTCONN, align 4
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %2
  %26 = load %struct.socket*, %struct.socket** %4, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.inpcb*
  store %struct.inpcb* %29, %struct.inpcb** %7, align 8
  %30 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %31 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  store %struct.inpcb* null, %struct.inpcb** %10, align 8
  %36 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @INP_IPV6, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %25
  %43 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %44 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %43, i32 0, i32 5
  %45 = bitcast %struct.in6_addr* %11 to i8*
  %46 = bitcast %struct.in6_addr* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 4
  %49 = bitcast %struct.in6_addr* %12 to i8*
  %50 = bitcast %struct.in6_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 8 %50, i64 4, i1 false)
  br label %68

51:                                               ; preds = %25
  %52 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @INP_IPV4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %60 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %59, i32 0, i32 3
  %61 = bitcast %struct.in_addr* %13 to i8*
  %62 = bitcast %struct.in_addr* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %63, i32 0, i32 2
  %65 = bitcast %struct.in_addr* %14 to i8*
  %66 = bitcast %struct.in_addr* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 8 %66, i64 4, i1 false)
  br label %67

67:                                               ; preds = %58, %51
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.socket*, %struct.socket** %4, align 8
  %70 = call i32 @socket_unlock(%struct.socket* %69, i32 0)
  %71 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %72 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @INP_IPV6, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call %struct.inpcb* @in6_pcblookup_hash(i32* @tcbinfo, %struct.in6_addr* %11, i32 %78, %struct.in6_addr* %12, i32 %79, i32 0, i32* null)
  store %struct.inpcb* %80, %struct.inpcb** %10, align 8
  br label %97

81:                                               ; preds = %68
  %82 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %83 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @INP_IPV4, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.inpcb* @in_pcblookup_hash(i32* @tcbinfo, i32 %92, i32 %89, i32 %94, i32 %90, i32 0, i32* null)
  store %struct.inpcb* %95, %struct.inpcb** %10, align 8
  br label %96

96:                                               ; preds = %88, %81
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %99 = icmp ne %struct.inpcb* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %102 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %6, align 4
  %107 = load %struct.inpcb*, %struct.inpcb** %10, align 8
  %108 = load i32, i32* @WNT_RELEASE, align 4
  %109 = call i32 @in_pcb_checkstate(%struct.inpcb* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %100, %97
  %111 = load %struct.socket*, %struct.socket** %4, align 8
  %112 = call i32 @socket_lock(%struct.socket* %111, i32 0)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %110, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #2

declare dso_local %struct.inpcb* @in6_pcblookup_hash(i32*, %struct.in6_addr*, i32, %struct.in6_addr*, i32, i32, i32*) #2

declare dso_local %struct.inpcb* @in_pcblookup_hash(i32*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @in_pcb_checkstate(%struct.inpcb*, i32, i32) #2

declare dso_local i32 @socket_lock(%struct.socket*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
