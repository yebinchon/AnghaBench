; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_Read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_img_tape.c_IMG_TAPE_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32*, i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IMG_TAPE_Read(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = call i32 @CassetteFlush(%struct.TYPE_5__* %16)
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = call i32 @ReadNextRecord(%struct.TYPE_5__* %30, i32* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %84

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, 1789
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 790
  %45 = sdiv i32 %44, 1000
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %5, align 4
  br label %84

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %21
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds i32, i32* %55, i64 %58
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %52
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  br label %79

78:                                               ; preds = %52
  br label %79

79:                                               ; preds = %78, %69
  %80 = phi i32 [ %77, %69 ], [ 600, %78 ]
  %81 = sdiv i32 17897900, %80
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %40, %33
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @CassetteFlush(%struct.TYPE_5__*) #1

declare dso_local i32 @ReadNextRecord(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
