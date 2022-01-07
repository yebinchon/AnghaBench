; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_iostate_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_cluster_iostate_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clios = type { i64, i64, i32, i32 }

@DBG_FSRW = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clios*, i64, i8*)* @cluster_iostate_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_iostate_wait(%struct.clios* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.clios*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.clios* %0, %struct.clios** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.clios*, %struct.clios** %4, align 8
  %8 = getelementptr inbounds %struct.clios, %struct.clios* %7, i32 0, i32 3
  %9 = call i32 @lck_mtx_lock(i32* %8)
  br label %10

10:                                               ; preds = %20, %3
  %11 = load %struct.clios*, %struct.clios** %4, align 8
  %12 = getelementptr inbounds %struct.clios, %struct.clios* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.clios*, %struct.clios** %4, align 8
  %15 = getelementptr inbounds %struct.clios, %struct.clios* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %10
  %21 = load i32, i32* @DBG_FSRW, align 4
  %22 = call i32 @FSDBG_CODE(i32 %21, i32 95)
  %23 = load i32, i32* @DBG_FUNC_START, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.clios*, %struct.clios** %4, align 8
  %26 = getelementptr inbounds %struct.clios, %struct.clios* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.clios*, %struct.clios** %4, align 8
  %29 = getelementptr inbounds %struct.clios, %struct.clios* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @KERNEL_DEBUG(i32 %24, i64 %27, i64 %30, i64 %31, i32 0, i32 0)
  %33 = load %struct.clios*, %struct.clios** %4, align 8
  %34 = getelementptr inbounds %struct.clios, %struct.clios* %33, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = load %struct.clios*, %struct.clios** %4, align 8
  %36 = getelementptr inbounds %struct.clios, %struct.clios* %35, i32 0, i32 2
  %37 = ptrtoint i32* %36 to i32
  %38 = load %struct.clios*, %struct.clios** %4, align 8
  %39 = getelementptr inbounds %struct.clios, %struct.clios* %38, i32 0, i32 3
  %40 = load i64, i64* @PRIBIO, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @msleep(i32 %37, i32* %39, i64 %41, i8* %42, i32* null)
  %44 = load i32, i32* @DBG_FSRW, align 4
  %45 = call i32 @FSDBG_CODE(i32 %44, i32 95)
  %46 = load i32, i32* @DBG_FUNC_END, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.clios*, %struct.clios** %4, align 8
  %49 = getelementptr inbounds %struct.clios, %struct.clios* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.clios*, %struct.clios** %4, align 8
  %52 = getelementptr inbounds %struct.clios, %struct.clios* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @KERNEL_DEBUG(i32 %47, i64 %50, i64 %53, i64 %54, i32 0, i32 0)
  br label %10

56:                                               ; preds = %10
  %57 = load %struct.clios*, %struct.clios** %4, align 8
  %58 = getelementptr inbounds %struct.clios, %struct.clios* %57, i32 0, i32 3
  %59 = call i32 @lck_mtx_unlock(i32* %58)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i32 @msleep(i32, i32*, i64, i8*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
