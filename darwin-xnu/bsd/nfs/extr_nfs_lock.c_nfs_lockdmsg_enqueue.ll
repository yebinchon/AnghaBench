; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockdmsg_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockdmsg_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@nfs_pendlockq = common dso_local global i32 0, align 4
@nfs_lock_msg_queue = common dso_local global i32 0, align 4
@lmr_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_lockdmsg_enqueue(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load i32, i32* @nfs_lock_msg_queue, align 4
  %5 = call %struct.TYPE_12__* @TAILQ_LAST(i32* @nfs_pendlockq, i32 %4)
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = icmp ne %struct.TYPE_12__* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %8, %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = load i32, i32* @lmr_next, align 4
  %21 = call i32 @TAILQ_INSERT_TAIL(i32* @nfs_pendlockq, %struct.TYPE_12__* %19, i32 %20)
  br label %55

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %38, %22
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %30, %34
  br label %36

36:                                               ; preds = %26, %23
  %37 = phi i1 [ false, %23 ], [ %35, %26 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = load i32, i32* @nfs_lock_msg_queue, align 4
  %41 = load i32, i32* @lmr_next, align 4
  %42 = call %struct.TYPE_12__* @TAILQ_PREV(%struct.TYPE_12__* %39, i32 %40, i32 %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %3, align 8
  br label %23

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = load i32, i32* @lmr_next, align 4
  %50 = call i32 @TAILQ_INSERT_AFTER(i32* @nfs_pendlockq, %struct.TYPE_12__* %47, %struct.TYPE_12__* %48, i32 %49)
  br label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = load i32, i32* @lmr_next, align 4
  %54 = call i32 @TAILQ_INSERT_HEAD(i32* @nfs_pendlockq, %struct.TYPE_12__* %52, i32 %53)
  br label %55

55:                                               ; preds = %18, %51, %46
  ret void
}

declare dso_local %struct.TYPE_12__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @TAILQ_PREV(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
