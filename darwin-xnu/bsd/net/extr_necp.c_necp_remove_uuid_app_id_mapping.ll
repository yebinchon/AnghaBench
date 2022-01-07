; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_remove_uuid_app_id_mapping.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_remove_uuid_app_id_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_uuid_id_mapping = type { i64, i32 }

@necp_kernel_policy_lock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @necp_remove_uuid_app_id_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_remove_uuid_app_id_mapping(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_uuid_id_mapping*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.necp_uuid_id_mapping* null, %struct.necp_uuid_id_mapping** %8, align 8
  %9 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %10 = call i32 @LCK_RW_ASSERT(i32* @necp_kernel_policy_lock, i32 %9)
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_app_id_locked(i32 %17)
  store %struct.necp_uuid_id_mapping* %18, %struct.necp_uuid_id_mapping** %8, align 8
  %19 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %8, align 8
  %20 = icmp ne %struct.necp_uuid_id_mapping* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %8, align 8
  %26 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %8, align 8
  %31 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %8, align 8
  %37 = load i32, i32* @chain, align 4
  %38 = call i32 @LIST_REMOVE(%struct.necp_uuid_id_mapping* %36, i32 %37)
  %39 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %8, align 8
  %40 = load i32, i32* @M_NECP, align 4
  %41 = call i32 @FREE(%struct.necp_uuid_id_mapping* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @TRUE, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %35
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %16
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

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
