; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_frame_configure_elements.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_frame_configure_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_11__**, %struct.TYPE_12__*** }
%struct.TYPE_15__ = type { i32, i64* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@MAX_ELEM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @frame_configure_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_configure_elements(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %59, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_ELEM_ID, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__**, %struct.TYPE_12__*** %24, i64 %26
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %28, i64 %30
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %9, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %21
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %35, %21
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %17

62:                                               ; preds = %17
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = call i32 @av_frame_unref(%struct.TYPE_15__* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %129

76:                                               ; preds = %66
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 2048, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = call i32 @ff_get_buffer(%struct.TYPE_13__* %81, %struct.TYPE_15__* %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %129

89:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %125, %89
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %90
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %99, i64 %101
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = icmp ne %struct.TYPE_11__* %103, null
  br i1 %104, label %105, label %124

105:                                              ; preds = %96
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %118, i64 %120
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32* %115, i32** %123, align 8
  br label %124

124:                                              ; preds = %105, %96
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %90

128:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %87, %75
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @av_frame_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
