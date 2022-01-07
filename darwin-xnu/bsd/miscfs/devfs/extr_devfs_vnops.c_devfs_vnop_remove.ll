; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_vnop_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_vnop_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_remove_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i8*, i32, i32 }
%struct.vnode = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEV_DIR = common dso_local global i64 0, align 8
@ISDOTDOT = common dso_local global i32 0, align 4
@DEVFS_UPDATE_CHANGE = common dso_local global i32 0, align 4
@DEVFS_UPDATE_MOD = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_remove_args*)* @devfs_vnop_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_vnop_remove(%struct.vnop_remove_args* %0) #0 {
  %2 = alloca %struct.vnop_remove_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vnop_remove_args* %0, %struct.vnop_remove_args** %2, align 8
  %11 = load %struct.vnop_remove_args*, %struct.vnop_remove_args** %2, align 8
  %12 = getelementptr inbounds %struct.vnop_remove_args, %struct.vnop_remove_args* %11, i32 0, i32 2
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %3, align 8
  %14 = load %struct.vnop_remove_args*, %struct.vnop_remove_args** %2, align 8
  %15 = getelementptr inbounds %struct.vnop_remove_args, %struct.vnop_remove_args* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vnop_remove_args*, %struct.vnop_remove_args** %2, align 8
  %18 = getelementptr inbounds %struct.vnop_remove_args, %struct.vnop_remove_args* %17, i32 0, i32 0
  %19 = load %struct.componentname*, %struct.componentname** %18, align 8
  store %struct.componentname* %19, %struct.componentname** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = call i32 (...) @DEVFS_LOCK()
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = call %struct.TYPE_5__* @VTODN(%struct.vnode* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = call %struct.TYPE_5__* @VTODN(%struct.vnode* %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %7, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = load %struct.componentname*, %struct.componentname** %5, align 8
  %27 = getelementptr inbounds %struct.componentname, %struct.componentname* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32* @dev_findname(%struct.TYPE_5__* %25, i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOENT, align 4
  store i32 %33, i32* %10, align 4
  br label %92

34:                                               ; preds = %1
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = load %struct.componentname*, %struct.componentname** %5, align 8
  %37 = getelementptr inbounds %struct.componentname, %struct.componentname* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @devfs_is_name_protected(%struct.vnode* %35, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %10, align 4
  br label %92

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DEV_DIR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %43
  %50 = load %struct.componentname*, %struct.componentname** %5, align 8
  %51 = getelementptr inbounds %struct.componentname, %struct.componentname* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.componentname*, %struct.componentname** %5, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 46
  br i1 %61, label %69, label %62

62:                                               ; preds = %54, %49
  %63 = load %struct.componentname*, %struct.componentname** %5, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISDOTDOT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62, %54
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %10, align 4
  br label %92

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %43
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = load i32, i32* @DEVFS_UPDATE_CHANGE, align 4
  %77 = load i32, i32* @DEVFS_UPDATE_MOD, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @devfs_consider_time_update(%struct.TYPE_5__* %75, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %88, i32* %10, align 4
  br label %92

89:                                               ; preds = %82, %74
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @dev_free_name(i32* %90)
  br label %92

92:                                               ; preds = %89, %87, %69, %41, %32
  %93 = call i32 (...) @DEVFS_UNLOCK()
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_5__* @VTODN(%struct.vnode*) #1

declare dso_local i32* @dev_findname(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @devfs_is_name_protected(%struct.vnode*, i8*) #1

declare dso_local i32 @devfs_consider_time_update(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_free_name(i32*) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
