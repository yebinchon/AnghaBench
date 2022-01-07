; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_is_wifi_unusable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_is_wifi_unusable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mptses = type { i32 }

@MPTE_FIRSTPARTY = common dso_local global i32 0, align 4
@mptcp_advisory = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SYMPTOMS_ADVISORY_WIFI_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_is_wifi_unusable(%struct.mptses* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mptses*, align 8
  store %struct.mptses* %0, %struct.mptses** %3, align 8
  %4 = load %struct.mptses*, %struct.mptses** %3, align 8
  %5 = getelementptr inbounds %struct.mptses, %struct.mptses* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MPTE_FIRSTPARTY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mptcp_advisory, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mptcp_advisory, i32 0, i32 0), align 4
  %15 = load i32, i32* @SYMPTOMS_ADVISORY_WIFI_BAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mptcp_advisory, i32 0, i32 0), align 4
  %23 = load i32, i32* @SYMPTOMS_ADVISORY_WIFI_BAD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %20, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
