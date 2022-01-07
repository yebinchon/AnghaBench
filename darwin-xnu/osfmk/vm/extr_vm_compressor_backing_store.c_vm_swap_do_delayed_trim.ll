; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_do_delayed_trim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_do_delayed_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapfile = type { i32*, i32, i32, i32**, i32, i64, %struct.trim_list* }
%struct.trim_list = type { i32, %struct.trim_list* }

@vm_swap_data_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@COMPRESSED_SWAP_CHUNK_SIZE = common dso_local global i32 0, align 4
@vm_swapfile_total_segs_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swapfile*)* @vm_swap_do_delayed_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swap_do_delayed_trim(%struct.swapfile* %0) #0 {
  %2 = alloca %struct.swapfile*, align 8
  %3 = alloca %struct.trim_list*, align 8
  %4 = alloca %struct.trim_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.swapfile* %0, %struct.swapfile** %2, align 8
  %8 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %9 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %10 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %9, i32 0, i32 6
  %11 = load %struct.trim_list*, %struct.trim_list** %10, align 8
  store %struct.trim_list* %11, %struct.trim_list** %4, align 8
  %12 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %13 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %12, i32 0, i32 6
  store %struct.trim_list* null, %struct.trim_list** %13, align 8
  %14 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %15 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %17 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %18 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = call i32 @vnode_trim_list(i32 %19, %struct.trim_list* %20, i32 %21)
  br label %23

23:                                               ; preds = %82, %1
  %24 = load %struct.trim_list*, %struct.trim_list** %4, align 8
  store %struct.trim_list* %24, %struct.trim_list** %3, align 8
  %25 = icmp ne %struct.trim_list* %24, null
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %27 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %28 = load %struct.trim_list*, %struct.trim_list** %3, align 8
  %29 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @COMPRESSED_SWAP_CHUNK_SIZE, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = lshr i32 %33, 3
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = urem i32 %35, 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %38 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %53 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %51
  store i32 %59, i32* %57, align 4
  %60 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %61 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* null, i32** %65, align 8
  %66 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %67 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @vm_swapfile_total_segs_used, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* @vm_swapfile_total_segs_used, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %74 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %48
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.swapfile*, %struct.swapfile** %2, align 8
  %80 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %48
  br label %82

82:                                               ; preds = %81, %26
  %83 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %84 = load %struct.trim_list*, %struct.trim_list** %3, align 8
  %85 = getelementptr inbounds %struct.trim_list, %struct.trim_list* %84, i32 0, i32 1
  %86 = load %struct.trim_list*, %struct.trim_list** %85, align 8
  store %struct.trim_list* %86, %struct.trim_list** %4, align 8
  %87 = load %struct.trim_list*, %struct.trim_list** %3, align 8
  %88 = call i32 @kfree(%struct.trim_list* %87, i32 16)
  br label %23

89:                                               ; preds = %23
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vnode_trim_list(i32, %struct.trim_list*, i32) #1

declare dso_local i32 @kfree(%struct.trim_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
