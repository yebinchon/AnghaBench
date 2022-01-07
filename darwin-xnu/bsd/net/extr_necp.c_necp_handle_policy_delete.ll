; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_handle_policy_delete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_handle_policy_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_session = type { i32 }
%struct.necp_session_policy = type { i64 }

@NECP_ERROR_INTERNAL = common dso_local global i32 0, align 4
@NECP_TLV_POLICY_ID = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get policy id: %d\00", align 1
@NECP_ERROR_INVALID_TLV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to find policy with id %d\00", align 1
@NECP_ERROR_POLICY_ID_NOT_FOUND = common dso_local global i32 0, align 4
@NECP_PACKET_TYPE_POLICY_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.necp_session*, i32, i32, i32)* @necp_handle_policy_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @necp_handle_policy_delete(%struct.necp_session* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.necp_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.necp_session_policy*, align 8
  store %struct.necp_session* %0, %struct.necp_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @NECP_ERROR_INTERNAL, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.necp_session_policy* null, %struct.necp_session_policy** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NECP_TLV_POLICY_ID, align 4
  %17 = call i32 @necp_get_tlv(i32 %14, i32* null, i32 0, i32 %15, i32 %16, i32 4, i32* %11, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @NECPLOG(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @NECP_ERROR_INVALID_TLV, align 4
  store i32 %24, i32* %10, align 4
  br label %49

25:                                               ; preds = %4
  %26 = load %struct.necp_session*, %struct.necp_session** %5, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.necp_session_policy* @necp_policy_find(%struct.necp_session* %26, i32 %27)
  store %struct.necp_session_policy* %28, %struct.necp_session_policy** %12, align 8
  %29 = load %struct.necp_session_policy*, %struct.necp_session_policy** %12, align 8
  %30 = icmp eq %struct.necp_session_policy* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.necp_session_policy*, %struct.necp_session_policy** %12, align 8
  %33 = getelementptr inbounds %struct.necp_session_policy, %struct.necp_session_policy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31, %25
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @NECPLOG(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @NECP_ERROR_POLICY_ID_NOT_FOUND, align 4
  store i32 %40, i32* %10, align 4
  br label %49

41:                                               ; preds = %31
  %42 = load %struct.necp_session*, %struct.necp_session** %5, align 8
  %43 = load %struct.necp_session_policy*, %struct.necp_session_policy** %12, align 8
  %44 = call i32 @necp_policy_mark_for_deletion(%struct.necp_session* %42, %struct.necp_session_policy* %43)
  %45 = load %struct.necp_session*, %struct.necp_session** %5, align 8
  %46 = load i32, i32* @NECP_PACKET_TYPE_POLICY_DELETE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @necp_send_success_response(%struct.necp_session* %45, i32 %46, i32 %47)
  br label %55

49:                                               ; preds = %36, %20
  %50 = load %struct.necp_session*, %struct.necp_session** %5, align 8
  %51 = load i32, i32* @NECP_PACKET_TYPE_POLICY_DELETE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @necp_send_error_response(%struct.necp_session* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @necp_get_tlv(i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local %struct.necp_session_policy* @necp_policy_find(%struct.necp_session*, i32) #1

declare dso_local i32 @necp_policy_mark_for_deletion(%struct.necp_session*, %struct.necp_session_policy*) #1

declare dso_local i32 @necp_send_success_response(%struct.necp_session*, i32, i32) #1

declare dso_local i32 @necp_send_error_response(%struct.necp_session*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
