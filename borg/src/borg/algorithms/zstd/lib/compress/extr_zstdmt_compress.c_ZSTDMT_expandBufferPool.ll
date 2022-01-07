; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_expandBufferPool.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_expandBufferPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i32)* @ZSTDMT_expandBufferPool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ZSTDMT_expandBufferPool(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 2, %10
  %12 = add nsw i32 %11, 3
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %3, align 8
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32 @ZSTDMT_freeBufferPool(%struct.TYPE_7__* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_7__* @ZSTDMT_createBufferPool(i32 %33, i32 %34)
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %9, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = icmp eq %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %3, align 8
  br label %45

40:                                               ; preds = %24
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ZSTDMT_setBufferSize(%struct.TYPE_7__* %41, i64 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %3, align 8
  br label %45

45:                                               ; preds = %40, %38, %22, %15
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %46
}

declare dso_local i32 @ZSTDMT_freeBufferPool(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @ZSTDMT_createBufferPool(i32, i32) #1

declare dso_local i32 @ZSTDMT_setBufferSize(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
