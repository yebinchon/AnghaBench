; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_get_some_work.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_aio_get_some_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i64, i64 }

@aio_anchor = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@AIO_FSYNC = common dso_local global i32 0, align 4
@DBG_BSD_AIO = common dso_local global i32 0, align 4
@AIO_fsync_delay = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@aio_work_thread = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* ()* @aio_get_some_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @aio_get_some_work() #0 {
  %1 = alloca %struct.TYPE_17__*, align 8
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aio_anchor, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i64 0
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = call i32 @aio_workq_lock_spin(%struct.TYPE_16__* %6)
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %76

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %41, %13
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = call %struct.TYPE_17__* @TAILQ_FIRST(i32* %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %2, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = icmp eq %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %76

21:                                               ; preds = %14
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = call i32 @aio_workq_remove_entry_locked(%struct.TYPE_16__* %22, %struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = call i32 @aio_workq_unlock(%struct.TYPE_16__* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AIO_FSYNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %21
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @aio_proc_lock_spin(i64 %36)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = call i64 @aio_delay_fsync_request(%struct.TYPE_17__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %33
  %42 = load i32, i32* @DBG_BSD_AIO, align 4
  %43 = load i32, i32* @AIO_fsync_delay, align 4
  %44 = call i32 @BSDDBG_CODE(i32 %42, i32 %43)
  %45 = load i32, i32* @DBG_FUNC_NONE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @KERNEL_DEBUG(i32 %46, i32 %50, i32 %54, i32 0, i32 0, i32 0)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @aio_proc_unlock(i64 %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = call i32 @aio_workq_lock_spin(%struct.TYPE_16__* %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %64 = call i32 @aio_workq_add_entry_locked(%struct.TYPE_16__* %62, %struct.TYPE_17__* %63)
  br label %14

65:                                               ; preds = %33
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @aio_proc_unlock(i64 %68)
  br label %70

70:                                               ; preds = %65, %21
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = call i32 @aio_entry_ref(%struct.TYPE_17__* %72)
  %74 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aio_anchor, i32 0, i32 0))
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %75, %struct.TYPE_17__** %1, align 8
  br label %88

76:                                               ; preds = %20, %12
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = call i32 @CAST_EVENT64_T(%struct.TYPE_16__* %79)
  %81 = load i32, i32* @THREAD_UNINT, align 4
  %82 = call i32 @waitq_assert_wait64(i32* %78, i32 %80, i32 %81, i32 0)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = call i32 @aio_workq_unlock(%struct.TYPE_16__* %83)
  %85 = load i64, i64* @aio_work_thread, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @thread_block(i32 %86)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %1, align 8
  br label %88

88:                                               ; preds = %76, %71
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %1, align 8
  ret %struct.TYPE_17__* %89
}

declare dso_local i32 @aio_workq_lock_spin(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @aio_workq_remove_entry_locked(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @aio_workq_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @aio_proc_lock_spin(i64) #1

declare dso_local i64 @aio_delay_fsync_request(%struct.TYPE_17__*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @aio_proc_unlock(i64) #1

declare dso_local i32 @aio_workq_add_entry_locked(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @aio_entry_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @waitq_assert_wait64(i32*, i32, i32, i32) #1

declare dso_local i32 @CAST_EVENT64_T(%struct.TYPE_16__*) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
