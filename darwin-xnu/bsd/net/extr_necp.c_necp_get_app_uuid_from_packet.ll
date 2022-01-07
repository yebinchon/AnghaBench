; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_app_uuid_from_packet.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_get_app_uuid_from_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.necp_uuid_id_mapping = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@necp_kernel_policy_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_get_app_uuid_from_packet(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.necp_uuid_id_mapping*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %9 = icmp eq %struct.mbuf* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @M_PKTHDR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %10
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = call i32 @lck_rw_lock_shared(i32* @necp_kernel_policy_lock)
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.necp_uuid_id_mapping* @necp_uuid_lookup_uuid_with_app_id_locked(i64 %33)
  store %struct.necp_uuid_id_mapping* %34, %struct.necp_uuid_id_mapping** %7, align 8
  %35 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %7, align 8
  %36 = icmp ne %struct.necp_uuid_id_mapping* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.necp_uuid_id_mapping*, %struct.necp_uuid_id_mapping** %7, align 8
  %40 = getelementptr inbounds %struct.necp_uuid_id_mapping, %struct.necp_uuid_id_mapping* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uuid_copy(i32 %38, i32 %41)
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %27
  %44 = call i32 @lck_rw_done(i32* @necp_kernel_policy_lock)
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @uuid_clear(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.necp_uuid_id_mapping* @necp_uuid_lookup_uuid_with_app_id_locked(i64) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @uuid_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
