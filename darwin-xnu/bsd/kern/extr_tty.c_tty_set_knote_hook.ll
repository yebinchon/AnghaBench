; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_tty_set_knote_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_tty_set_knote_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { %struct.tty*, %struct.TYPE_6__* }
%struct.tty = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.waitq_set* }
%struct.waitq_set = type { i32 }
%struct.waitq = type { i32 }

@SYNC_POLICY_FIFO = common dso_local global i32 0, align 4
@SYNC_POLICY_PREPOST = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FMARK = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @tty_set_knote_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_set_knote_hook(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.waitq*, align 8
  %8 = alloca %struct.waitq_set*, align 8
  %9 = alloca %struct.waitq_set, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tty*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  store %struct.waitq* null, %struct.waitq** %7, align 8
  store i64* null, i64** %12, align 8
  store i32 -1, i32* %13, align 4
  %15 = call i32 (...) @current_thread()
  %16 = call %struct.TYPE_7__* @get_bsdthread_info(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %3, align 8
  %17 = call i32 (...) @vfs_context_current()
  store i32 %17, i32* %4, align 4
  %18 = load %struct.knote*, %struct.knote** %2, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %5, align 8
  %25 = call i64 @waitq_link_reserve(i32* null)
  store i64 %25, i64* %11, align 8
  store i64 %25, i64* %10, align 8
  %26 = bitcast i64* %11 to i8*
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %12, align 8
  %28 = load i32, i32* @SYNC_POLICY_FIFO, align 4
  %29 = load i32, i32* @SYNC_POLICY_PREPOST, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @waitq_set_init(%struct.waitq_set* %9, i32 %30, i32* null, i32* null)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i32 @waitq_set_lazy_init_link(%struct.waitq_set* %9)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.waitq_set*, %struct.waitq_set** %39, align 8
  store %struct.waitq_set* %40, %struct.waitq_set** %8, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.waitq_set* %9, %struct.waitq_set** %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.knote*, %struct.knote** %2, align 8
  %45 = call i32 @knote_get_seltype(%struct.knote* %44)
  %46 = load i32, i32* @FMARK, align 4
  %47 = or i32 %45, %46
  %48 = load i64*, i64** %12, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @VNOP_SELECT(i64 %43, i32 %47, i32 0, i64* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.waitq_set*, %struct.waitq_set** %8, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store %struct.waitq_set* %51, %struct.waitq_set** %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @waitq_link_release(i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load %struct.knote*, %struct.knote** %2, align 8
  %61 = load i32, i32* @ENOTTY, align 4
  %62 = call i32 @knote_set_error(%struct.knote* %60, i32 %61)
  store i32 -1, i32* %13, align 4
  br label %83

63:                                               ; preds = %1
  %64 = load i64*, i64** %12, align 8
  %65 = call i32 @memcpy(%struct.waitq** %7, i64* %64, i32 8)
  %66 = load %struct.waitq*, %struct.waitq** %7, align 8
  %67 = load %struct.knote*, %struct.knote** %2, align 8
  %68 = call i32 @knote_get_seltype(%struct.knote* %67)
  %69 = call %struct.tty* @tty_from_waitq(%struct.waitq* %66, i32 %68)
  store %struct.tty* %69, %struct.tty** %14, align 8
  %70 = load %struct.tty*, %struct.tty** %14, align 8
  %71 = icmp ne %struct.tty* %70, null
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.tty*, %struct.tty** %14, align 8
  %75 = call i32 @tty_lock(%struct.tty* %74)
  %76 = load %struct.tty*, %struct.tty** %14, align 8
  %77 = call i32 @ttyhold(%struct.tty* %76)
  %78 = load %struct.tty*, %struct.tty** %14, align 8
  %79 = load %struct.knote*, %struct.knote** %2, align 8
  %80 = getelementptr inbounds %struct.knote, %struct.knote* %79, i32 0, i32 0
  store %struct.tty* %78, %struct.tty** %80, align 8
  %81 = load %struct.tty*, %struct.tty** %14, align 8
  %82 = call i32 @tty_unlock(%struct.tty* %81)
  br label %83

83:                                               ; preds = %63, %59
  %84 = call i32 @waitq_set_deinit(%struct.waitq_set* %9)
  %85 = load i32, i32* %13, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_7__* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @waitq_link_reserve(i32*) #1

declare dso_local i64 @waitq_set_init(%struct.waitq_set*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_set_lazy_init_link(%struct.waitq_set*) #1

declare dso_local i32 @VNOP_SELECT(i64, i32, i32, i64*, i32) #1

declare dso_local i32 @knote_get_seltype(%struct.knote*) #1

declare dso_local i32 @waitq_link_release(i64) #1

declare dso_local i32 @knote_set_error(%struct.knote*, i32) #1

declare dso_local i32 @memcpy(%struct.waitq**, i64*, i32) #1

declare dso_local %struct.tty* @tty_from_waitq(%struct.waitq*, i32) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @ttyhold(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @waitq_set_deinit(%struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
