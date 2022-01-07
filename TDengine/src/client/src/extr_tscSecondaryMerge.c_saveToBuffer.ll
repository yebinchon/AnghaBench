; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_saveToBuffer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_saveToBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @saveToBuffer(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %24, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %6
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @tColModelAppend(%struct.TYPE_12__* %34, %struct.TYPE_11__* %35, i8* %36, i64 0, i64 %37, i64 %38)
  store i64 0, i64* %7, align 8
  br label %136

40:                                               ; preds = %6
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %14, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %15, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @tColModelAppend(%struct.TYPE_12__* %53, %struct.TYPE_11__* %54, i8* %55, i64 0, i64 %56, i64 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i64 @tscFlushTmpBuffer(i32* %70, %struct.TYPE_10__* %71, %struct.TYPE_11__* %72, i64 %73)
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %16, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %40
  store i64 -1, i64* %7, align 8
  br label %136

78:                                               ; preds = %40
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %15, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %17, align 8
  br label %82

82:                                               ; preds = %128, %78
  %83 = load i64, i64* %17, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %82
  store i64 0, i64* %18, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %18, align 8
  br label %97

95:                                               ; preds = %85
  %96 = load i64, i64* %17, align 8
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %95, %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %17, align 8
  %103 = sub nsw i64 %101, %102
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @tColModelAppend(%struct.TYPE_12__* %98, %struct.TYPE_11__* %99, i8* %100, i64 %103, i64 %104, i64 %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %97
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = load i64, i64* %13, align 8
  %119 = call i64 @tscFlushTmpBuffer(i32* %115, %struct.TYPE_10__* %116, %struct.TYPE_11__* %117, i64 %118)
  store i64 %119, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i64 -1, i64* %7, align 8
  br label %136

123:                                              ; preds = %114
  br label %128

124:                                              ; preds = %97
  %125 = load i64, i64* %18, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %123
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %17, align 8
  %131 = sub nsw i64 %130, %129
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %15, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %15, align 8
  br label %82

135:                                              ; preds = %82
  store i64 0, i64* %7, align 8
  br label %136

136:                                              ; preds = %135, %122, %77, %31
  %137 = load i64, i64* %7, align 8
  ret i64 %137
}

declare dso_local i32 @tColModelAppend(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i64, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tscFlushTmpBuffer(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
