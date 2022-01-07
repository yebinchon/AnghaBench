; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_tcp6flg_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_tcp6flg_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.ip6_fw = type { i32, i32, i32 }

@IPV6_FW_IF_TCPEST = common dso_local global i32 0, align 4
@IPV6_FW_TCPF_RST = common dso_local global i32 0, align 4
@IPV6_FW_TCPF_ACK = common dso_local global i32 0, align 4
@IPV6_FW_TCPF_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, %struct.ip6_fw*)* @tcp6flg_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp6flg_match(%struct.tcphdr* %0, %struct.ip6_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.ip6_fw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %4, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %5, align 8
  %8 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %9 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IPV6_FW_IF_TCPEST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPV6_FW_TCPF_RST, align 4
  %19 = load i32, i32* @IPV6_FW_TCPF_ACK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IPV6_FW_TCPF_SYN, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = load i32, i32* @IPV6_FW_TCPF_SYN, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %14, %2
  %28 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %32 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %36 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %39 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %44 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %53

48:                                               ; preds = %27
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %47, %26
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
