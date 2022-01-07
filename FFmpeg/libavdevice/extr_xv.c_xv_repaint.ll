; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_xv_repaint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_xv_repaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@True = common dso_local global i32 0, align 4
@Success = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not copy image to XV shared memory buffer\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @xv_repaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xv_repaint(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca [2 x %struct.TYPE_12__], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @XGetWindowAttributes(i32 %12, i32 %15, %struct.TYPE_10__* %5)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %131

30:                                               ; preds = %23, %1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = call i32 @compute_display_area(%struct.TYPE_13__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %30
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 16
  %51 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 16
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  %59 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 16
  %61 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 16
  %63 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %84 = call i32 @XFillRectangles(i32 %76, i32 %79, i32 %82, %struct.TYPE_12__* %83, i32 2)
  br label %85

85:                                               ; preds = %45, %30
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %130

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 16
  %95 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 16
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i64 %99, i64* %103, align 8
  %104 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  store i64 0, i64* %109, align 16
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 16
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %6, i64 0, i64 0
  %129 = call i32 @XFillRectangles(i32 %121, i32 %124, i32 %127, %struct.TYPE_12__* %128, i32 2)
  br label %130

130:                                              ; preds = %90, %85
  br label %131

131:                                              ; preds = %130, %23
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @True, align 4
  %166 = call i64 @XvShmPutImage(i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 0, i32 0, i32 %149, i32 %152, i64 %155, i64 %158, i64 %161, i64 %164, i32 %165)
  %167 = load i64, i64* @Success, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %131
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = load i32, i32* @AV_LOG_ERROR, align 4
  %172 = call i32 @av_log(%struct.TYPE_13__* %170, i32 %171, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %173, i32* %2, align 4
  br label %175

174:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %169
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @compute_display_area(%struct.TYPE_13__*) #1

declare dso_local i32 @XFillRectangles(i32, i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @XvShmPutImage(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
