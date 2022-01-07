; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_access.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@vnode_check_access = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_access(i32 %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @vfs_context_ucred(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @mac_cred_check_enforce(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ACCESS_MODE_TO_VNODE_MASK(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @vnode_check_access, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @MAC_CHECK(i32 %20, i32 %21, %struct.vnode* %22, i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @mac_cred_check_enforce(i32) #1

declare dso_local i32 @ACCESS_MODE_TO_VNODE_MASK(i32) #1

declare dso_local i32 @MAC_CHECK(i32, i32, %struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
