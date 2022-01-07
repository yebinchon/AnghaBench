; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_flow_is_viable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_flow_is_viable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { i64, i32, i64 }
%struct.necp_client_flow = type { i32, i32, i32, i32, i32, i32 }
%struct.necp_aggregate_result = type { i64, i64 }

@IFSCOPE_NONE = common dso_local global i64 0, align 8
@NECP_KERNEL_POLICY_RESULT_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.necp_client*, %struct.necp_client_flow*)* @necp_client_flow_is_viable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_flow_is_viable(i32 %0, %struct.necp_client* %1, %struct.necp_client_flow* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_client*, align 8
  %6 = alloca %struct.necp_client_flow*, align 8
  %7 = alloca %struct.necp_aggregate_result, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.necp_client* %1, %struct.necp_client** %5, align 8
  store %struct.necp_client_flow* %2, %struct.necp_client_flow** %6, align 8
  %10 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %11 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %16 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %21 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14, %3
  %26 = phi i1 [ false, %14 ], [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %29 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %32 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.necp_client*, %struct.necp_client** %5, align 8
  %35 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %39 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %38, i32 0, i32 3
  %40 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %41 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %44 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %43, i32 0, i32 1
  %45 = load %struct.necp_client_flow*, %struct.necp_client_flow** %6, align 8
  %46 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @necp_application_find_policy_match_internal(i32 %30, i32 %33, i32 %37, %struct.necp_aggregate_result* %7, i32* %39, i32 %42, i32* %44, i32* %46, i32* null, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %25
  %52 = getelementptr inbounds %struct.necp_aggregate_result, %struct.necp_aggregate_result* %7, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IFSCOPE_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.necp_aggregate_result, %struct.necp_aggregate_result* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NECP_KERNEL_POLICY_RESULT_DROP, align 8
  %60 = icmp ne i64 %58, %59
  br label %61

61:                                               ; preds = %56, %51, %25
  %62 = phi i1 [ false, %51 ], [ false, %25 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

declare dso_local i32 @necp_application_find_policy_match_internal(i32, i32, i32, %struct.necp_aggregate_result*, i32*, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
