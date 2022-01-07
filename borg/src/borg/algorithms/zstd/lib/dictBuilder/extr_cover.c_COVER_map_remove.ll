; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_map_remove.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_cover.c_COVER_map_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@MAP_EMPTY_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @COVER_map_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COVER_map_remove(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @COVER_map_index(%struct.TYPE_6__* %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i64 %15
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  store i64 1, i64* %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAP_EMPTY_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %82

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %25, %28
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %75, %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %34
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAP_EMPTY_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i64, i64* @MAP_EMPTY_VALUE, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %82

45:                                               ; preds = %30
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @COVER_map_hash(%struct.TYPE_6__* %47, i32 %50)
  %52 = sub i64 %46, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %52, %55
  %57 = load i64, i64* %7, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %45
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %6, align 8
  store i64 1, i64* %7, align 8
  br label %74

71:                                               ; preds = %45
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %71, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %77, %80
  store i64 %81, i64* %5, align 8
  br label %30

82:                                               ; preds = %41, %22
  ret void
}

declare dso_local i64 @COVER_map_index(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @COVER_map_hash(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
