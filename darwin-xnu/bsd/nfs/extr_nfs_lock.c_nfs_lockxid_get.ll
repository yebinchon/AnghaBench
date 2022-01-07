; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockxid_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_lock.c_nfs_lockxid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i64 }

@nfs_lockxid = common dso_local global i32 0, align 4
@nfs_pendlockq = common dso_local global i32 0, align 4
@nfs_lock_msg_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_lockxid_get() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = load i32, i32* @nfs_lockxid, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = call i32 @microtime(%struct.timeval* %2)
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 12
  store i32 %10, i32* @nfs_lockxid, align 4
  br label %11

11:                                               ; preds = %5, %0
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* @nfs_lockxid, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @nfs_lockxid, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @nfs_lockxid, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @nfs_lockxid, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* @nfs_lock_msg_queue, align 4
  %21 = call %struct.TYPE_5__* @TAILQ_LAST(i32* @nfs_pendlockq, i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @nfs_lockxid, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %19
  br label %36

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* @nfs_lockxid, align 4
  %34 = call i64 @nfs_lockdmsg_find_by_xid(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %12, label %36

36:                                               ; preds = %32, %30
  %37 = load i32, i32* @nfs_lockxid, align 4
  ret i32 %37
}

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local %struct.TYPE_5__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i64 @nfs_lockdmsg_find_by_xid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
