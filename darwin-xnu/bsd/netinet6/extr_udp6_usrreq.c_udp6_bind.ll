; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_bind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_udp6_usrreq.c_udp6_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.proc = type { i32 }
%struct.inpcb = type { i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, %struct.proc*)* @udp6_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_bind(%struct.socket* %0, %struct.sockaddr* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = call %struct.inpcb* @sotoinpcb(%struct.socket* %12)
  store %struct.inpcb* %13, %struct.inpcb** %8, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %15 = icmp eq %struct.inpcb* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %82

18:                                               ; preds = %3
  %19 = load i32, i32* @INP_IPV4, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @INP_IPV6, align 4
  %26 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %31 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IN6P_IPV6_V6ONLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %18
  %37 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %38 = bitcast %struct.sockaddr* %37 to i8*
  %39 = bitcast i8* %38 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %39, %struct.sockaddr_in6** %10, align 8
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @INP_IPV4, align 4
  %46 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %75

50:                                               ; preds = %36
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  %53 = call i64 @IN6_IS_ADDR_V4MAPPED(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %57 = call i32 @in6_sin6_2_sin(%struct.sockaddr_in* %11, %struct.sockaddr_in6* %56)
  %58 = load i32, i32* @INP_IPV4, align 4
  %59 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %60 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @INP_IPV6, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %70 = bitcast %struct.sockaddr_in* %11 to %struct.sockaddr*
  %71 = load %struct.proc*, %struct.proc** %7, align 8
  %72 = call i32 @in_pcbbind(%struct.inpcb* %69, %struct.sockaddr* %70, %struct.proc* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74, %44
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %79 = load %struct.proc*, %struct.proc** %7, align 8
  %80 = call i32 @in6_pcbbind(%struct.inpcb* %77, %struct.sockaddr* %78, %struct.proc* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %55, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(i32*) #1

declare dso_local i32 @in6_sin6_2_sin(%struct.sockaddr_in*, %struct.sockaddr_in6*) #1

declare dso_local i32 @in_pcbbind(%struct.inpcb*, %struct.sockaddr*, %struct.proc*) #1

declare dso_local i32 @in6_pcbbind(%struct.inpcb*, %struct.sockaddr*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
