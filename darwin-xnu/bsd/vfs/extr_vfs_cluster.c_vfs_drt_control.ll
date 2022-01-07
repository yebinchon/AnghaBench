; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i32, i32, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@DRT_DEBUG_SCMDATA = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @vfs_drt_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_drt_control(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfs_drt_clustermap*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %9
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.vfs_drt_clustermap*
  store %struct.vfs_drt_clustermap* %18, %struct.vfs_drt_clustermap** %6, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %42 [
    i32 0, label %20
    i32 1, label %39
  ]

20:                                               ; preds = %15
  %21 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %22 = load i32, i32* @DRT_DEBUG_SCMDATA, align 4
  %23 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %24 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %27 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %30 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %33 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %21, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %37 = call i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap* %36)
  %38 = load i8**, i8*** %4, align 8
  store i8* null, i8** %38, align 8
  br label %42

39:                                               ; preds = %15
  %40 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %6, align 8
  %41 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %15, %39, %20
  %43 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @vfs_drt_trace(%struct.vfs_drt_clustermap*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
