; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_return_subflow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_return_subflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptsub = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mptsub* (%struct.mptsub*)* @mptcp_return_subflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mptsub* @mptcp_return_subflow(%struct.mptsub* %0) #0 {
  %2 = alloca %struct.mptsub*, align 8
  %3 = alloca %struct.mptsub*, align 8
  store %struct.mptsub* %0, %struct.mptsub** %3, align 8
  %4 = load %struct.mptsub*, %struct.mptsub** %3, align 8
  %5 = icmp ne %struct.mptsub* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.mptsub*, %struct.mptsub** %3, align 8
  %8 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @mptcp_subflow_cwnd_space(i32 %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store %struct.mptsub* null, %struct.mptsub** %2, align 8
  br label %15

13:                                               ; preds = %6, %1
  %14 = load %struct.mptsub*, %struct.mptsub** %3, align 8
  store %struct.mptsub* %14, %struct.mptsub** %2, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = load %struct.mptsub*, %struct.mptsub** %2, align 8
  ret %struct.mptsub* %16
}

declare dso_local i64 @mptcp_subflow_cwnd_space(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
