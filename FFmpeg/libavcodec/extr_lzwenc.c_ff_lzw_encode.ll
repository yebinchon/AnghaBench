; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzwenc.c_ff_lzw_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzwenc.c_ff_lzw_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@LZW_PREFIX_EMPTY = common dso_local global i64 0, align 8
@LZW_PREFIX_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_lzw_encode(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = mul nsw i32 %19, 2
  %21 = icmp sgt i32 %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %101

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LZW_PREFIX_EMPTY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = call i32 @clearTable(%struct.TYPE_10__* %30)
  br label %32

32:                                               ; preds = %29, %23
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %95, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @findCode(%struct.TYPE_10__* %41, i32 %42, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LZW_PREFIX_FREE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %37
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @writeCode(%struct.TYPE_10__* %58, i64 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @addCode(%struct.TYPE_10__* %63, i32 %64, i64 %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @hash(i32 0, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %57, %37
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp sge i32 %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %72
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = call i32 @clearTable(%struct.TYPE_10__* %92)
  br label %94

94:                                               ; preds = %91, %72
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %33

98:                                               ; preds = %33
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = call i32 @writtenBytes(%struct.TYPE_10__* %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %22
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @clearTable(%struct.TYPE_10__*) #1

declare dso_local i32 @findCode(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @writeCode(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @addCode(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @writtenBytes(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
