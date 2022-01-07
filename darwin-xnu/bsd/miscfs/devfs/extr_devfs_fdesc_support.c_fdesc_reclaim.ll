; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_reclaim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_fdesc_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { i32* }
%struct.fdescnode = type { i32 }

@fd_hash = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdesc_reclaim(%struct.vnop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vnop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.fdescnode*, align 8
  store %struct.vnop_reclaim_args* %0, %struct.vnop_reclaim_args** %2, align 8
  %5 = load %struct.vnop_reclaim_args*, %struct.vnop_reclaim_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_reclaim_args, %struct.vnop_reclaim_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.fdescnode* @VTOFDESC(%struct.vnode* %8)
  store %struct.fdescnode* %9, %struct.fdescnode** %4, align 8
  %10 = call i32 (...) @fdesc_lock()
  %11 = load %struct.fdescnode*, %struct.fdescnode** %4, align 8
  %12 = load i32, i32* @fd_hash, align 4
  %13 = call i32 @LIST_REMOVE(%struct.fdescnode* %11, i32 %12)
  %14 = load %struct.vnode*, %struct.vnode** %3, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @M_TEMP, align 4
  %18 = call i32 @FREE(i32* %16, i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = call i32 (...) @fdesc_unlock()
  ret i32 0
}

declare dso_local %struct.fdescnode* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @fdesc_lock(...) #1

declare dso_local i32 @LIST_REMOVE(%struct.fdescnode*, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @fdesc_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
