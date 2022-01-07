; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_search_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_search_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfs_drt_clustermap*, i64, i32*)* @vfs_drt_search_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_drt_search_index(%struct.vfs_drt_clustermap* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfs_drt_clustermap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vfs_drt_clustermap* %0, %struct.vfs_drt_clustermap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @DRT_ALIGN_ADDRESS(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @DRT_HASH(%struct.vfs_drt_clustermap* %12, i64 %13)
  store i32 %14, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %41, %3
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %18 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap* %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DRT_HASH_NEXT(%struct.vfs_drt_clustermap* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %15

44:                                               ; preds = %26, %15
  %45 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @DRT_ALIGN_ADDRESS(i64) #1

declare dso_local i32 @DRT_HASH(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @DRT_HASH_NEXT(%struct.vfs_drt_clustermap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
