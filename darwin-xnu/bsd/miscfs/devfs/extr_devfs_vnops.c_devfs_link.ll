; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_link_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i64, i32 }
%struct.vnode = type { i64 }

@DEVMAXNAMESIZE = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@DEVFS_UPDATE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_link_args*)* @devfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_link(%struct.vnop_link_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_link_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.vnop_link_args* %0, %struct.vnop_link_args** %3, align 8
  %11 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %12 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %5, align 8
  %17 = load %struct.vnop_link_args*, %struct.vnop_link_args** %3, align 8
  %18 = getelementptr inbounds %struct.vnop_link_args, %struct.vnop_link_args* %17, i32 0, i32 0
  %19 = load %struct.componentname*, %struct.componentname** %18, align 8
  store %struct.componentname* %19, %struct.componentname** %6, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.componentname*, %struct.componentname** %6, align 8
  %21 = getelementptr inbounds %struct.componentname, %struct.componentname* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DEVMAXNAMESIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %26, i32* %10, align 4
  br label %56

27:                                               ; preds = %1
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = call i32* @VTODN(%struct.vnode* %28)
  store i32* %29, i32** %8, align 8
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @EXDEV, align 4
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %27
  %40 = call i32 (...) @DEVFS_LOCK()
  %41 = load %struct.vnode*, %struct.vnode** %4, align 8
  %42 = call i32* @VTODN(%struct.vnode* %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @DEVFS_UPDATE_CHANGE, align 4
  %45 = call i32 @dn_times_now(i32* %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load %struct.componentname*, %struct.componentname** %6, align 8
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @dev_add_name(i32 %51, i32* %52, i32* null, i32* %53, i32** %9)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %39
  br label %56

56:                                               ; preds = %55, %25
  %57 = call i32 (...) @DEVFS_UNLOCK()
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32* @VTODN(%struct.vnode*) #1

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local i32 @dn_times_now(i32*, i32) #1

declare dso_local i32 @dev_add_name(i32, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
