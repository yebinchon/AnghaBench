; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.devnode = type { i32 }
%struct.fdescnode = type { i32 }

@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_label_associate(%struct.mount* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devnode*, align 8
  %8 = alloca %struct.fdescnode*, align 8
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %3
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = call %struct.devnode* @VTODN(%struct.vnode* %14)
  store %struct.devnode* %15, %struct.devnode** %7, align 8
  %16 = load %struct.mount*, %struct.mount** %4, align 8
  %17 = load %struct.devnode*, %struct.devnode** %7, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = call i32 @mac_vnode_label_associate_devfs(%struct.mount* %16, %struct.devnode* %17, %struct.vnode* %18)
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call %struct.fdescnode* @VTOFDESC(%struct.vnode* %21)
  store %struct.fdescnode* %22, %struct.fdescnode** %8, align 8
  %23 = load %struct.mount*, %struct.mount** %4, align 8
  %24 = load %struct.fdescnode*, %struct.fdescnode** %8, align 8
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mac_vnode_label_associate_fdesc(%struct.mount* %23, %struct.fdescnode* %24, %struct.vnode* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load %struct.mount*, %struct.mount** %4, align 8
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = call i32 @mac_vnode_label_associate_extattr(%struct.mount* %29, %struct.vnode* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %20, %13
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.devnode* @VTODN(%struct.vnode*) #1

declare dso_local i32 @mac_vnode_label_associate_devfs(%struct.mount*, %struct.devnode*, %struct.vnode*) #1

declare dso_local %struct.fdescnode* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @mac_vnode_label_associate_fdesc(%struct.mount*, %struct.fdescnode*, %struct.vnode*, i32) #1

declare dso_local i32 @mac_vnode_label_associate_extattr(%struct.mount*, %struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
