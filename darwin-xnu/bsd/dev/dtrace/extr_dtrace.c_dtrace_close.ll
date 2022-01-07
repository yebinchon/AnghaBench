; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@cpu_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_dof_mode_lock = common dso_local global i32 0, align 4
@dtrace_dof_mode = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_OFF = common dso_local global i64 0, align 8
@DTRACE_DOF_MODE_LAZY_ON = common dso_local global i64 0, align 8
@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_KERNEL = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE = common dso_local global i64 0, align 8
@KDI_DTSET_DTRACE_DEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @dtrace_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_close(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @getminor(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.TYPE_5__* @dtrace_state_get(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %16 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dtrace_anon, i32 0, i32 1), align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @dtrace_state_destroy(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %21, %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = call i32 @dtrace_state_destroy(%struct.TYPE_5__* %31)
  %33 = load i64, i64* @dtrace_opens, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i64, i64* @dtrace_opens, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* @dtrace_opens, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dtrace_anon, i32 0, i32 0), align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %40, %30
  %45 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %46 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %47 = call i32 @lck_rw_lock_exclusive(i32* @dtrace_dof_mode_lock)
  %48 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %49 = load i64, i64* @dtrace_opens, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44
  %52 = load i64, i64* @dtrace_dof_mode, align 8
  %53 = load i64, i64* @DTRACE_DOF_MODE_LAZY_OFF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @DTRACE_DOF_MODE_LAZY_ON, align 8
  store i64 %56, i64* @dtrace_dof_mode, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %59 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_KERNEL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE, align 8
  store i64 %62, i64* @dtrace_kernel_symbol_mode, align 8
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %44
  %65 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %66 = call i32 @lck_rw_unlock_exclusive(i32* @dtrace_dof_mode_lock)
  %67 = call i32 @dtrace_module_unloaded(i32* null)
  ret i32 0
}

declare dso_local i32 @getminor(i32) #1

declare dso_local %struct.TYPE_5__* @dtrace_state_get(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_state_destroy(%struct.TYPE_5__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @lck_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @dtrace_module_unloaded(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
