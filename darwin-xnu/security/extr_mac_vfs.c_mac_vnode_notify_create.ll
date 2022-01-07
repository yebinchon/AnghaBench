; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_notify_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_notify_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

@vnode_notify_create = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_notify_create(i32 %0, %struct.mount* %1, %struct.vnode* %2, %struct.vnode* %3, %struct.componentname* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.componentname*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.mount* %1, %struct.mount** %8, align 8
  store %struct.vnode* %2, %struct.vnode** %9, align 8
  store %struct.vnode* %3, %struct.vnode** %10, align 8
  store %struct.componentname* %4, %struct.componentname** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @vfs_context_ucred(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @mac_cred_check_enforce(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %38

20:                                               ; preds = %5
  %21 = load i32, i32* @vnode_notify_create, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.mount*, %struct.mount** %8, align 8
  %24 = load %struct.mount*, %struct.mount** %8, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vnode*, %struct.vnode** %9, align 8
  %28 = load %struct.vnode*, %struct.vnode** %9, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vnode*, %struct.vnode** %10, align 8
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.componentname*, %struct.componentname** %11, align 8
  %36 = call i32 @MAC_CHECK(i32 %21, i32 %22, %struct.mount* %23, i32 %26, %struct.vnode* %27, i32 %30, %struct.vnode* %31, i32 %34, %struct.componentname* %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %20, %19
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @mac_cred_check_enforce(i32) #1

declare dso_local i32 @MAC_CHECK(i32, i32, %struct.mount*, i32, %struct.vnode*, i32, %struct.vnode*, i32, %struct.componentname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
