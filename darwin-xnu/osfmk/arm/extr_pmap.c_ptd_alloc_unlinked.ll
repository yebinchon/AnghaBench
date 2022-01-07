; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_ptd_alloc_unlinked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_ptd_alloc_unlinked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32*, i32* }

@ptd_preboot = common dso_local global i64 0, align 8
@ptd_free_list_lock = common dso_local global i32 0, align 4
@ptd_free_count = common dso_local global i64 0, align 8
@avail_start = common dso_local global i64 0, align 8
@ARM_PGBYTES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PMAP_PAGES_ALLOCATE_NOWAIT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PMAP_PAGES_RECLAIM_NOWAIT = common dso_local global i32 0, align 4
@ptd_free_list = common dso_local global %struct.TYPE_11__* null, align 8
@PTD_ENTRY_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"out of ptd entry\0A\00", align 1
@PT_INDEX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* ()* @ptd_alloc_unlinked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ptd_alloc_unlinked() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load i64, i64* @ptd_preboot, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @pmap_simple_lock(i32* @ptd_free_list_lock)
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i64, i64* @ptd_free_count, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  %15 = load i64, i64* @ptd_preboot, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i64, i64* @avail_start, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %1, align 8
  %20 = load i32, i32* @ARM_PGBYTES, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @avail_start, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* @avail_start, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %4, align 8
  %25 = load i32, i32* @ARM_PGBYTES, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 40
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %14
  %30 = call i32 @pmap_simple_unlock(i32* @ptd_free_list_lock)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @PMAP_PAGES_ALLOCATE_NOWAIT, align 4
  %33 = call i64 @pmap_pages_alloc(i32* %5, i32 %31, i32 %32)
  %34 = load i64, i64* @KERN_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* @PMAP_PAGES_RECLAIM_NOWAIT, align 4
  %39 = call i64 @pmap_pages_alloc(i32* %5, i32 %37, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @KERN_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %36, %29
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @phystokv(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %1, align 8
  %49 = call i32 @pmap_simple_lock(i32* @ptd_free_list_lock)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 40
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %17
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ptd_free_list, align 8
  %61 = bitcast %struct.TYPE_11__* %60 to i8*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = bitcast %struct.TYPE_11__* %62 to i8**
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** @ptd_free_list, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 1
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %4, align 8
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* %3, align 4
  %69 = load i64, i64* @ptd_free_count, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* @ptd_free_count, align 8
  br label %56

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %11
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ptd_free_list, align 8
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %1, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @PTD_ENTRY_NULL, align 8
  %75 = icmp ne %struct.TYPE_11__* %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %78 = bitcast %struct.TYPE_11__* %77 to i8**
  %79 = load i8*, i8** %78, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %80, %struct.TYPE_11__** @ptd_free_list, align 8
  %81 = load i64, i64* @ptd_free_count, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* @ptd_free_count, align 8
  br label %85

83:                                               ; preds = %72
  %84 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i64, i64* @ptd_preboot, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @pmap_simple_unlock(i32* @ptd_free_list_lock)
  br label %90

90:                                               ; preds = %88, %85
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i32* null, i32** %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %125, %90
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @PT_INDEX_MAX, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %2, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i64 -1, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* %2, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i32, i32* %2, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %103
  %126 = load i32, i32* %2, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %2, align 4
  br label %99

128:                                              ; preds = %99
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  ret %struct.TYPE_11__* %129
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i64 @pmap_pages_alloc(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
