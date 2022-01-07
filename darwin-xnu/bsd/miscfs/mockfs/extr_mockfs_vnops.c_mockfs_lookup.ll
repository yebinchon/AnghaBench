; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_lookup_args = type { i32, %struct.componentname*, %struct.TYPE_7__**, %struct.TYPE_7__* }
%struct.componentname = type { i32, i8*, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@LOOKUP = common dso_local global i32 0, align 4
@MOCKFS_ROOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"sbin\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@MOCKFS_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"launchd\00", align 1
@MOCKFS_FILE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_lookup(%struct.vnop_lookup_args* %0) #0 {
  %2 = alloca %struct.vnop_lookup_args*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.componentname*, align 8
  store %struct.vnop_lookup_args* %0, %struct.vnop_lookup_args** %2, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %13 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %12, i32 0, i32 3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %16 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %16, align 8
  store %struct.TYPE_7__** %17, %struct.TYPE_7__*** %9, align 8
  %18 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %19 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %18, i32 0, i32 1
  %20 = load %struct.componentname*, %struct.componentname** %19, align 8
  store %struct.componentname* %20, %struct.componentname** %11, align 8
  %21 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %2, align 8
  %22 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.componentname*, %struct.componentname** %11, align 8
  %25 = getelementptr inbounds %struct.componentname, %struct.componentname* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @LOOKUP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %103

34:                                               ; preds = %1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MOCKFS_ROOT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %34
  %41 = load %struct.componentname*, %struct.componentname** %11, align 8
  %42 = getelementptr inbounds %struct.componentname, %struct.componentname* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.componentname*, %struct.componentname** %11, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %3, align 1
  %49 = load %struct.componentname*, %struct.componentname** %11, align 8
  %50 = getelementptr inbounds %struct.componentname, %struct.componentname* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.componentname*, %struct.componentname** %11, align 8
  %53 = getelementptr inbounds %struct.componentname, %struct.componentname* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load %struct.componentname*, %struct.componentname** %11, align 8
  %57 = getelementptr inbounds %struct.componentname, %struct.componentname* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %40
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %7, align 8
  br label %87

63:                                               ; preds = %40
  %64 = load %struct.componentname*, %struct.componentname** %11, align 8
  %65 = getelementptr inbounds %struct.componentname, %struct.componentname* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = load i32, i32* @MOCKFS_DEV, align 4
  %72 = call i32 @mockfs_fsnode_child_by_type(%struct.TYPE_8__* %70, i32 %71, %struct.TYPE_8__** %7)
  br label %86

73:                                               ; preds = %63
  %74 = load %struct.componentname*, %struct.componentname** %11, align 8
  %75 = getelementptr inbounds %struct.componentname, %struct.componentname* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = load i32, i32* @MOCKFS_FILE, align 4
  %82 = call i32 @mockfs_fsnode_child_by_type(%struct.TYPE_8__* %80, i32 %81, %struct.TYPE_8__** %7)
  br label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @ENOENT, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %79
  br label %86

86:                                               ; preds = %85, %69
  br label %87

87:                                               ; preds = %86, %61
  %88 = load i8, i8* %3, align 1
  %89 = load %struct.componentname*, %struct.componentname** %11, align 8
  %90 = getelementptr inbounds %struct.componentname, %struct.componentname* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.componentname*, %struct.componentname** %11, align 8
  %93 = getelementptr inbounds %struct.componentname, %struct.componentname* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %88, i8* %95, align 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %101 = call i32 @mockfs_fsnode_vnode(%struct.TYPE_8__* %99, %struct.TYPE_7__** %100)
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %87
  br label %105

103:                                              ; preds = %34, %1
  %104 = load i32, i32* @ENOENT, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %102
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mockfs_fsnode_child_by_type(%struct.TYPE_8__*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @mockfs_fsnode_vnode(%struct.TYPE_8__*, %struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
