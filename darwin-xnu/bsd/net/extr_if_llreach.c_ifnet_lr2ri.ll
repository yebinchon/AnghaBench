; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2ri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_lr2ri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_llreach = type { i32 }
%struct.rt_reach_info = type { i32, i32, i32, i32, i32, i32 }
%struct.if_llreach_info = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifnet_lr2ri(%struct.if_llreach* %0, %struct.rt_reach_info* %1) #0 {
  %3 = alloca %struct.if_llreach*, align 8
  %4 = alloca %struct.rt_reach_info*, align 8
  %5 = alloca %struct.if_llreach_info, align 4
  store %struct.if_llreach* %0, %struct.if_llreach** %3, align 8
  store %struct.rt_reach_info* %1, %struct.rt_reach_info** %4, align 8
  %6 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %7 = call i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach* %6)
  %8 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %9 = call i32 @bzero(%struct.rt_reach_info* %8, i32 24)
  %10 = load %struct.if_llreach*, %struct.if_llreach** %3, align 8
  %11 = call i32 @ifnet_lr2lri(%struct.if_llreach* %10, %struct.if_llreach_info* %5)
  %12 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %15 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %19 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %23 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %27 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %31 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.if_llreach_info, %struct.if_llreach_info* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rt_reach_info*, %struct.rt_reach_info** %4, align 8
  %35 = getelementptr inbounds %struct.rt_reach_info, %struct.rt_reach_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  ret void
}

declare dso_local i32 @IFLR_LOCK_ASSERT_HELD(%struct.if_llreach*) #1

declare dso_local i32 @bzero(%struct.rt_reach_info*, i32) #1

declare dso_local i32 @ifnet_lr2lri(%struct.if_llreach*, %struct.if_llreach_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
