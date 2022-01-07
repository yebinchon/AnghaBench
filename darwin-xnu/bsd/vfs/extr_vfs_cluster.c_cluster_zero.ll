; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_zero.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cluster_zero(i32 %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %14 = load i32, i32* @DBG_FSRW, align 4
  %15 = call i32 @FSDBG_CODE(i32 %14, i32 23)
  %16 = load i32, i32* @DBG_FUNC_START, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = call i32 @KERNEL_DEBUG(i32 %17, i32 %18, i32 %19, %struct.TYPE_4__* %20, i32 0, i32 0)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %24, %4
  %30 = load i32, i32* %5, align 4
  %31 = call i32* @ubc_upl_pageinfo(i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @upl_device_page(i32* %32)
  %34 = load i64, i64* @TRUE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @upl_phys_page(i32* %37, i32 0)
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bzero_phys_nc(i32 %44, i32 %45)
  br label %81

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %51, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @upl_phys_page(i32* %58, i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @bzero_phys(i32 %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %48

80:                                               ; preds = %48
  br label %81

81:                                               ; preds = %80, %36
  br label %92

82:                                               ; preds = %24
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @bzero(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %81
  %93 = load i32, i32* @DBG_FSRW, align 4
  %94 = call i32 @FSDBG_CODE(i32 %93, i32 23)
  %95 = load i32, i32* @DBG_FUNC_END, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @KERNEL_DEBUG(i32 %96, i32 %97, i32 %98, %struct.TYPE_4__* null, i32 0, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32* @ubc_upl_pageinfo(i32) #1

declare dso_local i64 @upl_device_page(i32*) #1

declare dso_local i64 @upl_phys_page(i32*, i32) #1

declare dso_local i32 @bzero_phys_nc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bzero_phys(i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
