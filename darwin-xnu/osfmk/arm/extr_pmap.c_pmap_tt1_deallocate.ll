; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt1_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt1_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@not_in_kdp = common dso_local global i64 0, align 8
@pmaps_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@free_tt_count = common dso_local global i64 0, align 8
@free_tt_max = common dso_local global i64 0, align 8
@free_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@free_page_size_tt_count = common dso_local global i64 0, align 8
@free_page_size_tt_max = common dso_local global i64 0, align 8
@free_page_size_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@free_two_page_size_tt_count = common dso_local global i64 0, align 8
@free_two_page_size_tt_max = common dso_local global i64 0, align 8
@free_two_page_size_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@PMAP_TT_DEALLOCATE_NOBLOCK = common dso_local global i32 0, align 4
@FREE_PAGE_SIZE_TT_MAX = common dso_local global i64 0, align 8
@PMAP_ROOT_ALLOC_SIZE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@inuse_kernel_tteroot_count = common dso_local global i32 0, align 4
@inuse_user_tteroot_count = common dso_local global i32 0, align 4
@FREE_TWO_PAGE_SIZE_TT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32, i32)* @pmap_tt1_deallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_tt1_deallocate(i64 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load i64, i64* @not_in_kdp, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i64, i64* @free_tt_count, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @free_tt_count, align 8
  %23 = load i64, i64* @free_tt_count, align 8
  %24 = load i64, i64* @free_tt_max, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @free_tt_count, align 8
  store i64 %27, i64* @free_tt_max, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_tt_list, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** @free_tt_list, align 8
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* @free_page_size_tt_count, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @free_page_size_tt_count, align 8
  %40 = load i64, i64* @free_page_size_tt_count, align 8
  %41 = load i64, i64* @free_page_size_tt_max, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @free_page_size_tt_count, align 8
  store i64 %44, i64* @free_page_size_tt_max, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = mul nsw i32 2, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i64, i64* @free_two_page_size_tt_count, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* @free_two_page_size_tt_count, align 8
  %58 = load i64, i64* @free_two_page_size_tt_count, align 8
  %59 = load i64, i64* @free_two_page_size_tt_max, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i64, i64* @free_two_page_size_tt_count, align 8
  store i64 %62, i64* @free_two_page_size_tt_max, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  br label %68

68:                                               ; preds = %63, %50
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @PMAP_TT_DEALLOCATE_NOBLOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* @not_in_kdp, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73, %68
  %77 = load i64, i64* @not_in_kdp, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pmap_tt_ledger_debit(i64 %82, i32 %83)
  br label %153

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %90, %85
  %87 = load i64, i64* @free_page_size_tt_count, align 8
  %88 = load i64, i64* @FREE_PAGE_SIZE_TT_MAX, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i64, i64* @free_page_size_tt_count, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* @free_page_size_tt_count, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  %94 = bitcast %struct.TYPE_5__* %93 to i32*
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = bitcast i32* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  %99 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %100 = load i32*, i32** %6, align 8
  %101 = ptrtoint i32* %100 to i32
  %102 = call i32 @ml_static_vtop(i32 %101)
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i32 @pmap_pages_free(i32 %102, i32 %103)
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load i32, i32* @PMAP_ROOT_ALLOC_SIZE, align 4
  %107 = sdiv i32 %105, %106
  %108 = sub nsw i32 0, %107
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* @kernel_pmap, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32* @inuse_kernel_tteroot_count, i32* @inuse_user_tteroot_count
  %114 = call i32 @OSAddAtomic(i32 %108, i32* %113)
  %115 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  br label %86

116:                                              ; preds = %86
  br label %117

117:                                              ; preds = %121, %116
  %118 = load i64, i64* @free_two_page_size_tt_count, align 8
  %119 = load i64, i64* @FREE_TWO_PAGE_SIZE_TT_MAX, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = load i64, i64* @free_two_page_size_tt_count, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* @free_two_page_size_tt_count, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  %125 = bitcast %struct.TYPE_5__* %124 to i32*
  store i32* %125, i32** %6, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = bitcast i32* %126 to %struct.TYPE_5__*
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  %130 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %131 = load i32*, i32** %6, align 8
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 @ml_static_vtop(i32 %132)
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = mul nsw i32 2, %134
  %136 = call i32 @pmap_pages_free(i32 %133, i32 %135)
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* @PMAP_ROOT_ALLOC_SIZE, align 4
  %139 = sdiv i32 %137, %138
  %140 = mul nsw i32 -2, %139
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @kernel_pmap, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32* @inuse_kernel_tteroot_count, i32* @inuse_user_tteroot_count
  %146 = call i32 @OSAddAtomic(i32 %140, i32* %145)
  %147 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  br label %117

148:                                              ; preds = %117
  %149 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %150 = load i64, i64* %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @pmap_tt_ledger_debit(i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %148, %81
  ret void
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i32 @pmap_tt_ledger_debit(i64, i32) #1

declare dso_local i32 @pmap_pages_free(i32, i32) #1

declare dso_local i32 @ml_static_vtop(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
