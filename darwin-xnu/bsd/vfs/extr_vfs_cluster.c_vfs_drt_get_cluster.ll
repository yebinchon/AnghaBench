; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_get_cluster.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cluster.c_vfs_drt_get_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_drt_clustermap = type { i32, i32, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@DRT_BITVECTOR_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"vfs_drt: entry summary count > 0 but no bits set in map, cmap = %p, index = %d, count = %lld\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DRT_DEBUG_RETCLUSTER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@DRT_DEBUG_SCMDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*)* @vfs_drt_get_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_drt_get_cluster(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vfs_drt_clustermap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %23, i32* %4, align 4
  br label %152

24:                                               ; preds = %18
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.vfs_drt_clustermap*
  store %struct.vfs_drt_clustermap* %27, %struct.vfs_drt_clustermap** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %123, %24
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %31 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %28
  %35 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @DRT_HASH(%struct.vfs_drt_clustermap* %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %34
  br label %123

48:                                               ; preds = %42
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @DRT_BITVECTOR_PAGES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %14, align 4
  br label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %49

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap* %71, i32 %72)
  %74 = call i32 @panic(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), %struct.vfs_drt_clustermap* %69, i32 %70, i64 %73)
  br label %75

75:                                               ; preds = %68, %65
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @DRT_BITVECTOR_PAGES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %93

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %76

93:                                               ; preds = %86, %76
  %94 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap* %94, i32 %95)
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %96, %100
  store i64 %101, i64* %9, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = mul nsw i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @vfs_drt_do_mark_pages(i8** %105, i64 %106, i32 %107, i32* null, i32 0)
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %111 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i64, i64* %9, align 8
  %113 = load i64*, i64** %6, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %117 = load i32, i32* @DRT_DEBUG_RETCLUSTER, align 4
  %118 = load i64, i64* %9, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %116, i32 %117, i32 %119, i32 %120, i32 0, i32 0)
  %122 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %122, i32* %4, align 4
  br label %152

123:                                              ; preds = %47
  %124 = load i32, i32* @DRT_BITVECTOR_PAGES, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %28

132:                                              ; preds = %28
  %133 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %134 = load i32, i32* @DRT_DEBUG_SCMDATA, align 4
  %135 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %136 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %139 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %142 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %145 = getelementptr inbounds %struct.vfs_drt_clustermap, %struct.vfs_drt_clustermap* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @vfs_drt_trace(%struct.vfs_drt_clustermap* %133, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146)
  %148 = load %struct.vfs_drt_clustermap*, %struct.vfs_drt_clustermap** %8, align 8
  %149 = call i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap* %148)
  %150 = load i8**, i8*** %5, align 8
  store i8* null, i8** %150, align 8
  %151 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %132, %93, %22
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @DRT_HASH(%struct.vfs_drt_clustermap*, i64) #1

declare dso_local i64 @DRT_HASH_VACANT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @DRT_HASH_GET_COUNT(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i64 @DRT_HASH_TEST_BIT(%struct.vfs_drt_clustermap*, i32, i32) #1

declare dso_local i32 @panic(i8*, %struct.vfs_drt_clustermap*, i32, i64) #1

declare dso_local i64 @DRT_HASH_GET_ADDRESS(%struct.vfs_drt_clustermap*, i32) #1

declare dso_local i32 @vfs_drt_do_mark_pages(i8**, i64, i32, i32*, i32) #1

declare dso_local i32 @vfs_drt_trace(%struct.vfs_drt_clustermap*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_drt_free_map(%struct.vfs_drt_clustermap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
