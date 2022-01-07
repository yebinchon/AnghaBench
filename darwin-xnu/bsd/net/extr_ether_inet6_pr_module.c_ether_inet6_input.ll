; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet6_pr_module.c_ether_inet6_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ether_inet6_pr_module.c_ether_inet6_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ether_header = type { i32*, i32*, i32 }
%struct.ifnet = type { i32 }
%struct.ip6aux = type { i64*, i32 }

@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@etherbroadcastaddr = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@etherip6allnodes = common dso_local global i32 0, align 4
@IP6A_HASEEN = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @ether_inet6_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_inet6_input(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ether_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.ip6aux*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.ether_header*
  store %struct.ether_header* %14, %struct.ether_header** %9, align 8
  %15 = load %struct.ether_header*, %struct.ether_header** %9, align 8
  %16 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %15, i32 0, i32 2
  %17 = call i32 @bcopy(i32* %16, i64* %10, i32 8)
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %20 = call i64 @htons(i32 %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.ifnet* @mbuf_pkthdr_rcvif(i32 %23)
  store %struct.ifnet* %24, %struct.ifnet** %11, align 8
  %25 = load %struct.ether_header*, %struct.ether_header** %9, align 8
  %26 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @etherbroadcastaddr, align 4
  %29 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %30 = call i64 @bcmp(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %34 = load %struct.ether_header*, %struct.ether_header** %9, align 8
  %35 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %38 = call i32 @nd6_llreach_set_reachable(%struct.ifnet* %33, i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load %struct.ether_header*, %struct.ether_header** %9, align 8
  %41 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @etherip6allnodes, align 4
  %44 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %45 = call i64 @bcmp(i32* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.ip6aux* @ip6_addaux(i32 %48)
  store %struct.ip6aux* %49, %struct.ip6aux** %12, align 8
  %50 = load %struct.ip6aux*, %struct.ip6aux** %12, align 8
  %51 = icmp ne %struct.ip6aux* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i32, i32* @IP6A_HASEEN, align 4
  %54 = load %struct.ip6aux*, %struct.ip6aux** %12, align 8
  %55 = getelementptr inbounds %struct.ip6aux, %struct.ip6aux* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.ether_header*, %struct.ether_header** %9, align 8
  %59 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.ip6aux*, %struct.ip6aux** %12, align 8
  %62 = getelementptr inbounds %struct.ip6aux, %struct.ip6aux* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %65 = call i32 @bcopy(i32* %60, i64* %63, i32 %64)
  br label %66

66:                                               ; preds = %52, %47
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @proto_input(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @m_freem(i32 %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %79

76:                                               ; preds = %4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @m_freem(i32 %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* @EJUSTRETURN, align 4
  ret i32 %80
}

declare dso_local i32 @bcopy(i32*, i64*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.ifnet* @mbuf_pkthdr_rcvif(i32) #1

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @nd6_llreach_set_reachable(%struct.ifnet*, i32*, i32) #1

declare dso_local %struct.ip6aux* @ip6_addaux(i32) #1

declare dso_local i64 @proto_input(i32, i32) #1

declare dso_local i32 @m_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
