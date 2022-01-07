; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngpread.c_png_push_process_row.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngpread.c_png_push_process_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i64, i64, i32, i32, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32 }

@PNG_FILTER_VALUE_NONE = common dso_local global i32 0, align 4
@PNG_FILTER_VALUE_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"progressive row overflow\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"internal progressive row size calculation error\00", align 1
@PNG_INTERLACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_push_process_row(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 12
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  store i32 %10, i32* %11, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @PNG_ROWBYTES(i64 %25, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PNG_FILTER_VALUE_NONE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PNG_FILTER_VALUE_LAST, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @png_read_filter_row(%struct.TYPE_12__* %46, %struct.TYPE_13__* %3, i32* %50, i64 %54, i32 %59)
  br label %64

61:                                               ; preds = %37
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %63 = call i32 @png_error(%struct.TYPE_12__* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %45
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 @memcpy(i64 %68, i32* %71, i64 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = call i32 @png_error(%struct.TYPE_12__* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %80
  br label %106

95:                                               ; preds = %65
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = call i32 @png_error(%struct.TYPE_12__* %103, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105, %94
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 7
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = call i32 @png_push_have_row(%struct.TYPE_12__* %107, i32* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = call i32 @png_read_push_finish_row(%struct.TYPE_12__* %113)
  ret void
}

declare dso_local i64 @PNG_ROWBYTES(i64, i32) #1

declare dso_local i32 @png_read_filter_row(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i64, i32) #1

declare dso_local i32 @png_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @png_push_have_row(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @png_read_push_finish_row(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
