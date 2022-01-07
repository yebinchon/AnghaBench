; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_resize_namecache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_resize_namecache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nchashhead = type { %struct.namecache* }
%struct.namecache = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.namecache* }

@EINVAL = common dso_local global i32 0, align 4
@desiredNodes = common dso_local global i32 0, align 4
@M_CACHE = common dso_local global i32 0, align 4
@nchashmask = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@nchashtbl = common dso_local global %struct.nchashhead* null, align 8
@nchash = common dso_local global i64 0, align 8
@nc_hash = common dso_local global i32 0, align 4
@desiredNegNodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resize_namecache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nchashhead*, align 8
  %5 = alloca %struct.nchashhead*, align 8
  %6 = alloca %struct.nchashhead*, align 8
  %7 = alloca %struct.nchashhead*, align 8
  %8 = alloca %struct.namecache*, align 8
  %9 = alloca %struct.namecache*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @desiredNodes, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %101

31:                                               ; preds = %21
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @os_mul_overflow(i32 %32, i32 2, i32* %14)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %31
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @M_CACHE, align 4
  %40 = call %struct.nchashhead* @hashinit(i32 %38, i32 %39, i64* @nchashmask)
  store %struct.nchashhead* %40, %struct.nchashhead** %4, align 8
  %41 = load i64, i64* @nchashmask, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %15, align 8
  %43 = load %struct.nchashhead*, %struct.nchashhead** %4, align 8
  %44 = icmp eq %struct.nchashhead* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %101

47:                                               ; preds = %37
  %48 = call i32 (...) @NAME_CACHE_LOCK()
  %49 = load %struct.nchashhead*, %struct.nchashhead** @nchashtbl, align 8
  store %struct.nchashhead* %49, %struct.nchashhead** %5, align 8
  %50 = load %struct.nchashhead*, %struct.nchashhead** %4, align 8
  store %struct.nchashhead* %50, %struct.nchashhead** @nchashtbl, align 8
  %51 = load i64, i64* @nchash, align 8
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %15, align 8
  store i64 %52, i64* @nchash, align 8
  store i64 0, i64* %10, align 8
  br label %53

53:                                               ; preds = %91, %47
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %94

57:                                               ; preds = %53
  %58 = load %struct.nchashhead*, %struct.nchashhead** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %58, i64 %59
  store %struct.nchashhead* %60, %struct.nchashhead** %6, align 8
  %61 = load %struct.nchashhead*, %struct.nchashhead** %6, align 8
  %62 = getelementptr inbounds %struct.nchashhead, %struct.nchashhead* %61, i32 0, i32 0
  %63 = load %struct.namecache*, %struct.namecache** %62, align 8
  store %struct.namecache* %63, %struct.namecache** %8, align 8
  br label %64

64:                                               ; preds = %88, %57
  %65 = load %struct.namecache*, %struct.namecache** %8, align 8
  %66 = icmp ne %struct.namecache* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %64
  %68 = load %struct.namecache*, %struct.namecache** %8, align 8
  %69 = getelementptr inbounds %struct.namecache, %struct.namecache* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @hash_string(i32 %70, i32 0)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.namecache*, %struct.namecache** %8, align 8
  %74 = getelementptr inbounds %struct.namecache, %struct.namecache* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.namecache*, %struct.namecache** %8, align 8
  %76 = getelementptr inbounds %struct.namecache, %struct.namecache* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call %struct.nchashhead* @NCHHASH(i32 %77, i64 %78)
  store %struct.nchashhead* %79, %struct.nchashhead** %7, align 8
  %80 = load %struct.namecache*, %struct.namecache** %8, align 8
  %81 = getelementptr inbounds %struct.namecache, %struct.namecache* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.namecache*, %struct.namecache** %82, align 8
  store %struct.namecache* %83, %struct.namecache** %9, align 8
  %84 = load %struct.nchashhead*, %struct.nchashhead** %7, align 8
  %85 = load %struct.namecache*, %struct.namecache** %8, align 8
  %86 = load i32, i32* @nc_hash, align 4
  %87 = call i32 @LIST_INSERT_HEAD(%struct.nchashhead* %84, %struct.namecache* %85, i32 %86)
  br label %88

88:                                               ; preds = %67
  %89 = load %struct.namecache*, %struct.namecache** %9, align 8
  store %struct.namecache* %89, %struct.namecache** %8, align 8
  br label %64

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %53

94:                                               ; preds = %53
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* @desiredNodes, align 4
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* @desiredNegNodes, align 4
  %97 = call i32 (...) @NAME_CACHE_UNLOCK()
  %98 = load %struct.nchashhead*, %struct.nchashhead** %5, align 8
  %99 = load i32, i32* @M_CACHE, align 4
  %100 = call i32 @FREE(%struct.nchashhead* %98, i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %94, %45, %35, %30, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @os_mul_overflow(i32, i32, i32*) #1

declare dso_local %struct.nchashhead* @hashinit(i32, i32, i64*) #1

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local i64 @hash_string(i32, i32) #1

declare dso_local %struct.nchashhead* @NCHHASH(i32, i64) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.nchashhead*, %struct.namecache*, i32) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

declare dso_local i32 @FREE(%struct.nchashhead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
