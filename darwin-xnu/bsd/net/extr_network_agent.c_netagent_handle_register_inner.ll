; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_handle_register_inner.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_network_agent.c_netagent_handle_register_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netagent_session = type { %struct.netagent_wrapper*, i32, i32, i32 }
%struct.netagent_wrapper = type { %struct.TYPE_2__, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@netagent_lock = common dso_local global i32 0, align 4
@g_next_generation = common dso_local global i32 0, align 4
@master_netagent_list = common dso_local global i32 0, align 4
@master_chain = common dso_local global i32 0, align 4
@NETAGENT_FLAG_REGISTERED = common dso_local global i32 0, align 4
@netagent_registered_count = common dso_local global i32 0, align 4
@NETAGENT_FLAG_ACTIVE = common dso_local global i32 0, align 4
@netagent_active_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netagent_session*, %struct.netagent_wrapper*)* @netagent_handle_register_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netagent_handle_register_inner(%struct.netagent_session* %0, %struct.netagent_wrapper* %1) #0 {
  %3 = alloca %struct.netagent_session*, align 8
  %4 = alloca %struct.netagent_wrapper*, align 8
  store %struct.netagent_session* %0, %struct.netagent_session** %3, align 8
  store %struct.netagent_wrapper* %1, %struct.netagent_wrapper** %4, align 8
  %5 = call i32 @lck_rw_lock_exclusive(i32* @netagent_lock)
  %6 = load %struct.netagent_session*, %struct.netagent_session** %3, align 8
  %7 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %10 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 8
  %11 = load %struct.netagent_session*, %struct.netagent_session** %3, align 8
  %12 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %15 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.netagent_session*, %struct.netagent_session** %3, align 8
  %17 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %20 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @g_next_generation, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @g_next_generation, align 4
  %23 = sext i32 %21 to i64
  %24 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %25 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %27 = load %struct.netagent_session*, %struct.netagent_session** %3, align 8
  %28 = getelementptr inbounds %struct.netagent_session, %struct.netagent_session* %27, i32 0, i32 0
  store %struct.netagent_wrapper* %26, %struct.netagent_wrapper** %28, align 8
  %29 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %30 = load i32, i32* @master_chain, align 4
  %31 = call i32 @LIST_INSERT_HEAD(i32* @master_netagent_list, %struct.netagent_wrapper* %29, i32 %30)
  %32 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %33 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %32, i32 0, i32 1
  %34 = call i32 @LIST_INIT(i32* %33)
  %35 = load i32, i32* @NETAGENT_FLAG_REGISTERED, align 4
  %36 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %37 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* @netagent_registered_count, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @netagent_registered_count, align 4
  %43 = load %struct.netagent_wrapper*, %struct.netagent_wrapper** %4, align 8
  %44 = getelementptr inbounds %struct.netagent_wrapper, %struct.netagent_wrapper* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NETAGENT_FLAG_ACTIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @netagent_active_count, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @netagent_active_count, align 4
  br label %53

53:                                               ; preds = %50, %2
  %54 = call i32 @lck_rw_done(i32* @netagent_lock)
  ret i32 0
}

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.netagent_wrapper*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
