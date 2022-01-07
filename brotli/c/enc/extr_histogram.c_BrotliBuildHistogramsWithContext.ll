; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_histogram.c_BrotliBuildHistogramsWithContext.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_histogram.c_BrotliBuildHistogramsWithContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@BROTLI_LITERAL_CONTEXT_BITS = common dso_local global i64 0, align 8
@BROTLI_DISTANCE_CONTEXT_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliBuildHistogramsWithContext(%struct.TYPE_8__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i64 %7, i32 %8, i32 %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_9__, align 8
  %31 = alloca %struct.TYPE_9__, align 8
  %32 = alloca %struct.TYPE_9__, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_8__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %15, align 8
  store i64 %1, i64* %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %39 = load i64, i64* %21, align 8
  store i64 %39, i64* %29, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %30, i32* %40)
  %42 = load i32*, i32** %18, align 8
  %43 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %31, i32* %42)
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %32, i32* %44)
  store i64 0, i64* %33, align 8
  br label %46

46:                                               ; preds = %158, %14
  %47 = load i64, i64* %33, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %161

50:                                               ; preds = %46
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = load i64, i64* %33, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %34, align 8
  %54 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %31)
  %55 = load i32*, i32** %27, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @HistogramAddCommand(i32* %58, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %35, align 8
  br label %66

66:                                               ; preds = %109, %50
  %67 = load i64, i64* %35, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %112

69:                                               ; preds = %66
  %70 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %30)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %36, align 8
  %73 = load i32*, i32** %25, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32*, i32** %25, align 8
  %77 = load i64, i64* %36, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BROTLI_CONTEXT_LUT(i32 %79)
  store i32 %80, i32* %37, align 4
  %81 = load i64, i64* %36, align 8
  %82 = load i64, i64* @BROTLI_LITERAL_CONTEXT_BITS, align 8
  %83 = shl i64 %81, %82
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = load i32, i32* %37, align 4
  %87 = call i64 @BROTLI_CONTEXT(i32 %84, i32 %85, i32 %86)
  %88 = add i64 %83, %87
  store i64 %88, i64* %36, align 8
  br label %89

89:                                               ; preds = %75, %69
  %90 = load i32*, i32** %26, align 8
  %91 = load i64, i64* %36, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32*, i32** %20, align 8
  %94 = load i64, i64* %29, align 8
  %95 = load i64, i64* %22, align 8
  %96 = and i64 %94, %95
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @HistogramAddLiteral(i32* %92, i32 %98)
  %100 = load i32, i32* %23, align 4
  store i32 %100, i32* %24, align 4
  %101 = load i32*, i32** %20, align 8
  %102 = load i64, i64* %29, align 8
  %103 = load i64, i64* %22, align 8
  %104 = and i64 %102, %103
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %23, align 4
  %107 = load i64, i64* %29, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %29, align 8
  br label %109

109:                                              ; preds = %89
  %110 = load i64, i64* %35, align 8
  %111 = add i64 %110, -1
  store i64 %111, i64* %35, align 8
  br label %66

112:                                              ; preds = %66
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %114 = call i64 @CommandCopyLen(%struct.TYPE_8__* %113)
  %115 = load i64, i64* %29, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %29, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %118 = call i64 @CommandCopyLen(%struct.TYPE_8__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %112
  %121 = load i32*, i32** %20, align 8
  %122 = load i64, i64* %29, align 8
  %123 = sub i64 %122, 2
  %124 = load i64, i64* %22, align 8
  %125 = and i64 %123, %124
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %24, align 4
  %128 = load i32*, i32** %20, align 8
  %129 = load i64, i64* %29, align 8
  %130 = sub i64 %129, 1
  %131 = load i64, i64* %22, align 8
  %132 = and i64 %130, %131
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %23, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %137, 128
  br i1 %138, label %139, label %156

139:                                              ; preds = %120
  %140 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %32)
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @BROTLI_DISTANCE_CONTEXT_BITS, align 8
  %144 = shl i64 %142, %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %146 = call i64 @CommandDistanceContext(%struct.TYPE_8__* %145)
  %147 = add i64 %144, %146
  store i64 %147, i64* %38, align 8
  %148 = load i32*, i32** %28, align 8
  %149 = load i64, i64* %38, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 1023
  %155 = call i32 @HistogramAddDistance(i32* %150, i32 %154)
  br label %156

156:                                              ; preds = %139, %120
  br label %157

157:                                              ; preds = %156, %112
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %33, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %33, align 8
  br label %46

161:                                              ; preds = %46
  ret void
}

declare dso_local i32 @InitBlockSplitIterator(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @BlockSplitIteratorNext(%struct.TYPE_9__*) #1

declare dso_local i32 @HistogramAddCommand(i32*, i32) #1

declare dso_local i32 @BROTLI_CONTEXT_LUT(i32) #1

declare dso_local i64 @BROTLI_CONTEXT(i32, i32, i32) #1

declare dso_local i32 @HistogramAddLiteral(i32*, i32) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_8__*) #1

declare dso_local i64 @CommandDistanceContext(%struct.TYPE_8__*) #1

declare dso_local i32 @HistogramAddDistance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
