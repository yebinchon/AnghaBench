; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_mapping_free_prime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_mapping_free_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@PV_HASHED_LOW_WATER_MARK_DEFAULT = common dso_local global i32 0, align 4
@sane_size = common dso_local global i32 0, align 4
@pv_hashed_low_water_mark = common dso_local global i32 0, align 4
@PV_HASHED_KERN_LOW_WATER_MARK_DEFAULT = common dso_local global i32 0, align 4
@pv_hashed_kern_low_water_mark = common dso_local global i32 0, align 4
@PV_HASHED_KERN_ALLOC_CHUNK_INITIAL = common dso_local global i32 0, align 4
@pv_hashed_kern_alloc_chunk = common dso_local global i32 0, align 4
@PV_HASHED_ALLOC_CHUNK_INITIAL = common dso_local global i32 0, align 4
@pv_hashed_alloc_chunk = common dso_local global i32 0, align 4
@PV_HASHED_ENTRY_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@pv_hashed_list_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mapping_free_prime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PV_HASHED_LOW_WATER_MARK_DEFAULT, align 4
  %7 = load i32, i32* @sane_size, align 4
  %8 = ashr i32 %7, 30
  %9 = mul nsw i32 %8, 2000
  %10 = call i32 @MAX(i32 %6, i32 %9)
  store i32 %10, i32* @pv_hashed_low_water_mark, align 4
  %11 = load i32, i32* @pv_hashed_low_water_mark, align 4
  %12 = call i32 @MIN(i32 %11, i32 16000)
  store i32 %12, i32* @pv_hashed_low_water_mark, align 4
  %13 = load i32, i32* @PV_HASHED_KERN_LOW_WATER_MARK_DEFAULT, align 4
  %14 = load i32, i32* @sane_size, align 4
  %15 = ashr i32 %14, 30
  %16 = mul nsw i32 %15, 1000
  %17 = call i32 @MAX(i32 %13, i32 %16)
  store i32 %17, i32* @pv_hashed_kern_low_water_mark, align 4
  %18 = load i32, i32* @pv_hashed_kern_low_water_mark, align 4
  %19 = call i32 @MIN(i32 %18, i32 16000)
  store i32 %19, i32* @pv_hashed_kern_low_water_mark, align 4
  %20 = load i32, i32* @PV_HASHED_KERN_ALLOC_CHUNK_INITIAL, align 4
  store i32 %20, i32* @pv_hashed_kern_alloc_chunk, align 4
  %21 = load i32, i32* @PV_HASHED_ALLOC_CHUNK_INITIAL, align 4
  store i32 %21, i32* @pv_hashed_alloc_chunk, align 4
  store i32 0, i32* %5, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %46, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @PV_HASHED_ALLOC_CHUNK_INITIAL, align 4
  %26 = mul nsw i32 5, %25
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i32, i32* @pv_hashed_list_zone, align 4
  %30 = call i64 @zalloc(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %2, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = bitcast %struct.TYPE_9__* %32 to i8*
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PV_HASHED_ENTRY_NULL, align 8
  %40 = icmp eq %struct.TYPE_9__* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %4, align 8
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @PV_HASHED_FREE_LIST(%struct.TYPE_9__* %50, %struct.TYPE_9__* %51, i32 %52)
  store i32 0, i32* %5, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PV_HASHED_ENTRY_NULL, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %77, %49
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @PV_HASHED_KERN_ALLOC_CHUNK_INITIAL, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load i32, i32* @pv_hashed_list_zone, align 4
  %61 = call i64 @zalloc(i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %2, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = bitcast %struct.TYPE_9__* %63 to i8*
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %3, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PV_HASHED_ENTRY_NULL, align 8
  %71 = icmp eq %struct.TYPE_9__* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %4, align 8
  br label %74

74:                                               ; preds = %72, %59
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %1, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @PV_HASHED_KERN_FREE_LIST(%struct.TYPE_9__* %81, %struct.TYPE_9__* %82, i32 %83)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @PV_HASHED_FREE_LIST(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @PV_HASHED_KERN_FREE_LIST(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
