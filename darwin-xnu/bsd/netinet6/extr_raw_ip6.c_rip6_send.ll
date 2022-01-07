; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_raw_ip6.c_rip6_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32 }
%struct.sockaddr_in6 = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.mbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.proc*)* @rip6_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rip6_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.proc* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca %struct.inpcb*, align 8
  %15 = alloca %struct.sockaddr_in6, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %11, align 8
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store %struct.proc* %5, %struct.proc** %13, align 8
  %18 = load %struct.socket*, %struct.socket** %8, align 8
  %19 = call %struct.inpcb* @sotoinpcb(%struct.socket* %18)
  store %struct.inpcb* %19, %struct.inpcb** %14, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %21 = bitcast %struct.sockaddr* %20 to i8*
  %22 = bitcast i8* %21 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %16, align 8
  store i32 0, i32* %17, align 4
  %23 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %24 = icmp eq %struct.inpcb* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %27 = icmp eq %struct.inpcb* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %17, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %31, i32* %17, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %71

33:                                               ; preds = %6
  %34 = load %struct.socket*, %struct.socket** %8, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SS_ISCONNECTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %42 = icmp ne %struct.sockaddr* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @EISCONN, align 4
  store i32 %44, i32* %17, align 4
  br label %71

45:                                               ; preds = %40
  %46 = call i32 @bzero(%struct.sockaddr_in6* %15, i32 24)
  %47 = load i32, i32* @AF_INET6, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 0
  store i32 24, i32* %49, align 8
  %50 = load %struct.inpcb*, %struct.inpcb** %14, align 8
  %51 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %15, i32 0, i32 2
  %53 = call i32 @bcopy(i32* %51, i32* %52, i32 4)
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %16, align 8
  br label %65

54:                                               ; preds = %33
  %55 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %56 = icmp eq %struct.sockaddr* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOTCONN, align 4
  store i32 %58, i32* %17, align 4
  br label %71

59:                                               ; preds = %54
  %60 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %61 = bitcast %struct.sockaddr* %60 to i8*
  %62 = bitcast i8* %61 to %struct.sockaddr_in6*
  %63 = bitcast %struct.sockaddr_in6* %15 to i8*
  %64 = bitcast %struct.sockaddr_in6* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %16, align 8
  br label %65

65:                                               ; preds = %59, %45
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = load %struct.socket*, %struct.socket** %8, align 8
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %70 = call i32 @rip6_output(%struct.mbuf* %66, %struct.socket* %67, %struct.sockaddr_in6* %68, %struct.mbuf* %69, i32 1)
  store i32 %70, i32* %7, align 4
  br label %89

71:                                               ; preds = %57, %43, %32
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  %76 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %77 = icmp ne %struct.mbuf* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %80 = call i32 @m_freem(%struct.mbuf* %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %83 = icmp ne %struct.mbuf* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %86 = call i32 @m_freem(%struct.mbuf* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %65
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @bzero(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rip6_output(%struct.mbuf*, %struct.socket*, %struct.sockaddr_in6*, %struct.mbuf*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
