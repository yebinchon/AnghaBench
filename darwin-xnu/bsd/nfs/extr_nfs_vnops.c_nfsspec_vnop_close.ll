; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfsspec_vnop_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfsspec_vnop_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_close_args = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.vnode_attr = type { i32, i32 }

@NACC = common dso_local global i32 0, align 4
@NUPD = common dso_local global i32 0, align 4
@NCHG = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@spec_vnodeop_p = common dso_local global i32 0, align 4
@vnop_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsspec_vnop_close(%struct.vnop_close_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_close_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.vnode_attr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vnop_close_args* %0, %struct.vnop_close_args** %3, align 8
  %9 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.TYPE_5__* @VTONFS(i32 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = call i32 @nfs_node_lock(%struct.TYPE_5__* %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NACC, align 4
  %24 = load i32, i32* @NUPD, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %19
  %29 = load i32, i32* @NCHG, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @vnode_isinuse(i32 %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @vnode_mount(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @vfs_isrdonly(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %82, label %45

45:                                               ; preds = %41
  %46 = call i32 @VATTR_INIT(%struct.vnode_attr* %6)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NACC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %6, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @va_access_time, align 4
  %59 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %6, i32 %58)
  br label %60

60:                                               ; preds = %53, %45
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NUPD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %6, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @va_modify_time, align 4
  %73 = call i32 @VATTR_SET_ACTIVE(%struct.vnode_attr* %6, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = call i32 @nfs_node_unlock(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %79 = getelementptr inbounds %struct.vnop_close_args, %struct.vnop_close_args* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vnode_setattr(i32 %77, %struct.vnode_attr* %6, i32 %80)
  br label %85

82:                                               ; preds = %41, %37, %28
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = call i32 @nfs_node_unlock(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %82, %74
  br label %89

86:                                               ; preds = %19
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = call i32 @nfs_node_unlock(%struct.TYPE_5__* %87)
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32, i32* @spec_vnodeop_p, align 4
  %91 = load i32, i32* @vnop_close, align 4
  %92 = call i32 @VOFFSET(i32 %91)
  %93 = load %struct.vnop_close_args*, %struct.vnop_close_args** %3, align 8
  %94 = call i32 @VOCALL(i32 %90, i32 %92, %struct.vnop_close_args* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %89, %17
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_5__* @VTONFS(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @vnode_isinuse(i32, i32) #1

declare dso_local i32 @vnode_mount(i32) #1

declare dso_local i32 @vfs_isrdonly(i32) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @vnode_setattr(i32, %struct.vnode_attr*, i32) #1

declare dso_local i32 @VOCALL(i32, i32, %struct.vnop_close_args*) #1

declare dso_local i32 @VOFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
