; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pager_get_mtime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pager_get_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.timespec = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_pager_get_mtime(%struct.vnode* %0, %struct.timespec* %1, %struct.timespec* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.timespec*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %7 = load %struct.vnode*, %struct.vnode** %4, align 8
  %8 = load %struct.timespec*, %struct.timespec** %5, align 8
  %9 = call i32 (...) @vfs_context_current()
  %10 = call i32 @vnode_mtime(%struct.vnode* %7, %struct.timespec* %8, i32 %9)
  %11 = load %struct.timespec*, %struct.timespec** %6, align 8
  %12 = icmp ne %struct.timespec* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = load %struct.timespec*, %struct.timespec** %6, align 8
  %16 = call i32 @ubc_get_cs_mtime(%struct.vnode* %14, %struct.timespec* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %18
}

declare dso_local i32 @vnode_mtime(%struct.vnode*, %struct.timespec*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @ubc_get_cs_mtime(%struct.vnode*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
