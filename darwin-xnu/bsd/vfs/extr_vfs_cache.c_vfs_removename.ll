; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vfs_removename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vfs_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stringhead = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@ENOENT = common dso_local global i32 0, align 4
@strtable_rw_lock = common dso_local global i32 0, align 4
@string_table_mask = common dso_local global i64 0, align 8
@NUM_STRCACHE_LOCKS = common dso_local global i64 0, align 8
@string_ref_table = common dso_local global %struct.stringhead* null, align 8
@strcache_mtx_locks = common dso_local global i32* null, align 8
@hash_chain = common dso_local global i32 0, align 4
@filled_buckets = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_removename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stringhead*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @ENOENT, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @hash_string(i8* %10, i32 0)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @strtable_rw_lock, align 4
  %13 = call i32 @lck_rw_lock_shared(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @string_table_mask, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NUM_STRCACHE_LOCKS, align 8
  %19 = urem i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.stringhead*, %struct.stringhead** @string_ref_table, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %20, i64 %21
  store %struct.stringhead* %22, %struct.stringhead** %3, align 8
  %23 = load i32*, i32** @strcache_mtx_locks, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @lck_mtx_lock_spin(i32* %25)
  %27 = load %struct.stringhead*, %struct.stringhead** %3, align 8
  %28 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %4, align 8
  br label %30

30:                                               ; preds = %62, %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load i32, i32* @hash_chain, align 4
  %51 = call i32 @LIST_REMOVE(%struct.TYPE_6__* %49, i32 %50)
  %52 = load %struct.stringhead*, %struct.stringhead** %3, align 8
  %53 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @OSAddAtomic(i32 -1, i32* @filled_buckets)
  br label %58

58:                                               ; preds = %56, %48
  br label %60

59:                                               ; preds = %39
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %60

60:                                               ; preds = %59, %58
  store i32 0, i32* %8, align 4
  br label %67

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %4, align 8
  br label %30

67:                                               ; preds = %60, %30
  %68 = load i32*, i32** @strcache_mtx_locks, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @lck_mtx_unlock(i32* %70)
  %72 = load i32, i32* @strtable_rw_lock, align 4
  %73 = call i32 @lck_rw_done(i32 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = load i32, i32* @M_TEMP, align 4
  %79 = call i32 @FREE(%struct.TYPE_6__* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %67
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i64 @hash_string(i8*, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @FREE(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
