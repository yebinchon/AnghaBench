; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqrele.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqrele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32 }

@NODQUOT = common dso_local global %struct.dquot* null, align 8
@DQ_MOD = common dso_local global i32 0, align 4
@dqfreelist = common dso_local global i32 0, align 4
@dq_freelist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqrele(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %3 = load %struct.dquot*, %struct.dquot** %2, align 8
  %4 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %5 = icmp eq %struct.dquot* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.dquot*, %struct.dquot** %2, align 8
  %9 = call i32 @dqlock(%struct.dquot* %8)
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load %struct.dquot*, %struct.dquot** %2, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.dquot*, %struct.dquot** %2, align 8
  %20 = call i32 @dqunlock(%struct.dquot* %19)
  br label %43

21:                                               ; preds = %7
  %22 = load %struct.dquot*, %struct.dquot** %2, align 8
  %23 = getelementptr inbounds %struct.dquot, %struct.dquot* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DQ_MOD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.dquot*, %struct.dquot** %2, align 8
  %30 = call i32 @dqsync_locked(%struct.dquot* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.dquot*, %struct.dquot** %2, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = call i32 (...) @dq_list_lock()
  %37 = load %struct.dquot*, %struct.dquot** %2, align 8
  %38 = load i32, i32* @dq_freelist, align 4
  %39 = call i32 @TAILQ_INSERT_TAIL(i32* @dqfreelist, %struct.dquot* %37, i32 %38)
  %40 = load %struct.dquot*, %struct.dquot** %2, align 8
  %41 = call i32 @dq_unlock_internal(%struct.dquot* %40)
  %42 = call i32 (...) @dq_list_unlock()
  br label %43

43:                                               ; preds = %31, %14, %6
  ret void
}

declare dso_local i32 @dqlock(%struct.dquot*) #1

declare dso_local i32 @dqunlock(%struct.dquot*) #1

declare dso_local i32 @dqsync_locked(%struct.dquot*) #1

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.dquot*, i32) #1

declare dso_local i32 @dq_unlock_internal(%struct.dquot*) #1

declare dso_local i32 @dq_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
