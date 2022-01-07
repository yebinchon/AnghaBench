; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_boot.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@opt_lg_tcache_max = common dso_local global i32 0, align 4
@SMALL_MAXCLASS = common dso_local global i32 0, align 4
@tcache_maxclass = common dso_local global i32 0, align 4
@large_maxclass = common dso_local global i32 0, align 4
@nhbins = common dso_local global i32 0, align 4
@tcache_bin_info = common dso_local global %struct.TYPE_4__* null, align 8
@stack_nelms = common dso_local global i64 0, align 8
@NBINS = common dso_local global i32 0, align 4
@arena_bin_info = common dso_local global %struct.TYPE_5__* null, align 8
@TCACHE_NSLOTS_SMALL_MIN = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_SMALL_MAX = common dso_local global i32 0, align 4
@TCACHE_NSLOTS_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcache_boot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @opt_lg_tcache_max, align 4
  %4 = icmp ult i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @opt_lg_tcache_max, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @SMALL_MAXCLASS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5, %0
  %11 = load i32, i32* @SMALL_MAXCLASS, align 4
  store i32 %11, i32* @tcache_maxclass, align 4
  br label %23

12:                                               ; preds = %5
  %13 = load i32, i32* @opt_lg_tcache_max, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @large_maxclass, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @large_maxclass, align 4
  store i32 %18, i32* @tcache_maxclass, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @opt_lg_tcache_max, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* @tcache_maxclass, align 4
  br label %22

22:                                               ; preds = %19, %17
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* @tcache_maxclass, align 4
  %25 = call i32 @size2index(i32 %24)
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @nhbins, align 4
  %27 = load i32, i32* @nhbins, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i64 @base_alloc(i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** @tcache_bin_info, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %127

36:                                               ; preds = %23
  store i64 0, i64* @stack_nelms, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %99, %36
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @NBINS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arena_bin_info, align 8
  %43 = load i32, i32* %2, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i32, i32* @TCACHE_NSLOTS_SMALL_MIN, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %54 = load i32, i32* %2, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %89

58:                                               ; preds = %41
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arena_bin_info, align 8
  %60 = load i32, i32* %2, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 1
  %66 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arena_bin_info, align 8
  %70 = load i32, i32* %2, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %77 = load i32, i32* %2, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 4
  br label %88

81:                                               ; preds = %58
  %82 = load i32, i32* @TCACHE_NSLOTS_SMALL_MAX, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %84 = load i32, i32* %2, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %68
  br label %89

89:                                               ; preds = %88, %51
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %91 = load i32, i32* %2, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @stack_nelms, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* @stack_nelms, align 8
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %2, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %2, align 4
  br label %37

102:                                              ; preds = %37
  br label %103

103:                                              ; preds = %123, %102
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @nhbins, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load i32, i32* @TCACHE_NSLOTS_LARGE, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %110 = load i32, i32* %2, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tcache_bin_info, align 8
  %115 = load i32, i32* %2, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @stack_nelms, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* @stack_nelms, align 8
  br label %123

123:                                              ; preds = %107
  %124 = load i32, i32* %2, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %2, align 4
  br label %103

126:                                              ; preds = %103
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %126, %35
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @size2index(i32) #1

declare dso_local i64 @base_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
