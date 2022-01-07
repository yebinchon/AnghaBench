; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dq_lock_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dq_lock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32 }

@DQ_LLOCK = common dso_local global i32 0, align 4
@DQ_LWANT = common dso_local global i32 0, align 4
@quota_list_mtx_lock = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dq_lock_internal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dq_lock_internal(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  br label %3

3:                                                ; preds = %10, %1
  %4 = load %struct.dquot*, %struct.dquot** %2, align 8
  %5 = getelementptr inbounds %struct.dquot, %struct.dquot* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DQ_LLOCK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, i32* @DQ_LWANT, align 4
  %12 = load %struct.dquot*, %struct.dquot** %2, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dquot*, %struct.dquot** %2, align 8
  %17 = getelementptr inbounds %struct.dquot, %struct.dquot* %16, i32 0, i32 0
  %18 = load i32, i32* @quota_list_mtx_lock, align 4
  %19 = load i32, i32* @PVFS, align 4
  %20 = call i32 @msleep(i32* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %3

21:                                               ; preds = %3
  %22 = load i32, i32* @DQ_LLOCK, align 4
  %23 = load %struct.dquot*, %struct.dquot** %2, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
