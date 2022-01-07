; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kdp_find_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kdp_find_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }

@VM_MAP_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@fault_stats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@KDP_FAULT_RESULT_PAGED_OUT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@panic_stackshot = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@KDP_FAULT_RESULT_TRIED_FAULT = common dso_local global i32 0, align 4
@KDP_FAULT_RESULT_FAULTED_IN = common dso_local global i32 0, align 4
@VM_WIMG_MASK = common dso_local global i32 0, align 4
@VM_WIMG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_find_phys(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VM_MAP_NULL, align 8
  %15 = icmp eq %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %111

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @kdp_vtophys(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @atop(i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @pmap_valid_page(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %97, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 3), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @KDP_FAULT_RESULT_PAGED_OUT, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, i32* %5, align 4
  br label %111

43:                                               ; preds = %31
  %44 = call i64 (...) @mach_absolute_time()
  store i64 %44, i64* %12, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PAGE_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @kdp_lightweight_fault(%struct.TYPE_6__* %45, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = call i64 (...) @mach_absolute_time()
  %52 = load i64, i64* %12, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 0), align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 0), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 0), align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 1), align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load i32, i32* @panic_stackshot, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @TRUE, align 8
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 3), align 8
  br label %64

64:                                               ; preds = %62, %59, %43
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PAGE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @atop(i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = call i32 @pmap_valid_page(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %64
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* @KDP_FAULT_RESULT_TRIED_FAULT, align 4
  %80 = load i32, i32* @KDP_FAULT_RESULT_PAGED_OUT, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %75
  store i32 0, i32* %5, align 4
  br label %111

86:                                               ; preds = %64
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @KDP_FAULT_RESULT_FAULTED_IN, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 2), align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fault_stats, i32 0, i32 2), align 8
  br label %109

97:                                               ; preds = %17
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @atop(i32 %98)
  %100 = trunc i64 %99 to i32
  %101 = call i32 @pmap_cache_attributes(i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @VM_WIMG_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @VM_WIMG_DEFAULT, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %111

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %107, %85, %42, %16
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @kdp_vtophys(i32, i32) #1

declare dso_local i32 @pmap_valid_page(i32) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @kdp_lightweight_fault(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pmap_cache_attributes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
