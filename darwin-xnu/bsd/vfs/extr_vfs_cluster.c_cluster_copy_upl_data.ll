; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_copy_upl_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_copy_upl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i32, i64, i64 }

@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE = common dso_local global i32 0, align 4
@UIO_PHYS_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_PHYS_SYSSPACE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TASK_WRITE_DEFERRED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cluster_copy_upl_data(%struct.uio* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uio* %0, %struct.uio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @DBG_FSRW, align 4
  %21 = call i32 @FSDBG_CODE(i32 %20, i32 34)
  %22 = load i32, i32* @DBG_FUNC_START, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.uio*, %struct.uio** %5, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @KERNEL_DEBUG(i32 %23, i32 %27, i32 %28, i32 %29, i32 0, i32 0)
  %31 = load %struct.uio*, %struct.uio** %5, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %51 [
    i32 129, label %35
    i32 132, label %35
    i32 130, label %39
    i32 133, label %39
    i32 128, label %43
    i32 131, label %43
    i32 134, label %47
  ]

35:                                               ; preds = %4, %4
  %36 = load i32, i32* @UIO_PHYS_USERSPACE32, align 4
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %51

39:                                               ; preds = %4, %4
  %40 = load i32, i32* @UIO_PHYS_USERSPACE, align 4
  %41 = load %struct.uio*, %struct.uio** %5, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %51

43:                                               ; preds = %4, %4
  %44 = load i32, i32* @UIO_PHYS_USERSPACE64, align 4
  %45 = load %struct.uio*, %struct.uio** %5, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %4
  %48 = load i32, i32* @UIO_PHYS_SYSSPACE, align 4
  %49 = load %struct.uio*, %struct.uio** %5, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %4, %47, %43, %39, %35
  %52 = load i32, i32* %6, align 4
  %53 = call i32* @ubc_upl_pageinfo(i32 %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PAGE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @min(i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %65

65:                                               ; preds = %96, %51
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %109

73:                                               ; preds = %71
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @upl_phys_page(i32* %74, i32 %75)
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %17, align 4
  %82 = load %struct.uio*, %struct.uio** %5, align 8
  %83 = getelementptr inbounds %struct.uio, %struct.uio* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UIO_WRITE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %73
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @upl_dirty_page(i32* %88, i32 %89)
  %91 = load i64, i64* @FALSE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %93, %87, %73
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.uio*, %struct.uio** %5, align 8
  %100 = call i32 @uiomove64(i32 %97, i32 %98, %struct.uio* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @min(i32 %106, i32 %107)
  store i32 %108, i32* %11, align 4
  br label %65

109:                                              ; preds = %71
  %110 = load i32, i32* %14, align 4
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.uio*, %struct.uio** %5, align 8
  %114 = getelementptr inbounds %struct.uio, %struct.uio* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = call i32 (...) @current_task()
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* @TASK_WRITE_DEFERRED, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @upl_lookup_vnode(i32 %120)
  %122 = call i32 @task_update_logical_writes(i32 %115, i32 %118, i32 %119, i32 %121)
  %123 = load i32, i32* @DBG_FSRW, align 4
  %124 = call i32 @FSDBG_CODE(i32 %123, i32 34)
  %125 = load i32, i32* @DBG_FUNC_END, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.uio*, %struct.uio** %5, align 8
  %128 = getelementptr inbounds %struct.uio, %struct.uio* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @KERNEL_DEBUG(i32 %126, i32 %130, i32 %131, i32 %132, i32 %133, i32 0)
  %135 = load i32, i32* %13, align 4
  ret i32 %135
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32* @ubc_upl_pageinfo(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @upl_phys_page(i32*, i32) #1

declare dso_local i64 @upl_dirty_page(i32*, i32) #1

declare dso_local i32 @uiomove64(i32, i32, %struct.uio*) #1

declare dso_local i32 @task_update_logical_writes(i32, i32, i32, i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @upl_lookup_vnode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
