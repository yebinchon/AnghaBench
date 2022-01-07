; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_mount_list_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_mount_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_inshutdown = common dso_local global i64 0, align 8
@mountlist = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@nummounts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_list_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @mount_list_lock()
  %5 = load i64, i64* @system_inshutdown, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @mnt_list, align 4
  %11 = call i32 @TAILQ_INSERT_TAIL(i32* @mountlist, i32 %9, i32 %10)
  %12 = load i32, i32* @nummounts, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @nummounts, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %7
  %15 = call i32 (...) @mount_list_unlock()
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @mount_list_lock(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32, i32) #1

declare dso_local i32 @mount_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
