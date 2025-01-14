; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_update_extattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_update_extattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }

@mac_label_vnodes = common dso_local global i32 0, align 4
@vnode_label_update_extattr = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_label_update_extattr(%struct.mount* %0, %struct.vnode* %1, i8* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @mac_label_vnodes, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %33

11:                                               ; preds = %3
  %12 = load i32, i32* @vnode_label_update_extattr, align 4
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @MAC_PERFORM(i32 %12, %struct.mount* %13, i32 %16, %struct.vnode* %17, i32 %20, i8* %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  br label %33

26:                                               ; preds = %11
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = call i32 @vnode_lock(%struct.vnode* %27)
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = call i32 @vnode_relabel(%struct.vnode* %29)
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = call i32 @vnode_unlock(%struct.vnode* %31)
  br label %33

33:                                               ; preds = %26, %25, %10
  ret void
}

declare dso_local i32 @MAC_PERFORM(i32, %struct.mount*, i32, %struct.vnode*, i32, i8*) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @vnode_relabel(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
