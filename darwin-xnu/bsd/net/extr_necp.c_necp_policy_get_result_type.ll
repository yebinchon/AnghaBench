; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_get_result_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_get_result_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session_policy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_session_policy*)* @necp_policy_get_result_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_policy_get_result_type(%struct.necp_session_policy* %0) #0 {
  %2 = alloca %struct.necp_session_policy*, align 8
  store %struct.necp_session_policy* %0, %struct.necp_session_policy** %2, align 8
  %3 = load %struct.necp_session_policy*, %struct.necp_session_policy** %2, align 8
  %4 = icmp ne %struct.necp_session_policy* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.necp_session_policy*, %struct.necp_session_policy** %2, align 8
  %7 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.necp_session_policy*, %struct.necp_session_policy** %2, align 8
  %10 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @necp_policy_result_get_type_from_buffer(i32 %8, i32 %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %12, %5 ], [ 0, %13 ]
  ret i32 %15
}

declare dso_local i32 @necp_policy_result_get_type_from_buffer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
