; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_notify_pmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_input.c_ip6_notify_pmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, %struct.socket* }
%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.mbuf = type { i32 }
%struct.ip6_mtuinfo = type { %struct.sockaddr_in6, i32 }

@IN6P_MTU = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@IPV6_PATHMTU = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_notify_pmtu(%struct.inpcb* %0, %struct.sockaddr_in6* %1, i32* %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockaddr_in6*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ip6_mtuinfo, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockaddr_in6* %1, %struct.sockaddr_in6** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 2
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  store %struct.socket* %12, %struct.socket** %7, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IN6P_MTU, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %91

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %91

24:                                               ; preds = %20
  %25 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 1
  %27 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp eq %struct.TYPE_2__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.socket*, %struct.socket** %7, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IPPROTO_TCP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %29
  br label %91

43:                                               ; preds = %34, %24
  %44 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 1
  %46 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %50 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %49, i32 0, i32 1
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  %53 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %91

56:                                               ; preds = %48, %43
  %57 = call i32 @bzero(%struct.ip6_mtuinfo* %9, i32 8)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %9, i32 0, i32 0
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %63 = bitcast %struct.sockaddr_in6* %61 to i8*
  %64 = bitcast %struct.sockaddr_in6* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = getelementptr inbounds %struct.ip6_mtuinfo, %struct.ip6_mtuinfo* %9, i32 0, i32 0
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i64 @sa6_recoverscope(%struct.sockaddr_in6* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %91

70:                                               ; preds = %56
  %71 = ptrtoint %struct.ip6_mtuinfo* %9 to i32
  %72 = load i32, i32* @IPV6_PATHMTU, align 4
  %73 = load i32, i32* @IPPROTO_IPV6, align 4
  %74 = call %struct.mbuf* @sbcreatecontrol(i32 %71, i32 8, i32 %72, i32 %73)
  store %struct.mbuf* %74, %struct.mbuf** %8, align 8
  %75 = icmp eq %struct.mbuf* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %91

77:                                               ; preds = %70
  %78 = load %struct.socket*, %struct.socket** %7, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %5, align 8
  %81 = call i32 @SA(%struct.sockaddr_in6* %80)
  %82 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %83 = call i64 @sbappendaddr(i32* %79, i32 %81, i32* null, %struct.mbuf* %82, i32* null)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.socket*, %struct.socket** %7, align 8
  %90 = call i32 @sorwakeup(%struct.socket* %89)
  br label %91

91:                                               ; preds = %19, %23, %42, %55, %69, %76, %88, %85
  ret void
}

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

declare dso_local i32 @bzero(%struct.ip6_mtuinfo*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @sa6_recoverscope(%struct.sockaddr_in6*, i32) #1

declare dso_local %struct.mbuf* @sbcreatecontrol(i32, i32, i32, i32) #1

declare dso_local i64 @sbappendaddr(i32*, i32, i32*, %struct.mbuf*, i32*) #1

declare dso_local i32 @SA(%struct.sockaddr_in6*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
