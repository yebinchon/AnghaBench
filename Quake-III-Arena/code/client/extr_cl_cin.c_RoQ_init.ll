; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQ_init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RoQ_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@com_timescale = common dso_local global %struct.TYPE_4__* null, align 8
@cinTable = common dso_local global %struct.TYPE_5__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQ_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQ_init() #0 {
  %1 = call i32 (...) @CL_ScaledMilliseconds()
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_timescale, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = mul nsw i32 %1, %4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %7 = load i64, i64* @currentHandle, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %5, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %11 = load i64, i64* @currentHandle, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %15 = load i64, i64* @currentHandle, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 24, i32* %17, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 6
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 7
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 256
  %25 = add nsw i32 %20, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32 %25, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %31 = load i64, i64* @currentHandle, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %38 = load i64, i64* @currentHandle, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 30, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %43 = load i64, i64* @currentHandle, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32 -1, i32* %45, align 4
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 256
  %53 = add nsw i32 %48, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %55 = load i64, i64* @currentHandle, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 10
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 11
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 256
  %65 = add nsw i32 %60, %64
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 12
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 65536
  %70 = add nsw i32 %65, %69
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %72 = load i64, i64* @currentHandle, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 %70, i32* %74, align 4
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 14
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 15
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 256
  %82 = add nsw i32 %77, %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %84 = load i64, i64* @currentHandle, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 7
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %88 = load i64, i64* @currentHandle, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 65536
  br i1 %92, label %100, label %93

93:                                               ; preds = %41
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %95 = load i64, i64* @currentHandle, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93, %41
  br label %101

101:                                              ; preds = %100, %93
  ret void
}

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
