; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_get_new_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_policy_get_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Allocate policy id failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.necp_session*)* @necp_policy_get_new_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @necp_policy_get_new_id(%struct.necp_session* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.necp_session*, align 8
  %4 = alloca i64, align 8
  store %struct.necp_session* %0, %struct.necp_session** %3, align 8
  %5 = load %struct.necp_session*, %struct.necp_session** %3, align 8
  %6 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.necp_session*, %struct.necp_session** %3, align 8
  %10 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.necp_session*, %struct.necp_session** %3, align 8
  %15 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.necp_session*, %struct.necp_session** %3, align 8
  %18 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = call i32 @NECPLOG0(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
