; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_compaction_swapper_do_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_compaction_swapper_do_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@compaction_swapper_inited = common dso_local global i32 0, align 4
@vm_compressor_mode = common dso_local global i64 0, align 8
@VM_PAGER_COMPRESSOR_WITH_SWAP = common dso_local global i64 0, align 8
@vm_swap_data_lock = common dso_local global i32 0, align 4
@swapfilename = common dso_local global i8* null, align 8
@SWAPFILENAME_INDEX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@vm_compressor_minorcompact_threshold_divisor_overridden = common dso_local global i64 0, align 8
@vm_compressor_minorcompact_threshold_divisor = common dso_local global i32 0, align 4
@vm_compressor_majorcompact_threshold_divisor_overridden = common dso_local global i64 0, align 8
@vm_compressor_majorcompact_threshold_divisor = common dso_local global i32 0, align 4
@vm_compressor_unthrottle_threshold_divisor_overridden = common dso_local global i64 0, align 8
@vm_compressor_unthrottle_threshold_divisor = common dso_local global i32 0, align 4
@vm_compressor_catchup_threshold_divisor_overridden = common dso_local global i64 0, align 8
@vm_compressor_catchup_threshold_divisor = common dso_local global i32 0, align 4
@vm_swappin_avail = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@vm_swappin_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compaction_swapper_do_init() #0 {
  %1 = alloca %struct.vnode*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @compaction_swapper_inited, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %79

7:                                                ; preds = %0
  %8 = load i64, i64* @vm_compressor_mode, align 8
  %9 = load i64, i64* @VM_PAGER_COMPRESSOR_WITH_SWAP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, i32* @compaction_swapper_inited, align 4
  br label %79

12:                                               ; preds = %7
  %13 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %14 = load i32, i32* @compaction_swapper_inited, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @swapfilename, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @SWAPFILENAME_INDEX_LEN, align 4
  %21 = add nsw i32 %19, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @kalloc(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %2, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @memset(i8* %26, i32 0, i32 %27)
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i8*, i8** @swapfilename, align 8
  %32 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31, i32 0)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @vm_swapfile_open(i8* %33, %struct.vnode** %1)
  %35 = load %struct.vnode*, %struct.vnode** %1, align 8
  %36 = icmp ne %struct.vnode* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %16
  %38 = load %struct.vnode*, %struct.vnode** %1, align 8
  %39 = call i64 @vnode_pager_isSSD(%struct.vnode* %38)
  %40 = load i64, i64* @FALSE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load i64, i64* @vm_compressor_minorcompact_threshold_divisor_overridden, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 15, i32* @vm_compressor_minorcompact_threshold_divisor, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i64, i64* @vm_compressor_majorcompact_threshold_divisor_overridden, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 18, i32* @vm_compressor_majorcompact_threshold_divisor, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i64, i64* @vm_compressor_unthrottle_threshold_divisor_overridden, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 24, i32* @vm_compressor_unthrottle_threshold_divisor, align 4
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i64, i64* @vm_compressor_catchup_threshold_divisor_overridden, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 30, i32* @vm_compressor_catchup_threshold_divisor, align 4
  br label %58

58:                                               ; preds = %57, %54
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.vnode*, %struct.vnode** %1, align 8
  %61 = call i32 @vnode_setswapmount(%struct.vnode* %60)
  %62 = load %struct.vnode*, %struct.vnode** %1, align 8
  %63 = call i64 @vnode_getswappin_avail(%struct.vnode* %62)
  store i64 %63, i64* @vm_swappin_avail, align 8
  %64 = load i64, i64* @vm_swappin_avail, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* @vm_swappin_enabled, align 4
  br label %68

68:                                               ; preds = %66, %59
  %69 = load i8*, i8** %2, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.vnode*, %struct.vnode** %1, align 8
  %72 = call i32 @vm_swapfile_close(i32 %70, %struct.vnode* %71)
  br label %73

73:                                               ; preds = %68, %16
  %74 = load i8*, i8** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @kfree(i8* %74, i32 %75)
  store i32 1, i32* @compaction_swapper_inited, align 4
  br label %77

77:                                               ; preds = %73, %12
  %78 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  br label %79

79:                                               ; preds = %77, %11, %6
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @vm_swapfile_open(i8*, %struct.vnode**) #1

declare dso_local i64 @vnode_pager_isSSD(%struct.vnode*) #1

declare dso_local i32 @vnode_setswapmount(%struct.vnode*) #1

declare dso_local i64 @vnode_getswappin_avail(%struct.vnode*) #1

declare dso_local i32 @vm_swapfile_close(i32, %struct.vnode*) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
