; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqsync.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }

@NODQUOT = common dso_local global %struct.dquot* null, align 8
@DQ_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dqsync(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dquot*, %struct.dquot** %2, align 8
  %5 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %6 = icmp ne %struct.dquot* %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.dquot*, %struct.dquot** %2, align 8
  %9 = call i32 @dqlock(%struct.dquot* %8)
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DQ_MOD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.dquot*, %struct.dquot** %2, align 8
  %18 = call i32 @dqsync_locked(%struct.dquot* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %7
  %20 = load %struct.dquot*, %struct.dquot** %2, align 8
  %21 = call i32 @dqunlock(%struct.dquot* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @dqlock(%struct.dquot*) #1

declare dso_local i32 @dqsync_locked(%struct.dquot*) #1

declare dso_local i32 @dqunlock(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
