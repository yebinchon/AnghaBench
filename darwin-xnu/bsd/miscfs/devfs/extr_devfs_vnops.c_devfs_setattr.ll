; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_setattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_vnops.c_devfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_setattr_args = type { %struct.vnode_attr*, %struct.vnode* }
%struct.vnode_attr = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }

@va_access_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@va_change_time = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_setattr_args*)* @devfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_setattr(%struct.vnop_setattr_args* %0) #0 {
  %2 = alloca %struct.vnop_setattr_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode_attr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  store %struct.vnop_setattr_args* %0, %struct.vnop_setattr_args** %2, align 8
  %9 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %2, align 8
  %10 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %9, i32 0, i32 1
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vnop_setattr_args*, %struct.vnop_setattr_args** %2, align 8
  %13 = getelementptr inbounds %struct.vnop_setattr_args, %struct.vnop_setattr_args* %12, i32 0, i32 0
  %14 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  store %struct.vnode_attr* %14, %struct.vnode_attr** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = call i32 (...) @DEVFS_LOCK()
  %16 = load %struct.vnode*, %struct.vnode** %3, align 8
  %17 = call %struct.TYPE_7__* @VTODN(%struct.vnode* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %6, align 8
  %18 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %19 = load i32, i32* @va_access_time, align 4
  %20 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %24 = load i32, i32* @va_modify_time, align 4
  %25 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %22, %1
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %29 = load i32, i32* @va_access_time, align 4
  %30 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %37 = load i32, i32* @va_modify_time, align 4
  %38 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %47 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %52 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 1000
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %58 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %63 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 1000
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.vnode*, %struct.vnode** %3, align 8
  %69 = call i32 @devfs_update(%struct.vnode* %68, %struct.timeval* %7, %struct.timeval* %8)
  store i32 %69, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %129

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %22
  %74 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %75 = load i32, i32* @va_access_time, align 4
  %76 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %74, i32 %75)
  %77 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %78 = load i32, i32* @va_change_time, align 4
  %79 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %77, i32 %78)
  %80 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %81 = load i32, i32* @va_mode, align 4
  %82 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, -4096
  store i32 %88, i32* %86, align 4
  %89 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %90 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 4095
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %84, %73
  %98 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %99 = load i32, i32* @va_mode, align 4
  %100 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %98, i32 %99)
  %101 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %102 = load i32, i32* @va_uid, align 4
  %103 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %107 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %97
  %112 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %113 = load i32, i32* @va_uid, align 4
  %114 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %112, i32 %113)
  %115 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %116 = load i32, i32* @va_gid, align 4
  %117 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %121 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %127 = load i32, i32* @va_gid, align 4
  %128 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %71
  %130 = call i32 (...) @DEVFS_UNLOCK()
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @DEVFS_LOCK(...) #1

declare dso_local %struct.TYPE_7__* @VTODN(%struct.vnode*) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @devfs_update(%struct.vnode*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @DEVFS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
