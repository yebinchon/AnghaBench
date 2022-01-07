; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_file = type { i32 }
%struct.componentname = type { i32 }
%struct.vnode_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_open_rpc(%struct.nfs_open_file* %0, i32 %1, %struct.componentname* %2, %struct.vnode_attr* %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.nfs_open_file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nfs_open_file* %0, %struct.nfs_open_file** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.componentname* %2, %struct.componentname** %12, align 8
  store %struct.vnode_attr* %3, %struct.vnode_attr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.nfs_open_file*, %struct.nfs_open_file** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @vfs_context_thread(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @vfs_context_ucred(i32 %23)
  %25 = load %struct.componentname*, %struct.componentname** %12, align 8
  %26 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %18, align 4
  %32 = call i32 @nfs4_open_rpc_internal(%struct.nfs_open_file* %19, i32 %20, i32 %22, i32 %24, %struct.componentname* %25, %struct.vnode_attr* %26, i32 %27, i32* %28, i32 %29, i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @nfs4_open_rpc_internal(%struct.nfs_open_file*, i32, i32, i32, %struct.componentname*, %struct.vnode_attr*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
