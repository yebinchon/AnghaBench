; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.vnode_attr = type { i32 }

@vnode_check_getattr = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_getattr(i32 %0, %struct.ucred* %1, %struct.vnode* %2, %struct.vnode_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @vfs_context_ucred(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @mac_cred_check_enforce(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

18:                                               ; preds = %4
  %19 = load i32, i32* @vnode_check_getattr, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ucred*, %struct.ucred** %7, align 8
  %22 = load %struct.vnode*, %struct.vnode** %8, align 8
  %23 = load %struct.vnode*, %struct.vnode** %8, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %27 = call i32 @MAC_CHECK(i32 %19, i32 %20, %struct.ucred* %21, %struct.vnode* %22, i32 %25, %struct.vnode_attr* %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @mac_cred_check_enforce(i32) #1

declare dso_local i32 @MAC_CHECK(i32, i32, %struct.ucred*, %struct.vnode*, i32, %struct.vnode_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
