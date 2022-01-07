; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_singlelabel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_singlelabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32* }
%struct.vnode = type { i32 }

@mac_label_vnodes = common dso_local global i32 0, align 4
@vnode_label_associate_singlelabel = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_label_associate_singlelabel(%struct.mount* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %5 = load i32, i32* @mac_label_vnodes, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %25

8:                                                ; preds = %2
  %9 = load i32, i32* @vnode_label_associate_singlelabel, align 4
  %10 = load %struct.mount*, %struct.mount** %3, align 8
  %11 = load %struct.mount*, %struct.mount** %3, align 8
  %12 = icmp ne %struct.mount* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = getelementptr inbounds %struct.mount, %struct.mount* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  br label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32* [ %16, %13 ], [ null, %17 ]
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAC_PERFORM(i32 %9, %struct.mount* %10, i32* %19, %struct.vnode* %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @MAC_PERFORM(i32, %struct.mount*, i32*, %struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
