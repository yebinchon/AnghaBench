; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_segment_sv_hash_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_segment_sv_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.c_sv_hash_entry = type { i32, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@c_segment_svp_zero_compressions = common dso_local global i32 0, align 4
@c_segment_svp_nonzero_compressions = common dso_local global i32 0, align 4
@C_SV_HASH_MASK = common dso_local global i32 0, align 4
@C_SV_HASH_MAX_MISS = common dso_local global i32 0, align 4
@c_segment_sv_hash_table = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@c_segment_svp_in_hash = common dso_local global i32 0, align 4
@C_SV_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @c_segment_sv_hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_segment_sv_hash_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.c_sv_hash_entry, align 8
  %7 = alloca %struct.c_sv_hash_entry, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @OSAddAtomic(i32 1, i32* @c_segment_svp_zero_compressions)
  br label %16

14:                                               ; preds = %1
  %15 = call i32 @OSAddAtomic(i32 1, i32* @c_segment_svp_nonzero_compressions)
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @C_SV_HASH_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %94, %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @C_SV_HASH_MAX_MISS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_segment_sv_hash_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %73, %24
  %33 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ true, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %81

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %7, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %7, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_segment_sv_hash_table, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = bitcast i64* %60 to i32*
  %62 = call i64 @OSCompareAndSwap64(i32 %52, i32 %55, i32* %61)
  %63 = load i64, i64* @TRUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %43
  %66 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %7, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @OSAddAtomic(i32 1, i32* @c_segment_svp_in_hash)
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i64, i64* @TRUE, align 8
  store i64 %72, i64* %8, align 8
  br label %81

73:                                               ; preds = %43
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @c_segment_sv_hash_table, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.c_sv_hash_entry, %struct.c_sv_hash_entry* %6, i32 0, i32 2
  store i64 %79, i64* %80, align 8
  br label %32

81:                                               ; preds = %71, %41
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @TRUE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %97

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @C_SV_HASH_SIZE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %20

97:                                               ; preds = %85, %20
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* @FALSE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %2, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i64 @OSCompareAndSwap64(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
