; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_get_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i64, i64, i32, i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@DRT_DEBUG_INSERT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vfs_drt_clustermap**, i64, i32*, i32)* @vfs_drt_get_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap** %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vfs_drt_clustermap**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfs_drt_clustermap*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vfs_drt_clustermap** %0, %struct.vfs_drt_clustermap*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %6, align 8
  %15 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %14, align 8
  store %struct.vfs_drt_clustermap* %15, %struct.vfs_drt_clustermap** %10, align 8
  %16 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @vfs_drt_search_index(%struct.vfs_drt_clustermap* %16, i64 %17, i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @KERN_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %5, align 8
  br label %114

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @DRT_ALIGN_ADDRESS(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @DRT_HASH(%struct.vfs_drt_clustermap* %28, i64 %29)
  store i64 %30, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %31

31:                                               ; preds = %93, %25
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %34 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %31
  %38 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %42, %37
  %48 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %49 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %54 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %60 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %47
  %62 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @DRT_HASH_SET_ADDRESS(%struct.vfs_drt_clustermap* %62, i64 %63, i64 %64)
  %66 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @DRT_HASH_SET_COUNT(%struct.vfs_drt_clustermap* %66, i64 %67, i32 0)
  %69 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @DRT_BITVECTOR_CLEAR(%struct.vfs_drt_clustermap* %69, i64 %70)
  %72 = load i64, i64* %12, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %76 = load i32, i32* @DRT_DEBUG_INSERT, align 4
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %75, i32 %76, i32 %78, i64 %79, i32 0, i32 0)
  %81 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %81, i64* %5, align 8
  br label %114

82:                                               ; preds = %42
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %85 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i64 @DRT_HASH_NEXT(%struct.vfs_drt_clustermap* %90, i64 %91)
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %31

96:                                               ; preds = %31
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %100, i64* %5, align 8
  br label %114

101:                                              ; preds = %96
  %102 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %6, align 8
  %103 = call i64 @vfs_drt_alloc_map(%struct.vfs_drt_clustermap** %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @KERN_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.vfs_drt_clustermap**, %struct.vfs_drt_clustermap*** %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = call i64 @vfs_drt_get_index(%struct.vfs_drt_clustermap** %108, i64 %109, i32* %110, i32 1)
  store i64 %111, i64* %11, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %99, %61, %23
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i64 @vfs_drt_search_index(%struct.vfs_drt_clustermap*, i64, i32*) #1

declare dso_local i64 @DRT_ALIGN_ADDRESS(i64) #1

declare dso_local i64 @DRT_HASH(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i32 @DRT_HASH_SET_ADDRESS(%struct.vfs_drt_clustermap*, i64, i64) #1

declare dso_local i32 @DRT_HASH_SET_COUNT(%struct.vfs_drt_clustermap*, i64, i32) #1

declare dso_local i32 @DRT_BITVECTOR_CLEAR(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i32 @vfs_drt_trace(%struct.vfs_drt_clustermap*, i32, i32, i64, i32, i32) #1

declare dso_local i64 @DRT_HASH_NEXT(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i64 @vfs_drt_alloc_map(%struct.vfs_drt_clustermap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
