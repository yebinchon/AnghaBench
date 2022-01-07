; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_ff_mpeg_ref_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegpicture.c_ff_mpeg_ref_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i64, %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpeg_ref_picture(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 11
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @av_assert0(i32 %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 11
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @av_assert0(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 11
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 10
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 10
  %44 = call i32 @ff_thread_ref_frame(%struct.TYPE_15__* %41, %struct.TYPE_15__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %125

48:                                               ; preds = %3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = call i32 @ff_update_picture_tables(%struct.TYPE_14__* %49, %struct.TYPE_14__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %125

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = call %struct.TYPE_12__* @av_buffer_ref(%struct.TYPE_12__* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %125

74:                                               ; preds = %60
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 9
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %74, %55
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @memcpy(i32 %120, i32 %123, i32 4)
  store i32 0, i32* %4, align 4
  br label %130

125:                                              ; preds = %71, %54, %47
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = call i32 @ff_mpeg_unref_picture(i32* %126, %struct.TYPE_14__* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %82
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_thread_ref_frame(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ff_update_picture_tables(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @av_buffer_ref(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ff_mpeg_unref_picture(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
