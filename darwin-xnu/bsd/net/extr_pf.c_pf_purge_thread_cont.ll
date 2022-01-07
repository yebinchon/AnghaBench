; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_thread_cont.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_thread_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@pf_purge_thread_cont.nloops = internal global i32 0, align 4
@pf_perim_lock = common dso_local global i32 0, align 4
@pf_lock = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@pf_purge_thread = common dso_local global i32* null, align 8
@tree_src_tracking = common dso_local global i32 0, align 4
@pf_default_rule = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PFTM_INTERVAL = common dso_local global i64 0, align 8
@pf_purge_thread_fn = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pf_purge_cont\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pf_purge_thread_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_purge_thread_cont(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = call i32 (...) @net_update_uptime()
  %6 = load i32, i32* @pf_perim_lock, align 4
  %7 = call i32 @lck_rw_lock_shared(i32 %6)
  %8 = load i32, i32* @pf_lock, align 4
  %9 = call i32 @lck_mtx_lock(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pf_status, i32 0, i32 1), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pf_status, i32 0, i32 0), align 4
  %14 = call i32 @pf_purge_expired_states(i32 %13)
  %15 = call i32 (...) @pf_purge_expired_fragments()
  %16 = call i32 (...) @pf_purge_expired_src_nodes()
  %17 = load i32*, i32** @pf_purge_thread, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* @pf_lock, align 4
  %21 = call i32 @lck_mtx_unlock(i32 %20)
  %22 = load i32, i32* @pf_perim_lock, align 4
  %23 = call i32 @lck_rw_done(i32 %22)
  %24 = call i32 (...) @current_thread()
  %25 = call i32 @thread_deallocate(i32 %24)
  %26 = call i32 (...) @current_thread()
  %27 = call i32 @thread_terminate(i32 %26)
  store i32 0, i32* %2, align 4
  br label %71

28:                                               ; preds = %12
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pf_status, i32 0, i32 0), align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = call i64 (...) @pf_normalize_isempty()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = call i64 @RB_EMPTY(i32* @tree_src_tracking)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* @pf_purge_thread_cont.nloops, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %34, %31, %28
  br label %59

39:                                               ; preds = %1
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pf_status, i32 0, i32 0), align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pf_default_rule, i32 0, i32 0), align 8
  %42 = load i64, i64* @PFTM_INTERVAL, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %40, %44
  %46 = add nsw i32 1, %45
  %47 = call i32 @pf_purge_expired_states(i32 %46)
  %48 = load i32, i32* @pf_purge_thread_cont.nloops, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @pf_purge_thread_cont.nloops, align 4
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pf_default_rule, i32 0, i32 0), align 8
  %51 = load i64, i64* @PFTM_INTERVAL, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = call i32 (...) @pf_purge_expired_fragments()
  %57 = call i32 (...) @pf_purge_expired_src_nodes()
  store i32 0, i32* @pf_purge_thread_cont.nloops, align 4
  br label %58

58:                                               ; preds = %55, %39
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i32, i32* @pf_lock, align 4
  %61 = call i32 @lck_mtx_unlock(i32 %60)
  %62 = load i32, i32* @pf_perim_lock, align 4
  %63 = call i32 @lck_rw_done(i32 %62)
  %64 = load i32, i32* @pf_purge_thread_fn, align 4
  %65 = load i32, i32* @PWAIT, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @hz, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i32 @tsleep0(i32 %64, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %68, i32 (i32)* @pf_purge_thread_cont)
  %70 = call i32 @VERIFY(i32 0)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %59, %19
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @net_update_uptime(...) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @pf_purge_expired_states(i32) #1

declare dso_local i32 @pf_purge_expired_fragments(...) #1

declare dso_local i32 @pf_purge_expired_src_nodes(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @thread_deallocate(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @thread_terminate(i32) #1

declare dso_local i64 @pf_normalize_isempty(...) #1

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local i32 @tsleep0(i32, i32, i8*, i32, i32 (i32)*) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
