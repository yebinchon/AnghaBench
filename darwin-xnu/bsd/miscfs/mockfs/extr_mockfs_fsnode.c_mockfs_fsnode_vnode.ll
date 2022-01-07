; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_vnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_fsnode.c_mockfs_fsnode_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.vnode_fsparam = type { i8*, i32, i32, i32*, i32, i64, i64, i32, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_6__* }

@EINVAL = common dso_local global i32 0, align 4
@MOCKFS_FILE = common dso_local global i64 0, align 8
@VREG = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mockfs\00", align 1
@MOCKFS_ROOT = common dso_local global i64 0, align 8
@mockfs_vnodeop_p = common dso_local global i32 0, align 4
@VNFS_CANTCACHE = common dso_local global i32 0, align 4
@VNFS_NOCACHE = common dso_local global i32 0, align 4
@VNCREATE_FLAVOR = common dso_local global i32 0, align 4
@VCREATESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"mockfs_fsvnode failed to get ubc_mem_object for a new vnode\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [94 x i8] c"mockfs_fsnode_vnode failed to create fictitious pages for a memory-backed device; rvalue = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_fsnode_vnode(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.vnode_fsparam, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %155

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = call i32 @lck_mtx_lock(i32* %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %16
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vnode_get(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %30
  br label %151

43:                                               ; preds = %16
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 11
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MOCKFS_FILE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @VREG, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* @VDIR, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 10
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MOCKFS_ROOT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %73

67:                                               ; preds = %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  br label %73

73:                                               ; preds = %67, %66
  %74 = phi i32* [ null, %66 ], [ %72, %67 ]
  %75 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 9
  store i32* %74, i32** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %77, align 8
  %78 = load i32, i32* @mockfs_vnodeop_p, align 4
  %79 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 7
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MOCKFS_ROOT, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 4
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load i32, i32* @VNFS_CANTCACHE, align 4
  %95 = load i32, i32* @VNFS_NOCACHE, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds %struct.vnode_fsparam, %struct.vnode_fsparam* %8, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @VNCREATE_FLAVOR, align 4
  %99 = load i32, i32* @VCREATESIZE, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = call i32 @vnode_create(i32 %98, i32 %99, %struct.vnode_fsparam* %8, i32* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %142, label %105

105:                                              ; preds = %73
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MOCKFS_FILE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %105
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %111
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ubc_getobject(i32 %119, i32 0)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %116
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PAGE_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pager_map_to_phys_contiguous(i32 %126, i32 0, i32 %131, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %125
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %138, %125
  br label %142

142:                                              ; preds = %141, %111, %105, %73
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %4, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %142
  br label %151

151:                                              ; preds = %150, %42
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = call i32 @lck_mtx_unlock(i32* %153)
  br label %155

155:                                              ; preds = %151, %14
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @vnode_get(i32) #1

declare dso_local i32 @vnode_create(i32, i32, %struct.vnode_fsparam*, i32*) #1

declare dso_local i32 @ubc_getobject(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @pager_map_to_phys_contiguous(i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
