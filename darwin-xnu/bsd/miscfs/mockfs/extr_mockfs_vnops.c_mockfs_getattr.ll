; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_getattr_args = type { %struct.vnode_attr*, %struct.TYPE_3__* }
%struct.vnode_attr = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@va_nlink = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@va_total_size = common dso_local global i32 0, align 4
@va_total_alloc = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_getattr(%struct.vnop_getattr_args* %0) #0 {
  %2 = alloca %struct.vnop_getattr_args*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.vnode_attr*, align 8
  store %struct.vnop_getattr_args* %0, %struct.vnop_getattr_args** %2, align 8
  %6 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %2, align 8
  %7 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  %13 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %2, align 8
  %14 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %13, i32 0, i32 0
  %15 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  store %struct.vnode_attr* %15, %struct.vnode_attr** %5, align 8
  %16 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %17 = call i32 @bzero(%struct.vnode_attr* %16, i32 4)
  %18 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %19 = load i32, i32* @va_nlink, align 4
  %20 = call i32 @VATTR_RETURN(%struct.vnode_attr* %18, i32 %19, i32 1)
  %21 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %22 = load i32, i32* @va_mode, align 4
  %23 = load i32, i32* @VREAD, align 4
  %24 = load i32, i32* @VWRITE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @VEXEC, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @VATTR_RETURN(%struct.vnode_attr* %21, i32 %22, i32 %27)
  %29 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %30 = load i32, i32* @va_fileid, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @VATTR_RETURN(%struct.vnode_attr* %29, i32 %30, i32 %33)
  %35 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %36 = load i32, i32* @va_total_size, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VATTR_RETURN(%struct.vnode_attr* %35, i32 %36, i32 %39)
  %41 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %42 = load i32, i32* @va_total_alloc, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @VATTR_RETURN(%struct.vnode_attr* %41, i32 %42, i32 %45)
  %47 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %48 = load i32, i32* @va_data_size, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @VATTR_RETURN(%struct.vnode_attr* %47, i32 %48, i32 %51)
  %53 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %54 = load i32, i32* @va_data_alloc, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VATTR_RETURN(%struct.vnode_attr* %53, i32 %54, i32 %57)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
