; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt1_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_tt1_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@pmaps_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@free_page_size_tt_count = common dso_local global i64 0, align 8
@free_page_size_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@free_two_page_size_tt_count = common dso_local global i64 0, align 8
@free_two_page_size_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@free_tt_count = common dso_local global i64 0, align 8
@free_tt_list = common dso_local global %struct.TYPE_5__* null, align 8
@PMAP_TT_ALLOCATE_NOWAIT = common dso_local global i32 0, align 4
@PMAP_PAGES_ALLOCATE_NOWAIT = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@free_tt_max = common dso_local global i64 0, align 8
@PMAP_ROOT_ALLOC_SIZE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@inuse_kernel_tteroot_count = common dso_local global i32 0, align 4
@inuse_user_tteroot_count = common dso_local global i32 0, align 4
@alloc_tteroot_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32, i32)* @pmap_tt1_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_tt1_allocate(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %3
  %19 = load i64, i64* @free_page_size_tt_count, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* @free_page_size_tt_count, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* @free_page_size_tt_count, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  %25 = bitcast %struct.TYPE_5__* %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @free_page_size_tt_list, align 8
  %30 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pmap_tt_ledger_credit(i64 %31, i32 %32)
  %34 = load i32*, i32** %8, align 8
  store i32* %34, i32** %4, align 8
  br label %162

35:                                               ; preds = %18, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = mul nsw i32 2, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i64, i64* @free_two_page_size_tt_count, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i64, i64* @free_two_page_size_tt_count, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* @free_two_page_size_tt_count, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  %47 = bitcast %struct.TYPE_5__* %46 to i32*
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** @free_two_page_size_tt_list, align 8
  %52 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @pmap_tt_ledger_credit(i64 %53, i32 %54)
  %56 = load i32*, i32** %8, align 8
  store i32* %56, i32** %4, align 8
  br label %162

57:                                               ; preds = %40, %35
  %58 = load i64, i64* @free_tt_count, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i64, i64* @free_tt_count, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* @free_tt_count, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_tt_list, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i32*
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** @free_tt_list, align 8
  %69 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %70 = load i64, i64* %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @pmap_tt_ledger_credit(i64 %70, i32 %71)
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %4, align 8
  br label %162

74:                                               ; preds = %57
  %75 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @PAGE_SIZE, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @PMAP_TT_ALLOCATE_NOWAIT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @PMAP_PAGES_ALLOCATE_NOWAIT, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = call i64 @pmap_pages_alloc(i32* %10, i32 %84, i32 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32* null, i32** %4, align 8
  br label %162

99:                                               ; preds = %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %141

103:                                              ; preds = %99
  %104 = call i32 @pmap_simple_lock(i32* @pmaps_lock)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @phystokv(i32 %105)
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %12, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @phystokv(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %11, align 8
  br label %115

115:                                              ; preds = %128, %103
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i64, i64* %11, align 8
  %121 = inttoptr i64 %120 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %9, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_tt_list, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** @free_tt_list, align 8
  %126 = load i64, i64* @free_tt_count, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* @free_tt_count, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load i64, i64* %11, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  store i64 %132, i64* %11, align 8
  br label %115

133:                                              ; preds = %115
  %134 = load i64, i64* @free_tt_count, align 8
  %135 = load i64, i64* @free_tt_max, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* @free_tt_count, align 8
  store i64 %138, i64* @free_tt_max, align 8
  br label %139

139:                                              ; preds = %137, %133
  %140 = call i32 @pmap_simple_unlock(i32* @pmaps_lock)
  br label %141

141:                                              ; preds = %139, %99
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @PMAP_ROOT_ALLOC_SIZE, align 4
  %144 = sdiv i32 %142, %143
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @kernel_pmap, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32* @inuse_kernel_tteroot_count, i32* @inuse_user_tteroot_count
  %150 = call i32 @OSAddAtomic(i32 %144, i32* %149)
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @PMAP_ROOT_ALLOC_SIZE, align 4
  %153 = sdiv i32 %151, %152
  %154 = call i32 @OSAddAtomic64(i32 %153, i32* @alloc_tteroot_count)
  %155 = load i64, i64* %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @pmap_tt_ledger_credit(i64 %155, i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @phystokv(i32 %158)
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %4, align 8
  br label %162

162:                                              ; preds = %141, %98, %60, %43, %21
  %163 = load i32*, i32** %4, align 8
  ret i32* %163
}

declare dso_local i32 @pmap_simple_lock(i32*) #1

declare dso_local i32 @pmap_simple_unlock(i32*) #1

declare dso_local i32 @pmap_tt_ledger_credit(i64, i32) #1

declare dso_local i64 @pmap_pages_alloc(i32*, i32, i32) #1

declare dso_local i32 @phystokv(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
