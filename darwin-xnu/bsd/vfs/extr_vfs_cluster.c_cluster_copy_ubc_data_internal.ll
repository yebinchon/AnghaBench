; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_copy_ubc_data_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_copy_ubc_data_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32, i32 }

@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@UBC_FLAGS_NONE = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE = common dso_local global i32 0, align 4
@UIO_PHYS_SYSSPACE = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio*, i32*, i32, i32)* @cluster_copy_ubc_data_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_copy_ubc_data_internal(i32 %0, %struct.uio* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uio*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.uio* %1, %struct.uio** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @DBG_FSRW, align 4
  %21 = call i32 @FSDBG_CODE(i32 %20, i32 34)
  %22 = load i32, i32* @DBG_FUNC_START, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.uio*, %struct.uio** %8, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @KERNEL_DEBUG(i32 %23, i32 %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @UBC_FLAGS_NONE, align 4
  %33 = call i64 @ubc_getobject(i32 %31, i32 %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* @MEMORY_OBJECT_CONTROL_NULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %5
  %38 = load i32, i32* @DBG_FSRW, align 4
  %39 = call i32 @FSDBG_CODE(i32 %38, i32 34)
  %40 = load i32, i32* @DBG_FUNC_END, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.uio*, %struct.uio** %8, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @KERNEL_DEBUG(i32 %41, i32 %44, i32 %45, i32 %46, i32 3, i32 0)
  store i32 0, i32* %6, align 4
  br label %119

48:                                               ; preds = %5
  %49 = load %struct.uio*, %struct.uio** %8, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %69 [
    i32 129, label %53
    i32 132, label %53
    i32 128, label %57
    i32 131, label %57
    i32 130, label %61
    i32 133, label %61
    i32 134, label %65
  ]

53:                                               ; preds = %48, %48
  %54 = load i32, i32* @UIO_PHYS_USERSPACE32, align 4
  %55 = load %struct.uio*, %struct.uio** %8, align 8
  %56 = getelementptr inbounds %struct.uio, %struct.uio* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %69

57:                                               ; preds = %48, %48
  %58 = load i32, i32* @UIO_PHYS_USERSPACE64, align 4
  %59 = load %struct.uio*, %struct.uio** %8, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %48, %48
  %62 = load i32, i32* @UIO_PHYS_USERSPACE, align 4
  %63 = load %struct.uio*, %struct.uio** %8, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %48
  %66 = load i32, i32* @UIO_PHYS_SYSSPACE, align 4
  %67 = load %struct.uio*, %struct.uio** %8, align 8
  %68 = getelementptr inbounds %struct.uio, %struct.uio* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %48, %65, %61, %57, %53
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.uio*, %struct.uio** %8, align 8
  %75 = getelementptr inbounds %struct.uio, %struct.uio* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PAGE_MASK_64, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %15, align 4
  %79 = load %struct.uio*, %struct.uio** %8, align 8
  %80 = call i32 @uio_resid(%struct.uio* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i64, i64* %17, align 8
  %82 = load %struct.uio*, %struct.uio** %8, align 8
  %83 = getelementptr inbounds %struct.uio, %struct.uio* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load %struct.uio*, %struct.uio** %8, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @memory_object_control_uiomove(i64 %81, i32 %86, %struct.uio* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load %struct.uio*, %struct.uio** %8, align 8
  %94 = call i32 @uio_resid(%struct.uio* %93)
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %73, %69
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.uio*, %struct.uio** %8, align 8
  %103 = getelementptr inbounds %struct.uio, %struct.uio* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @DBG_FSRW, align 4
  %107 = call i32 @FSDBG_CODE(i32 %106, i32 34)
  %108 = load i32, i32* @DBG_FUNC_END, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.uio*, %struct.uio** %8, align 8
  %111 = getelementptr inbounds %struct.uio, %struct.uio* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 -2147483648, %115
  %117 = call i32 @KERNEL_DEBUG(i32 %109, i32 %112, i32 %113, i32 %114, i32 %116, i32 0)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %100, %37
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i64 @ubc_getobject(i32, i32) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32 @memory_object_control_uiomove(i64, i32, %struct.uio*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
