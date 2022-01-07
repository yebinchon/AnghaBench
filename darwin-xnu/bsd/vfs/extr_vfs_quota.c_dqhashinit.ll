; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqhashinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqhashinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dqfreelist = common dso_local global i32 0, align 4
@dqdirtylist = common dso_local global i32 0, align 4
@desiredvnodes = common dso_local global i32 0, align 4
@M_DQUOT = common dso_local global i32 0, align 4
@dqhash = common dso_local global i32 0, align 4
@dqhashtbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqhashinit() #0 {
  %1 = call i32 (...) @dq_list_lock()
  %2 = call i64 (...) @dqisinitialized()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %11

5:                                                ; preds = %0
  %6 = call i32 @TAILQ_INIT(i32* @dqfreelist)
  %7 = call i32 @TAILQ_INIT(i32* @dqdirtylist)
  %8 = load i32, i32* @desiredvnodes, align 4
  %9 = load i32, i32* @M_DQUOT, align 4
  %10 = call i32 @hashinit(i32 %8, i32 %9, i32* @dqhash)
  store i32 %10, i32* @dqhashtbl, align 4
  br label %11

11:                                               ; preds = %5, %4
  %12 = call i32 (...) @dq_list_unlock()
  ret void
}

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i64 @dqisinitialized(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @dq_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
