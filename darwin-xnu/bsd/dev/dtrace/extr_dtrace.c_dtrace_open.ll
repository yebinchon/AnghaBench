; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@DTRACE_PRIV_NONE = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@dtrace_provider_lock = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@dtrace_dof_mode_lock = common dso_local global i32 0, align 4
@dtrace_dof_mode = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_ON = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_OFF = common dso_local global i64 0, align 8
@PROC_ALLPROCLIST = common dso_local global i32 0, align 4
@PROC_NOWAITTRANS = common dso_local global i32 0, align 4
@dtrace_lazy_dofs_proc_iterate_doit = common dso_local global i32 0, align 4
@dtrace_lazy_dofs_proc_iterate_filter = common dso_local global i32 0, align 4
@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_KERNEL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@KDI_DTSET_DTRACE_ACTIVATE = common dso_local global i32 0, align 4
@KDI_DTSET_DTRACE_DEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @dtrace_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_open(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @dtrace_cred2priv(i32* %15, i64* %11, i32* %12, i32* %13)
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @DTRACE_PRIV_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EACCES, align 4
  store i32 %21, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = call i32 (...) @fasttrap_init()
  %24 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %25 = call i32 @dtrace_probe_provide(i32* null, i32* null)
  %26 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %27 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %28 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %29 = load i64, i64* @dtrace_opens, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* @dtrace_opens, align 8
  %31 = call i32 (...) @dtrace_membar_producer()
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @dtrace_state_create(i32* %32, i32* %33, i32** %10)
  store i32 %34, i32* %14, align 4
  %35 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %38, %22
  %42 = load i64, i64* @dtrace_opens, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* @dtrace_opens, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dtrace_anon, i32 0, i32 0), align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %45, %41
  %50 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %79

52:                                               ; preds = %38
  %53 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %54 = call i32 @lck_rw_lock_exclusive(i32* @dtrace_dof_mode_lock)
  %55 = load i64, i64* @dtrace_dof_mode, align 8
  %56 = load i64, i64* @DTRACE_DOF_MODE_LAZY_ON, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load i64, i64* @DTRACE_DOF_MODE_LAZY_OFF, align 8
  store i64 %59, i64* @dtrace_dof_mode, align 8
  %60 = call i32 @lck_rw_lock_exclusive_to_shared(i32* @dtrace_dof_mode_lock)
  %61 = load i32, i32* @PROC_ALLPROCLIST, align 4
  %62 = load i32, i32* @PROC_NOWAITTRANS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @dtrace_lazy_dofs_proc_iterate_doit, align 4
  %65 = load i32, i32* @dtrace_lazy_dofs_proc_iterate_filter, align 4
  %66 = call i32 @proc_iterate(i32 %63, i32 %64, i32* null, i32 %65, i32* null)
  %67 = call i32 @lck_rw_unlock_shared(i32* @dtrace_dof_mode_lock)
  br label %70

68:                                               ; preds = %52
  %69 = call i32 @lck_rw_unlock_exclusive(i32* @dtrace_dof_mode_lock)
  br label %70

70:                                               ; preds = %68, %58
  %71 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %72 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %73 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_KERNEL, align 8
  store i64 %76, i64* @dtrace_kernel_symbol_mode, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %49, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @dtrace_cred2priv(i32*, i64*, i32*, i32*) #1

declare dso_local i32 @fasttrap_init(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @dtrace_probe_provide(i32*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_membar_producer(...) #1

declare dso_local i32 @dtrace_state_create(i32*, i32*, i32**) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive_to_shared(i32*) #1

declare dso_local i32 @proc_iterate(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @lck_rw_unlock_shared(i32*) #1

declare dso_local i32 @lck_rw_unlock_exclusive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
