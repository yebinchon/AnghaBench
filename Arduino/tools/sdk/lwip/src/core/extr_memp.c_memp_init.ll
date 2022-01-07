; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_memp.c_memp_init.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_memp.c_memp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memp = type { %struct.memp* }

@MEMP_MAX = common dso_local global i64 0, align 8
@used = common dso_local global i32 0, align 4
@max = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@avail = common dso_local global i32 0, align 4
@memp_num = common dso_local global i64* null, align 8
@memp_memory = common dso_local global i32 0, align 4
@memp_tab = common dso_local global %struct.memp** null, align 8
@MEMP_SIZE = common dso_local global i32 0, align 4
@memp_sizes = common dso_local global i32* null, align 8
@MEMP_SANITY_REGION_AFTER_ALIGNED = common dso_local global i32 0, align 4
@memp_bases = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memp_init() #0 {
  %1 = alloca %struct.memp*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @MEMP_MAX, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load i32, i32* @used, align 4
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @MEMP_STATS_AVAIL(i32 %9, i64 %10, i64 0)
  %12 = load i32, i32* @max, align 4
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @MEMP_STATS_AVAIL(i32 %12, i64 %13, i64 0)
  %15 = load i32, i32* @err, align 4
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @MEMP_STATS_AVAIL(i32 %15, i64 %16, i64 0)
  %18 = load i32, i32* @avail, align 4
  %19 = load i64, i64* %2, align 8
  %20 = load i64*, i64** @memp_num, align 8
  %21 = load i64, i64* %2, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @MEMP_STATS_AVAIL(i32 %18, i64 %19, i64 %23)
  br label %25

25:                                               ; preds = %8
  %26 = load i64, i64* %2, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %2, align 8
  br label %4

28:                                               ; preds = %4
  %29 = load i32, i32* @memp_memory, align 4
  %30 = call i64 @LWIP_MEM_ALIGN(i32 %29)
  %31 = inttoptr i64 %30 to %struct.memp*
  store %struct.memp* %31, %struct.memp** %1, align 8
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %75, %28
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @MEMP_MAX, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %32
  %37 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.memp*, %struct.memp** %37, i64 %38
  store %struct.memp* null, %struct.memp** %39, align 8
  store i64 0, i64* %3, align 8
  br label %40

40:                                               ; preds = %71, %36
  %41 = load i64, i64* %3, align 8
  %42 = load i64*, i64** @memp_num, align 8
  %43 = load i64, i64* %2, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %41, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.memp*, %struct.memp** %48, i64 %49
  %51 = load %struct.memp*, %struct.memp** %50, align 8
  %52 = load %struct.memp*, %struct.memp** %1, align 8
  %53 = getelementptr inbounds %struct.memp, %struct.memp* %52, i32 0, i32 0
  store %struct.memp* %51, %struct.memp** %53, align 8
  %54 = load %struct.memp*, %struct.memp** %1, align 8
  %55 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %56 = load i64, i64* %2, align 8
  %57 = getelementptr inbounds %struct.memp*, %struct.memp** %55, i64 %56
  store %struct.memp* %54, %struct.memp** %57, align 8
  %58 = load %struct.memp*, %struct.memp** %1, align 8
  %59 = bitcast %struct.memp* %58 to i32*
  %60 = load i32, i32* @MEMP_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** @memp_sizes, align 8
  %64 = load i64, i64* %2, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  %69 = bitcast i32* %68 to i8*
  %70 = bitcast i8* %69 to %struct.memp*
  store %struct.memp* %70, %struct.memp** %1, align 8
  br label %71

71:                                               ; preds = %47
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %40

74:                                               ; preds = %40
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %2, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %2, align 8
  br label %32

78:                                               ; preds = %32
  ret void
}

declare dso_local i32 @MEMP_STATS_AVAIL(i32, i64, i64) #1

declare dso_local i64 @LWIP_MEM_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
