; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@vm_purgeable_queue_lock = common dso_local global i32 0, align 4
@purgeable_queues = common dso_local global i32* null, align 8
@PURGEABLE_Q_TYPE_FIFO = common dso_local global i64 0, align 8
@NUM_VOLATILE_GROUPS = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_LIFO = common dso_local global i64 0, align 8
@PURGEABLE_Q_TYPE_OBSOLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_purgeable_stats(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @lck_mtx_lock(i32* @vm_purgeable_queue_lock)
  %8 = load i32*, i32** @purgeable_queues, align 8
  %9 = load i64, i64* @PURGEABLE_Q_TYPE_FIFO, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32* %10, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NUM_VOLATILE_GROUPS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vm_purgeable_stats_helper(i32* %21, i32* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i32*, i32** @purgeable_queues, align 8
  %31 = load i64, i64* @PURGEABLE_Q_TYPE_LIFO, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NUM_VOLATILE_GROUPS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @vm_purgeable_stats_helper(i32* %43, i32* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i32*, i32** @purgeable_queues, align 8
  %53 = load i64, i64* @PURGEABLE_Q_TYPE_OBSOLETE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %5, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @vm_purgeable_stats_helper(i32* %56, i32* %57, i32 0, i32 %58)
  %60 = call i32 @lck_mtx_unlock(i32* @vm_purgeable_queue_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @vm_purgeable_stats_helper(i32*, i32*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
