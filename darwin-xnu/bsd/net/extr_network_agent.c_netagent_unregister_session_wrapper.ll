; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_unregister_session_wrapper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_unregister_session_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { %struct.netagent_wrapper* }
%struct.netagent_wrapper = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@netagent_lock = common dso_local global i32 0, align 4
@netagent_registered_count = common dso_local global i64 0, align 8
@NETAGENT_FLAG_ACTIVE = common dso_local global i32 0, align 4
@netagent_active_count = common dso_local global i64 0, align 8
@master_chain = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unregistered agent\00", align 1
@KEV_NETAGENT_UNREGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netagent_session*)* @netagent_unregister_session_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netagent_unregister_session_wrapper(%struct.netagent_session* %0) #0 {
  %2 = alloca %struct.netagent_session*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netagent_wrapper*, align 8
  store %struct.netagent_session* %0, %struct.netagent_session** %2, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %3, align 4
  store %struct.netagent_wrapper* null, %struct.netagent_wrapper** %5, align 8
  %7 = call i32 @lck_rw_lock_exclusive(i32* @netagent_lock)
  %8 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %9 = icmp ne %struct.netagent_session* %8, null
  br i1 %9, label %10, label %60

10:                                               ; preds = %1
  %11 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %12 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %11, i32 0, i32 0
  %13 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %12, align 8
  store %struct.netagent_wrapper* %13, %struct.netagent_wrapper** %5, align 8
  %14 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %5, align 8
  %15 = icmp ne %struct.netagent_wrapper* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load i64, i64* @netagent_registered_count, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @netagent_registered_count, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @netagent_registered_count, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %24 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %23, i32 0, i32 0
  %25 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %24, align 8
  %26 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NETAGENT_FLAG_ACTIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i64, i64* @netagent_active_count, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* @netagent_active_count, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* @netagent_active_count, align 8
  br label %38

38:                                               ; preds = %35, %32, %22
  %39 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %5, align 8
  %40 = load i32, i32* @master_chain, align 4
  %41 = call i32 @LIST_REMOVE(%struct.netagent_wrapper* %39, i32 %40)
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %45 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %44, i32 0, i32 0
  %46 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %45, align 8
  %47 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @uuid_copy(i32 %43, i32 %49)
  %51 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %52 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %51, i32 0, i32 0
  %53 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %52, align 8
  %54 = call i32 @netagent_free_wrapper(%struct.netagent_wrapper* %53)
  %55 = load %struct.netagent_session*, %struct.netagent_session** %2, align 8
  %56 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %55, i32 0, i32 0
  store %struct.netagent_wrapper* null, %struct.netagent_wrapper** %56, align 8
  %57 = load i32, i32* @LOG_DEBUG, align 4
  %58 = call i32 @NETAGENTLOG0(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %38, %10
  br label %60

60:                                               ; preds = %59, %1
  %61 = call i32 @lck_rw_done(i32* @netagent_lock)
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ifnet_clear_netagent(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @KEV_NETAGENT_UNREGISTERED, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @netagent_post_event(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %60
  ret void
}

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.netagent_wrapper*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

declare dso_local i32 @netagent_free_wrapper(%struct.netagent_wrapper*) #1

declare dso_local i32 @NETAGENTLOG0(i32, i8*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @ifnet_clear_netagent(i32) #1

declare dso_local i32 @netagent_post_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
