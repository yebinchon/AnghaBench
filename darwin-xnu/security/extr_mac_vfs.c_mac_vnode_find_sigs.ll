; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_find_sigs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_find_sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.vnode = type { i32 }

@vnode_find_sigs = common dso_local global i32 0, align 4
@mac_proc_enforce = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_find_sigs(%struct.proc* %0, %struct.vnode* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.vnode* %1, %struct.vnode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @vnode_find_sigs, align 4
  %9 = load %struct.proc*, %struct.proc** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MAC_CHECK(i32 %8, %struct.proc* %9, %struct.vnode* %10, i32 %11, i32 %14)
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @MAC_CHECK(i32, %struct.proc*, %struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
