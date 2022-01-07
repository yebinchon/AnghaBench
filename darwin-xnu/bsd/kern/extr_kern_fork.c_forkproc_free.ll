; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_forkproc_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_forkproc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32* }

@proc_lck_grp = common dso_local global i32 0, align 4
@nprocs = common dso_local global i32 0, align 4
@p_hash = common dso_local global i32 0, align 4
@M_SIGACTS = common dso_local global i32 0, align 4
@M_PSTATS = common dso_local global i32 0, align 4
@M_PROC = common dso_local global i32 0, align 4
@proc_fdmlock_grp = common dso_local global i32 0, align 4
@proc_mlock_grp = common dso_local global i32 0, align 4
@proc_slock_grp = common dso_local global i32 0, align 4
@proc_ucred_mlock_grp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forkproc_free(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %3 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %4 = call i32 @proc_signalend(%struct.TYPE_15__* %3, i32 0)
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = call i32 @proc_transend(%struct.TYPE_15__* %5, i32 0)
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = call i32 @proc_limitdrop(%struct.TYPE_15__* %7, i32 0)
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 11
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = call i32 @fdfree(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 9
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 9
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @vnode_rele(i32* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 9
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i32 @stopprofclock(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = call i32 @AUDIT_SESSION_PROCEXIT(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 8
  %31 = load i32, i32* @proc_lck_grp, align 4
  %32 = call i32 @lck_mtx_destroy(i32* %30, i32 %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 7
  %35 = load i32, i32* @proc_lck_grp, align 4
  %36 = call i32 @lck_mtx_destroy(i32* %34, i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 6
  %39 = load i32, i32* @proc_lck_grp, align 4
  %40 = call i32 @lck_mtx_destroy(i32* %38, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  %43 = load i32, i32* @proc_lck_grp, align 4
  %44 = call i32 @lck_spin_destroy(i32* %42, i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 3
  %47 = call i32 @kauth_cred_unref(i32* %46)
  %48 = call i32 (...) @proc_list_lock()
  %49 = load i32, i32* @nprocs, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @nprocs, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = load i32, i32* @p_hash, align 4
  %53 = call i32 @LIST_REMOVE(%struct.TYPE_15__* %51, i32 %52)
  %54 = call i32 (...) @proc_list_unlock()
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @thread_call_free(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i32, i32* @M_SIGACTS, align 4
  %63 = call i32 @FREE_ZONE(%struct.TYPE_15__* %61, i32 72, i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %65, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = load i32, i32* @M_PSTATS, align 4
  %70 = call i32 @FREE_ZONE(%struct.TYPE_15__* %68, i32 72, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = call i32 @proc_checkdeadrefs(%struct.TYPE_15__* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = load i32, i32* @M_PROC, align 4
  %77 = call i32 @FREE_ZONE(%struct.TYPE_15__* %75, i32 72, i32 %76)
  ret void
}

declare dso_local i32 @proc_signalend(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @proc_transend(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @proc_limitdrop(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @fdfree(%struct.TYPE_15__*) #1

declare dso_local i32 @vnode_rele(i32*) #1

declare dso_local i32 @stopprofclock(%struct.TYPE_15__*) #1

declare dso_local i32 @AUDIT_SESSION_PROCEXIT(%struct.TYPE_15__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @lck_spin_destroy(i32*, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @thread_call_free(i32) #1

declare dso_local i32 @FREE_ZONE(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @proc_checkdeadrefs(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
