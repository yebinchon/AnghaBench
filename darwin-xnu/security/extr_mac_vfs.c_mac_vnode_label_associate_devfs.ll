; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_devfs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_devfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32* }
%struct.devnode = type { i32 }
%struct.vnode = type { i32 }

@vnode_label_associate_devfs = common dso_local global i32 0, align 4
@mac_device_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_vnode_label_associate_devfs(%struct.mount* %0, %struct.devnode* %1, %struct.vnode* %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.devnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.devnode* %1, %struct.devnode** %5, align 8
  store %struct.vnode* %2, %struct.vnode** %6, align 8
  %7 = load i32, i32* @vnode_label_associate_devfs, align 4
  %8 = load %struct.mount*, %struct.mount** %4, align 8
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = icmp ne %struct.mount* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32* [ %14, %11 ], [ null, %15 ]
  %18 = load %struct.devnode*, %struct.devnode** %5, align 8
  %19 = load %struct.devnode*, %struct.devnode** %5, align 8
  %20 = getelementptr inbounds %struct.devnode, %struct.devnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MAC_PERFORM(i32 %7, %struct.mount* %8, i32* %17, %struct.devnode* %18, i32 %21, %struct.vnode* %22, i32 %25)
  ret void
}

declare dso_local i32 @MAC_PERFORM(i32, %struct.mount*, i32*, %struct.devnode*, i32, %struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
