; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@C_SV_CSEG_ID = common dso_local global i64 0, align 8
@c_segment_sv_hash_table = common dso_local global %struct.TYPE_5__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@C_KEEP = common dso_local global i32 0, align 4
@c_segment_pages_compressed = common dso_local global i32 0, align 4
@c_segment_svp_nonzero_decompressions = common dso_local global i32 0, align 4
@c_segment_svp_zero_decompressions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_compressor_get(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %10, align 4
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = call i8* @PHYSMAP_PTOV(i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @C_SV_CSEG_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %3
  %27 = load i8*, i8** %9, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %13, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @c_segment_sv_hash_table, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset_word(i64* %37, i64 %38, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @C_KEEP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %26
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @c_segment_sv_hash_drop_ref(i64 %51)
  %53 = call i32 @OSAddAtomic(i32 -1, i32* @c_segment_pages_compressed)
  %54 = load i32*, i32** %6, align 8
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %26
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @OSAddAtomic(i32 1, i32* @c_segment_svp_nonzero_decompressions)
  br label %62

60:                                               ; preds = %55
  %61 = call i32 @OSAddAtomic(i32 1, i32* @c_segment_svp_zero_decompressions)
  br label %62

62:                                               ; preds = %60, %58
  store i32 0, i32* %4, align 4
  br label %74

63:                                               ; preds = %3
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @c_decompress_page(i8* %64, %struct.TYPE_4__* %65, i32 %66, i32* %10)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %62
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @PHYSMAP_PTOV(i32) #1

declare dso_local i32 @memset_word(i64*, i64, i32) #1

declare dso_local i32 @c_segment_sv_hash_drop_ref(i64) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @c_decompress_page(i8*, %struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
