; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqreclaim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqreclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32 }

@NODQUOT = common dso_local global %struct.dquot* null, align 8
@DQ_MOD = common dso_local global i32 0, align 4
@dqdirtylist = common dso_local global i32 0, align 4
@dq_freelist = common dso_local global i32 0, align 4
@dqfreelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqreclaim(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %3 = load %struct.dquot*, %struct.dquot** %2, align 8
  %4 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %5 = icmp eq %struct.dquot* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %39

7:                                                ; preds = %1
  %8 = call i32 (...) @dq_list_lock()
  %9 = load %struct.dquot*, %struct.dquot** %2, align 8
  %10 = call i32 @dq_lock_internal(%struct.dquot* %9)
  %11 = load %struct.dquot*, %struct.dquot** %2, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = call i32 @dq_unlock_internal(%struct.dquot* %17)
  %19 = call i32 (...) @dq_list_unlock()
  br label %39

20:                                               ; preds = %7
  %21 = load %struct.dquot*, %struct.dquot** %2, align 8
  %22 = getelementptr inbounds %struct.dquot, %struct.dquot* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DQ_MOD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.dquot*, %struct.dquot** %2, align 8
  %29 = load i32, i32* @dq_freelist, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* @dqdirtylist, %struct.dquot* %28, i32 %29)
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.dquot*, %struct.dquot** %2, align 8
  %33 = load i32, i32* @dq_freelist, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* @dqfreelist, %struct.dquot* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.dquot*, %struct.dquot** %2, align 8
  %37 = call i32 @dq_unlock_internal(%struct.dquot* %36)
  %38 = call i32 (...) @dq_list_unlock()
  br label %39

39:                                               ; preds = %35, %16, %6
  ret void
}

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i32 @dq_lock_internal(%struct.dquot*) #1

declare dso_local i32 @dq_unlock_internal(%struct.dquot*) #1

declare dso_local i32 @dq_list_unlock(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.dquot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
