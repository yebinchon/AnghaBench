; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_null_getnewvnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_null_getnewvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.vnode_fsparam = type { i32, i8*, i32, i32, %struct.componentname*, i64, i64, i64, i32, i8*, %struct.vnode*, %struct.mount* }
%struct.null_node = type { i32, %struct.vnode* }

@VDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nullfs\00", align 1
@nullfs_vnodeop_p = common dso_local global i32 0, align 4
@VNFS_ADDFSREF = common dso_local global i32 0, align 4
@VNCREATE_FLAVOR = common dso_local global i32 0, align 4
@VCREATESIZE = common dso_local global i32 0, align 4
@VT_NULL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @null_getnewvnode(%struct.mount* %0, %struct.vnode* %1, %struct.vnode* %2, %struct.vnode** %3, %struct.componentname* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode_fsparam, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.null_node*, align 8
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store %struct.vnode** %3, %struct.vnode*** %11, align 8
  store %struct.componentname* %4, %struct.componentname** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @VDIR, align 4
  store i32 %18, i32* %16, align 4
  %19 = load %struct.vnode*, %struct.vnode** %9, align 8
  %20 = call %struct.null_node* @null_nodecreate(%struct.vnode* %19)
  store %struct.null_node* %20, %struct.null_node** %17, align 8
  %21 = load %struct.null_node*, %struct.null_node** %17, align 8
  %22 = icmp eq %struct.null_node* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %7, align 4
  br label %79

25:                                               ; preds = %6
  %26 = load %struct.vnode*, %struct.vnode** %9, align 8
  %27 = icmp ne %struct.vnode* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.vnode*, %struct.vnode** %9, align 8
  %30 = call i32 @vnode_vtype(%struct.vnode* %29)
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.mount*, %struct.mount** %8, align 8
  %33 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 11
  store %struct.mount* %32, %struct.mount** %33, align 8
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load %struct.vnode*, %struct.vnode** %10, align 8
  %38 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 10
  store %struct.vnode* %37, %struct.vnode** %38, align 8
  %39 = load %struct.null_node*, %struct.null_node** %17, align 8
  %40 = bitcast %struct.null_node* %39 to i8*
  %41 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 9
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* @nullfs_vnodeop_p, align 4
  %43 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 8
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %13, align 4
  %45 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.componentname*, %struct.componentname** %12, align 8
  %50 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 4
  store %struct.componentname* %49, %struct.componentname** %50, align 8
  %51 = load i32, i32* @VNFS_ADDFSREF, align 4
  %52 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %14, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @VNCREATE_FLAVOR, align 4
  %54 = load i32, i32* @VCREATESIZE, align 4
  %55 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %56 = call i32 @vnode_create(i32 %53, i32 %54, %struct.vnode_fsparam* %14, %struct.vnode** %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %31
  %60 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %61 = load %struct.vnode*, %struct.vnode** %60, align 8
  %62 = load %struct.null_node*, %struct.null_node** %17, align 8
  %63 = getelementptr inbounds %struct.null_node, %struct.null_node* %62, i32 0, i32 1
  store %struct.vnode* %61, %struct.vnode** %63, align 8
  %64 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %65 = load %struct.vnode*, %struct.vnode** %64, align 8
  %66 = call i32 @vnode_vid(%struct.vnode* %65)
  %67 = load %struct.null_node*, %struct.null_node** %17, align 8
  %68 = getelementptr inbounds %struct.null_node, %struct.null_node* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %70 = load %struct.vnode*, %struct.vnode** %69, align 8
  %71 = load i32, i32* @VT_NULL, align 4
  %72 = call i32 @vnode_settag(%struct.vnode* %70, i32 %71)
  br label %77

73:                                               ; preds = %31
  %74 = load %struct.null_node*, %struct.null_node** %17, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = call i32 @FREE(%struct.null_node* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %59
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %23
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.null_node* @null_nodecreate(%struct.vnode*) #1

declare dso_local i32 @vnode_vtype(%struct.vnode*) #1

declare dso_local i32 @vnode_create(i32, i32, %struct.vnode_fsparam*, %struct.vnode**) #1

declare dso_local i32 @vnode_vid(%struct.vnode*) #1

declare dso_local i32 @vnode_settag(%struct.vnode*, i32) #1

declare dso_local i32 @FREE(%struct.null_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
