; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_direct.c_ff_h264_direct_dist_scale_factor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_direct.c_ff_h264_direct_dist_scale_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32*, i8**, i8***, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }

@PICT_BOTTOM_FIELD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_direct_dist_scale_factor(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i64 @FIELD_PICTURE(%struct.TYPE_15__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PICT_BOTTOM_FIELD, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %19, i64 %26
  %28 = load i32, i32* %27, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  br label %35

35:                                               ; preds = %29, %14
  %36 = phi i32 [ %28, %14 ], [ %34, %29 ]
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %39, i64 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call i64 @FRAME_MBAFF(%struct.TYPE_15__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %112

48:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %108, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %111

52:                                               ; preds = %49
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %64, i64 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %104, %52
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 2, %82
  %84 = icmp slt i32 %77, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 16
  %91 = call i8* @get_scale_factor(%struct.TYPE_14__* %86, i32 %87, i32 %88, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = load i8***, i8**** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8**, i8*** %94, i64 %96
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = xor i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %98, i64 %102
  store i8* %91, i8** %103, align 8
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %76

107:                                              ; preds = %76
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %49

111:                                              ; preds = %49
  br label %112

112:                                              ; preds = %111, %35
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %133, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %113
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i8* @get_scale_factor(%struct.TYPE_14__* %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  store i8* %126, i8** %132, align 8
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %113

136:                                              ; preds = %113
  ret void
}

declare dso_local i64 @FIELD_PICTURE(%struct.TYPE_15__*) #1

declare dso_local i64 @FRAME_MBAFF(%struct.TYPE_15__*) #1

declare dso_local i8* @get_scale_factor(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
