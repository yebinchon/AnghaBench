; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_vm_init.c_pmap_next_page_hi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_vm_init.c_pmap_next_page_hi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@avail_remaining = common dso_local global i64 0, align 8
@pmap_memory_region_count = common dso_local global i32 0, align 4
@pmap_memory_regions = common dso_local global %struct.TYPE_3__* null, align 8
@max_ppnum = common dso_local global i64 0, align 8
@lowest_lo = common dso_local global i64 0, align 8
@lowest_hi = common dso_local global i64 0, align 8
@highest_hi = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_next_page_hi(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = call i64 @pmap_next_page_reserved(i64* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %2, align 4
  br label %86

11:                                               ; preds = %1
  %12 = load i64, i64* @avail_remaining, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %11
  %15 = load i32, i32* @pmap_memory_region_count, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %80, %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmap_memory_regions, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %4, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = load i64*, i64** %3, align 8
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @avail_remaining, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* @avail_remaining, align 8
  %40 = load i64*, i64** %3, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @max_ppnum, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i64*, i64** %3, align 8
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* @max_ppnum, align 8
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i64, i64* @lowest_lo, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i64*, i64** %3, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @lowest_lo, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %47
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* @lowest_lo, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i64, i64* @lowest_hi, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @lowest_hi, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %58
  %67 = load i64*, i64** %3, align 8
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* @lowest_hi, align 8
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i64*, i64** %3, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @highest_hi, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64*, i64** %3, align 8
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* @highest_hi, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  br label %17

83:                                               ; preds = %17
  br label %84

84:                                               ; preds = %83, %11
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %77, %9
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @pmap_next_page_reserved(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
