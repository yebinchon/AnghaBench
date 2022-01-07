; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_valid_mpcapable_common_opt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_valid_mpcapable_common_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcp_mpcapable_opt_common = type { i32 }

@MPCAP_PROPOSAL_SBIT = common dso_local global i32 0, align 4
@MPCAP_BBIT = common dso_local global i32 0, align 4
@MPCAP_CBIT = common dso_local global i32 0, align 4
@MPCAP_DBIT = common dso_local global i32 0, align 4
@MPCAP_EBIT = common dso_local global i32 0, align 4
@MPCAP_FBIT = common dso_local global i32 0, align 4
@MPCAP_GBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mptcp_valid_mpcapable_common_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_valid_mpcapable_common_opt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mptcp_mpcapable_opt_common*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = bitcast i32* %5 to %struct.mptcp_mpcapable_opt_common*
  store %struct.mptcp_mpcapable_opt_common* %6, %struct.mptcp_mpcapable_opt_common** %4, align 8
  %7 = load %struct.mptcp_mpcapable_opt_common*, %struct.mptcp_mpcapable_opt_common** %4, align 8
  %8 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MPCAP_PROPOSAL_SBIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.mptcp_mpcapable_opt_common*, %struct.mptcp_mpcapable_opt_common** %4, align 8
  %16 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MPCAP_BBIT, align 4
  %19 = load i32, i32* @MPCAP_CBIT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MPCAP_DBIT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MPCAP_EBIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MPCAP_FBIT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MPCAP_GBIT, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %17, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
