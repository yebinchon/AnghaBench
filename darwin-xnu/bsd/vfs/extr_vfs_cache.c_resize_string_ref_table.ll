; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_resize_string_ref_table.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_resize_string_ref_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stringhead = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@strtable_rw_lock = common dso_local global i32 0, align 4
@filled_buckets = common dso_local global i32 0, align 4
@string_table_mask = common dso_local global i32 0, align 4
@M_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to resize the hash table.\0A\00", align 1
@string_ref_table = common dso_local global %struct.stringhead* null, align 8
@hash_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @resize_string_ref_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_string_ref_table() #0 {
  %1 = alloca %struct.stringhead*, align 8
  %2 = alloca %struct.stringhead*, align 8
  %3 = alloca %struct.stringhead*, align 8
  %4 = alloca %struct.stringhead*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = load i32, i32* @strtable_rw_lock, align 4
  %12 = call i32 @lck_rw_lock_exclusive(i32 %11)
  %13 = load i32, i32* @filled_buckets, align 4
  %14 = mul nsw i32 4, %13
  %15 = load i32, i32* @string_table_mask, align 4
  %16 = add nsw i32 %15, 1
  %17 = mul nsw i32 %16, 3
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i32, i32* @strtable_rw_lock, align 4
  %21 = call i32 @lck_rw_done(i32 %20)
  br label %95

22:                                               ; preds = %0
  %23 = load i32, i32* @string_table_mask, align 4
  %24 = add nsw i32 %23, 1
  %25 = mul nsw i32 %24, 2
  %26 = load i32, i32* @M_CACHE, align 4
  %27 = call %struct.stringhead* @hashinit(i32 %25, i32 %26, i64* %9)
  store %struct.stringhead* %27, %struct.stringhead** %1, align 8
  %28 = load %struct.stringhead*, %struct.stringhead** %1, align 8
  %29 = icmp eq %struct.stringhead* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @strtable_rw_lock, align 4
  %33 = call i32 @lck_rw_done(i32 %32)
  br label %95

34:                                               ; preds = %22
  %35 = load %struct.stringhead*, %struct.stringhead** @string_ref_table, align 8
  store %struct.stringhead* %35, %struct.stringhead** %2, align 8
  %36 = load %struct.stringhead*, %struct.stringhead** %1, align 8
  store %struct.stringhead* %36, %struct.stringhead** @string_ref_table, align 8
  %37 = load i32, i32* @string_table_mask, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* @string_table_mask, align 4
  store i32 0, i32* @filled_buckets, align 4
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %86, %34
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ule i64 %42, %43
  br i1 %44, label %45, label %89

45:                                               ; preds = %41
  %46 = load %struct.stringhead*, %struct.stringhead** %2, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %46, i64 %47
  store %struct.stringhead* %48, %struct.stringhead** %3, align 8
  %49 = load %struct.stringhead*, %struct.stringhead** %3, align 8
  %50 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %5, align 8
  br label %52

52:                                               ; preds = %83, %45
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i64 @hash_string(i8* %59, i32 0)
  store i64 %60, i64* %8, align 8
  %61 = load %struct.stringhead*, %struct.stringhead** @string_ref_table, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @string_table_mask, align 4
  %64 = sext i32 %63 to i64
  %65 = and i64 %62, %64
  %66 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %61, i64 %65
  store %struct.stringhead* %66, %struct.stringhead** %4, align 8
  %67 = load %struct.stringhead*, %struct.stringhead** %4, align 8
  %68 = getelementptr inbounds %struct.stringhead, %struct.stringhead* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp eq %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load i32, i32* @filled_buckets, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @filled_buckets, align 4
  br label %74

74:                                               ; preds = %71, %55
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %6, align 8
  %79 = load %struct.stringhead*, %struct.stringhead** %4, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = load i32, i32* @hash_chain, align 4
  %82 = call i32 @LIST_INSERT_HEAD(%struct.stringhead* %79, %struct.TYPE_5__* %80, i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %5, align 8
  br label %52

85:                                               ; preds = %52
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %41

89:                                               ; preds = %41
  %90 = load i32, i32* @strtable_rw_lock, align 4
  %91 = call i32 @lck_rw_done(i32 %90)
  %92 = load %struct.stringhead*, %struct.stringhead** %2, align 8
  %93 = load i32, i32* @M_CACHE, align 4
  %94 = call i32 @FREE(%struct.stringhead* %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %30, %19
  ret void
}

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local %struct.stringhead* @hashinit(i32, i32, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @hash_string(i8*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.stringhead*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @FREE(%struct.stringhead*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
