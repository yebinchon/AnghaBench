; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_mark_for_deletion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_mark_for_deletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_policy = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Marked NECP policy for removal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session*, %struct.necp_session_policy*)* @necp_policy_mark_for_deletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_mark_for_deletion(%struct.necp_session* %0, %struct.necp_session_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_session*, align 8
  %5 = alloca %struct.necp_session_policy*, align 8
  store %struct.necp_session* %0, %struct.necp_session** %4, align 8
  store %struct.necp_session_policy* %1, %struct.necp_session_policy** %5, align 8
  %6 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %7 = icmp eq %struct.necp_session* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %10 = icmp eq %struct.necp_session_policy* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %8
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.necp_session_policy*, %struct.necp_session_policy** %5, align 8
  %16 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = load %struct.necp_session*, %struct.necp_session** %4, align 8
  %19 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* @necp_debug, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @LOG_DEBUG, align 4
  %24 = call i32 @NECPLOG0(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
