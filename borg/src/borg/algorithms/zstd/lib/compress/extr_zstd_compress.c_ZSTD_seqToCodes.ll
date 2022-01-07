; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_seqToCodes.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstd_compress.c_ZSTD_seqToCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, %struct.TYPE_5__*, %struct.TYPE_5__*, i64*, i64*, i64* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@MaxLL = common dso_local global i64 0, align 8
@MaxML = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTD_seqToCodes(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 7
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %4, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %5, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %6, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = ptrtoint %struct.TYPE_5__* %25 to i64
  %30 = ptrtoint %struct.TYPE_5__* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 24
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %74, %1
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @ZSTD_LLcode(i64 %55)
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ZSTD_highbit32(i32 %64)
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @ZSTD_MLcode(i64 %69)
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %44
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %40

77:                                               ; preds = %40
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i64, i64* @MaxLL, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  store i64 %83, i64* %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i64, i64* @MaxML, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i64, i64* %96, i64 %99
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %94, %89
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ZSTD_LLcode(i64) #1

declare dso_local i64 @ZSTD_highbit32(i32) #1

declare dso_local i64 @ZSTD_MLcode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
