; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_metablock.c_BrotliInitDistanceParams.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_metablock.c_BrotliInitDistanceParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@BROTLI_MAX_DISTANCE_BITS = common dso_local global i32 0, align 4
@BROTLI_MAX_ALLOWED_DISTANCE = common dso_local global i32 0, align 4
@BROTLI_LARGE_MAX_DISTANCE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliInitDistanceParams(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BROTLI_MAX_DISTANCE_BITS, align 4
  %23 = call i32 @BROTLI_DISTANCE_ALPHABET_SIZE(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BROTLI_MAX_DISTANCE_BITS, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = add nsw i32 %28, 2
  %30 = shl i32 1, %29
  %31 = add i32 %25, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 2
  %34 = shl i32 1, %33
  %35 = sub i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %3
  %41 = load i32, i32* @BROTLI_MAX_ALLOWED_DISTANCE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @BrotliCalculateDistanceCodeLimit(i32 %41, i32 %42, i32 %43)
  %45 = bitcast %struct.TYPE_8__* %11 to i64*
  store i64 %44, i64* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @BROTLI_LARGE_MAX_DISTANCE_BITS, align 4
  %49 = call i32 @BROTLI_DISTANCE_ALPHABET_SIZE(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %40, %3
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @BROTLI_DISTANCE_ALPHABET_SIZE(i32, i32, i32) #1

declare dso_local i64 @BrotliCalculateDistanceCodeLimit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
