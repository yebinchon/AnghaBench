; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.label* }
%struct.label = type { i32 }

@vnode_label_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_label_update(i32 %0, %struct.vnode* %1, %struct.label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.label*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store %struct.label* %2, %struct.label** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @vfs_context_ucred(i32 %9)
  store i32 %10, i32* %7, align 4
  store %struct.label* null, %struct.label** %8, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load %struct.label*, %struct.label** %12, align 8
  %14 = icmp eq %struct.label* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call %struct.label* (...) @mac_vnode_label_alloc()
  store %struct.label* %16, %struct.label** %8, align 8
  br label %17

17:                                               ; preds = %15, %3
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call i32 @vnode_lock(%struct.vnode* %18)
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.label*, %struct.label** %21, align 8
  %23 = icmp eq %struct.label* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.label*, %struct.label** %8, align 8
  %26 = load %struct.vnode*, %struct.vnode** %5, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  store %struct.label* %25, %struct.label** %27, align 8
  store %struct.label* null, %struct.label** %8, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, i32* @vnode_label_update, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load %struct.label*, %struct.label** %33, align 8
  %35 = load %struct.label*, %struct.label** %6, align 8
  %36 = call i32 @MAC_PERFORM(i32 %29, i32 %30, %struct.vnode* %31, %struct.label* %34, %struct.label* %35)
  %37 = load %struct.vnode*, %struct.vnode** %5, align 8
  %38 = call i32 @vnode_unlock(%struct.vnode* %37)
  %39 = load %struct.label*, %struct.label** %8, align 8
  %40 = icmp ne %struct.label* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.label*, %struct.label** %8, align 8
  %43 = call i32 @mac_vnode_label_free(%struct.label* %42)
  br label %44

44:                                               ; preds = %41, %28
  ret void
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local %struct.label* @mac_vnode_label_alloc(...) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @MAC_PERFORM(i32, i32, %struct.vnode*, %struct.label*, %struct.label*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @mac_vnode_label_free(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
