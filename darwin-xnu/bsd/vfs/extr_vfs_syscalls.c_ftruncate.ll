; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_ftruncate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftruncate_args = type { i32, i64 }
%struct.vnode_attr = type { i32 }
%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@vnpath_withref = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftruncate(i32 %0, %struct.ftruncate_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ftruncate_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode_attr, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.fileproc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ftruncate_args* %1, %struct.ftruncate_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = call i32 (...) @vfs_context_current()
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %16 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %20 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %18, i32 %21)
  %23 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %24 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @fp_lookup(i32 %30, i32 %31, %struct.fileproc** %11, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %29
  %37 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %38 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_2__* %39)
  switch i32 %40, label %53 [
    i32 129, label %41
    i32 128, label %52
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %44 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %45 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %48 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @pshm_truncate(i32 %42, %struct.fileproc* %43, i32 %46, i64 %49, i32* %50)
  store i32 %51, i32* %12, align 4
  br label %98

52:                                               ; preds = %36
  br label %55

53:                                               ; preds = %36
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %12, align 4
  br label %98

55:                                               ; preds = %52
  %56 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %57 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %10, align 8
  %61 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %62 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FWRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load i32, i32* @vnpath_withref, align 4
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @ARG_VNODE1, align 4
  %74 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %70, i32 %72, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %12, align 4
  br label %98

76:                                               ; preds = %55
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @vnode_getwithref(i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %98

81:                                               ; preds = %76
  %82 = load i32, i32* @vnpath, align 4
  %83 = load i64, i64* %10, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @ARG_VNODE1, align 4
  %86 = call i32 (i32, i32, ...) @AUDIT_ARG(i32 %82, i32 %84, i32 %85)
  %87 = call i32 @VATTR_INIT(%struct.vnode_attr* %9)
  %88 = load i32, i32* @va_data_size, align 4
  %89 = load %struct.ftruncate_args*, %struct.ftruncate_args** %6, align 8
  %90 = getelementptr inbounds %struct.ftruncate_args, %struct.ftruncate_args* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @VATTR_SET(%struct.vnode_attr* %9, i32 %88, i64 %91)
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @vnode_setattr(i64 %93, %struct.vnode_attr* %9, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @vnode_put(i64 %96)
  br label %98

98:                                               ; preds = %81, %80, %69, %53, %41
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @file_drop(i32 %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %34, %27
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @AUDIT_ARG(i32, i32, ...) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_2__*) #1

declare dso_local i32 @pshm_truncate(i32, %struct.fileproc*, i32, i64, i32*) #1

declare dso_local i32 @vnode_getwithref(i64) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i64) #1

declare dso_local i32 @vnode_setattr(i64, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i32 @file_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
