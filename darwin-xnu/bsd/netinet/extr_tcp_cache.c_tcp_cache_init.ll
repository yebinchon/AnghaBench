; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cache.c_tcp_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@sane_size = common dso_local global i32 0, align 4
@tcp_cache_size = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@tcp_cache = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Allocating tcp_cache failed at boot-time!\00", align 1
@tcp_cache_mtx_grp_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tcpcache\00", align 1
@tcp_cache_mtx_grp = common dso_local global i32 0, align 4
@tcp_cache_mtx_attr = common dso_local global i32 0, align 4
@tcp_heuristics = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Allocating tcp_heuristic failed at boot-time!\00", align 1
@tcp_heuristic_mtx_grp_attr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"tcpheuristic\00", align 1
@tcp_heuristic_mtx_grp = common dso_local global i32 0, align 4
@tcp_heuristic_mtx_attr = common dso_local global i32 0, align 4
@tcp_cache_hash_seed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_cache_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @sane_size, align 4
  %4 = sdiv i32 %3, 1024
  %5 = sdiv i32 %4, 1024
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = ashr i32 %6, 2
  %8 = call i32 @tcp_cache_roundup2(i32 %7)
  store i32 %8, i32* @tcp_cache_size, align 4
  %9 = load i32, i32* @tcp_cache_size, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 32, i32* @tcp_cache_size, align 4
  br label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @tcp_cache_size, align 4
  %14 = icmp sgt i32 %13, 1024
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1024, i32* @tcp_cache_size, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* @tcp_cache_size, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = call i8* @_MALLOC(i32 %21, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** @tcp_cache, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcp_cache, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %17
  %31 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %31, i32* @tcp_cache_mtx_grp_attr, align 4
  %32 = load i32, i32* @tcp_cache_mtx_grp_attr, align 4
  %33 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 %33, i32* @tcp_cache_mtx_grp, align 4
  %34 = call i32 (...) @lck_attr_alloc_init()
  store i32 %34, i32* @tcp_cache_mtx_attr, align 4
  %35 = load i32, i32* @tcp_cache_size, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @M_TEMP, align 4
  %40 = load i32, i32* @M_ZERO, align 4
  %41 = call i8* @_MALLOC(i32 %38, i32 %39, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** @tcp_heuristics, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcp_heuristics, align 8
  %44 = icmp eq %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %30
  %48 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %48, i32* @tcp_heuristic_mtx_grp_attr, align 4
  %49 = load i32, i32* @tcp_heuristic_mtx_grp_attr, align 4
  %50 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  store i32 %50, i32* @tcp_heuristic_mtx_grp, align 4
  %51 = call i32 (...) @lck_attr_alloc_init()
  store i32 %51, i32* @tcp_heuristic_mtx_attr, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %85, %47
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @tcp_cache_size, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcp_cache, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* @tcp_cache_mtx_grp, align 4
  %63 = load i32, i32* @tcp_cache_mtx_attr, align 4
  %64 = call i32 @lck_mtx_init(i32* %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcp_cache, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @SLIST_INIT(i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcp_heuristics, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* @tcp_heuristic_mtx_grp, align 4
  %77 = load i32, i32* @tcp_heuristic_mtx_attr, align 4
  %78 = call i32 @lck_mtx_init(i32* %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tcp_heuristics, align 8
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = call i32 @SLIST_INIT(i32* %83)
  br label %85

85:                                               ; preds = %56
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %52

88:                                               ; preds = %52
  %89 = call i32 (...) @RandomULong()
  store i32 %89, i32* @tcp_cache_hash_seed, align 4
  ret void
}

declare dso_local i32 @tcp_cache_roundup2(i32) #1

declare dso_local i8* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @RandomULong(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
