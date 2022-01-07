; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@necp_fd_grp_attr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"lck_grp_attr_alloc_init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"necp_fd\00", align 1
@necp_fd_mtx_grp = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"lck_grp_alloc_init failed\0A\00", align 1
@necp_fd_mtx_attr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"lck_attr_alloc_init failed\0A\00", align 1
@necp_client_fd_size = common dso_local global i32 0, align 4
@NECP_CLIENT_FD_ZONE_MAX = common dso_local global i32 0, align 4
@NECP_CLIENT_FD_ZONE_NAME = common dso_local global i32 0, align 4
@necp_client_fd_zone = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"zinit(necp_client_fd) failed\0A\00", align 1
@necp_flow_size = common dso_local global i32 0, align 4
@NECP_FLOW_ZONE_NAME = common dso_local global i32 0, align 4
@MCR_SLEEP = common dso_local global i32 0, align 4
@necp_flow_cache = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"mcache_create(necp_flow_cache) failed\0A\00", align 1
@necp_flow_registration_size = common dso_local global i32 0, align 4
@NECP_FLOW_REGISTRATION_ZONE_NAME = common dso_local global i32 0, align 4
@necp_flow_registration_cache = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"mcache_create(necp_client_flow_registration) failed\0A\00", align 1
@necp_update_all_clients_callout = common dso_local global i32 0, align 4
@THREAD_CALL_PRIORITY_KERNEL = common dso_local global i32 0, align 4
@THREAD_CALL_OPTIONS_ONCE = common dso_local global i32 0, align 4
@necp_client_update_tcall = common dso_local global i32* null, align 8
@necp_fd_lock = common dso_local global i32 0, align 4
@necp_observer_lock = common dso_local global i32 0, align 4
@necp_client_tree_lock = common dso_local global i32 0, align 4
@necp_flow_tree_lock = common dso_local global i32 0, align 4
@necp_collect_stats_list_lock = common dso_local global i32 0, align 4
@necp_fd_list = common dso_local global i32 0, align 4
@necp_fd_observer_list = common dso_local global i32 0, align 4
@necp_collect_stats_flow_list = common dso_local global i32 0, align 4
@necp_client_global_tree = common dso_local global i32 0, align 4
@necp_client_flow_global_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_client_init() #0 {
  %1 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %1, i32** @necp_fd_grp_attr, align 8
  %2 = load i32*, i32** @necp_fd_grp_attr, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32*, i32** @necp_fd_grp_attr, align 8
  %8 = call i32* @lck_grp_alloc_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  store i32* %8, i32** @necp_fd_mtx_grp, align 8
  %9 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %6
  %14 = call i32* (...) @lck_attr_alloc_init()
  store i32* %14, i32** @necp_fd_mtx_attr, align 8
  %15 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  store i32 4, i32* @necp_client_fd_size, align 4
  %20 = load i32, i32* @necp_client_fd_size, align 4
  %21 = load i32, i32* @NECP_CLIENT_FD_ZONE_MAX, align 4
  %22 = load i32, i32* @necp_client_fd_size, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @NECP_CLIENT_FD_ZONE_NAME, align 4
  %25 = call i32* @zinit(i32 %20, i32 %23, i32 0, i32 %24)
  store i32* %25, i32** @necp_client_fd_zone, align 8
  %26 = load i32*, i32** @necp_client_fd_zone, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  store i32 4, i32* @necp_flow_size, align 4
  %31 = load i32, i32* @NECP_FLOW_ZONE_NAME, align 4
  %32 = load i32, i32* @necp_flow_size, align 4
  %33 = load i32, i32* @MCR_SLEEP, align 4
  %34 = call i8* @mcache_create(i32 %31, i32 %32, i32 4, i32 0, i32 %33)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** @necp_flow_cache, align 8
  %36 = load i32*, i32** @necp_flow_cache, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %30
  store i32 4, i32* @necp_flow_registration_size, align 4
  %41 = load i32, i32* @NECP_FLOW_REGISTRATION_ZONE_NAME, align 4
  %42 = load i32, i32* @necp_flow_registration_size, align 4
  %43 = load i32, i32* @MCR_SLEEP, align 4
  %44 = call i8* @mcache_create(i32 %41, i32 %42, i32 4, i32 0, i32 %43)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** @necp_flow_registration_cache, align 8
  %46 = load i32*, i32** @necp_flow_registration_cache, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i32, i32* @necp_update_all_clients_callout, align 4
  %52 = load i32, i32* @THREAD_CALL_PRIORITY_KERNEL, align 4
  %53 = load i32, i32* @THREAD_CALL_OPTIONS_ONCE, align 4
  %54 = call i32* @thread_call_allocate_with_options(i32 %51, i32* null, i32 %52, i32 %53)
  store i32* %54, i32** @necp_client_update_tcall, align 8
  %55 = load i32*, i32** @necp_client_update_tcall, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @VERIFY(i32 %57)
  %59 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %60 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %61 = call i32 @lck_rw_init(i32* @necp_fd_lock, i32* %59, i32* %60)
  %62 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %63 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %64 = call i32 @lck_rw_init(i32* @necp_observer_lock, i32* %62, i32* %63)
  %65 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %66 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %67 = call i32 @lck_rw_init(i32* @necp_client_tree_lock, i32* %65, i32* %66)
  %68 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %69 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %70 = call i32 @lck_rw_init(i32* @necp_flow_tree_lock, i32* %68, i32* %69)
  %71 = load i32*, i32** @necp_fd_mtx_grp, align 8
  %72 = load i32*, i32** @necp_fd_mtx_attr, align 8
  %73 = call i32 @lck_rw_init(i32* @necp_collect_stats_list_lock, i32* %71, i32* %72)
  %74 = call i32 @LIST_INIT(i32* @necp_fd_list)
  %75 = call i32 @LIST_INIT(i32* @necp_fd_observer_list)
  %76 = call i32 @LIST_INIT(i32* @necp_collect_stats_flow_list)
  %77 = call i32 @RB_INIT(i32* @necp_client_global_tree)
  %78 = call i32 @RB_INIT(i32* @necp_client_flow_global_tree)
  ret i32 0
}

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32* @lck_attr_alloc_init(...) #1

declare dso_local i32* @zinit(i32, i32, i32, i32) #1

declare dso_local i8* @mcache_create(i32, i32, i32, i32, i32) #1

declare dso_local i32* @thread_call_allocate_with_options(i32, i32*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_rw_init(i32*, i32*, i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
