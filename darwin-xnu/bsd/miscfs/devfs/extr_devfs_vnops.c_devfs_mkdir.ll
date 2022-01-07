; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_mkdir_args = type { i32, %struct.vnode**, %struct.vnode_attr*, %struct.componentname* }
%struct.vnode = type { i32 }
%struct.vnode_attr = type { i32 }
%struct.componentname = type { i32, i32 }
%struct.proc = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@DEV_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_mkdir_args*)* @devfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_mkdir(%struct.vnop_mkdir_args* %0) #0 {
  %2 = alloca %struct.vnop_mkdir_args*, align 8
  %3 = alloca %struct.componentname*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca %struct.vnode**, align 8
  store %struct.vnop_mkdir_args* %0, %struct.vnop_mkdir_args** %2, align 8
  %12 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %13 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %12, i32 0, i32 3
  %14 = load %struct.componentname*, %struct.componentname** %13, align 8
  store %struct.componentname* %14, %struct.componentname** %3, align 8
  %15 = load %struct.componentname*, %struct.componentname** %3, align 8
  %16 = getelementptr inbounds %struct.componentname, %struct.componentname* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.proc* @vfs_context_proc(i32 %18)
  store %struct.proc* %19, %struct.proc** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %21 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %20, i32 0, i32 2
  %22 = load %struct.vnode_attr*, %struct.vnode_attr** %21, align 8
  store %struct.vnode_attr* %22, %struct.vnode_attr** %10, align 8
  %23 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %24 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %23, i32 0, i32 1
  %25 = load %struct.vnode**, %struct.vnode*** %24, align 8
  store %struct.vnode** %25, %struct.vnode*** %11, align 8
  %26 = call i32 (...) @DEVFS_LOCK()
  %27 = load %struct.vnop_mkdir_args*, %struct.vnop_mkdir_args** %2, align 8
  %28 = getelementptr inbounds %struct.vnop_mkdir_args, %struct.vnop_mkdir_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_9__* @VTODN(i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %7, align 8
  %31 = load %struct.componentname*, %struct.componentname** %3, align 8
  %32 = getelementptr inbounds %struct.componentname, %struct.componentname* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = load i32, i32* @DEV_DIR, align 4
  %36 = call i32 @dev_add_entry(i32 %33, %struct.TYPE_9__* %34, i32 %35, i32* null, i32* null, i32* null, %struct.TYPE_10__** %8)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %66

40:                                               ; preds = %1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %55 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = call i32 @dn_copy_times(%struct.TYPE_9__* %59, %struct.TYPE_9__* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %64 = load %struct.proc*, %struct.proc** %5, align 8
  %65 = call i32 @devfs_dntovn(%struct.TYPE_9__* %62, %struct.vnode** %63, %struct.proc* %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %40, %39
  %67 = call i32 (...) @DEVFS_UNLOCK()
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_9__* @VTODN(i32) #1

declare dso_local i32 @dev_add_entry(i32, %struct.TYPE_9__*, i32, i32*, i32*, i32*, %struct.TYPE_10__**) #1

declare dso_local i32 @dn_copy_times(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @devfs_dntovn(%struct.TYPE_9__*, %struct.vnode**, %struct.proc*) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
