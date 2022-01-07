; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_remove_uuid_service_id_mapping.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_remove_uuid_service_id_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_uuid_id_mapping = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @necp_remove_uuid_service_id_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_remove_uuid_service_id_mapping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.necp_uuid_id_mapping*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.necp_uuid_id_mapping* null, %struct.necp_uuid_id_mapping** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @uuid_is_null(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %2, align 4
  br label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %12 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %13)
  store %struct.necp_uuid_id_mapping* %14, %struct.necp_uuid_id_mapping** %4, align 8
  %15 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %4, align 8
  %16 = icmp ne %struct.necp_uuid_id_mapping* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %4, align 8
  %19 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %4, align 8
  %25 = load i32, i32* @chain, align 4
  %26 = call i32 @LIST_REMOVE(%struct.necp_uuid_id_mapping* %24, i32 %25)
  %27 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %4, align 8
  %28 = load i32, i32* @M_NECP, align 4
  %29 = call i32 @FREE(%struct.necp_uuid_id_mapping* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %10
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @uuid_is_null(i32) #1

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.necp_uuid_id_mapping*, i32) #1

declare dso_local i32 @FREE(%struct.necp_uuid_id_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
