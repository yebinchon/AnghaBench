; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_roq_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_roqvideoenc.c_roq_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_15__ = type { i32 }

@ROQ_LAMBDA_SCALE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*)* @roq_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roq_encode_frame(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 9
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %18, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %38

33:                                               ; preds = %4
  %34 = load i32, i32* @ROQ_LAMBDA_SCALE, align 4
  %35 = mul nsw i32 2, %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sdiv i32 %45, 64
  %47 = mul nsw i32 %46, 138
  %48 = add nsw i32 %47, 7
  %49 = sdiv i32 %48, 8
  %50 = add nsw i32 %49, 2560
  %51 = add nsw i32 %50, 8
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @ff_alloc_packet2(%struct.TYPE_16__* %52, %struct.TYPE_14__* %53, i32 %54, i32 0)
  store i32 %55, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %130

59:                                               ; preds = %38
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %59
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ff_get_buffer(%struct.TYPE_16__* %81, i32 %84, i32 0)
  store i32 %85, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ff_get_buffer(%struct.TYPE_16__* %88, i32 %91, i32 0)
  store i32 %92, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87, %80
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %130

96:                                               ; preds = %87
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = call i32 @roq_write_video_info_chunk(%struct.TYPE_13__* %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %75
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = call i32 @roq_encode_video(%struct.TYPE_13__* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %130

108:                                              ; preds = %101
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %128

122:                                              ; preds = %108
  %123 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %108
  %129 = load i32*, i32** %9, align 8
  store i32 1, i32* %129, align 4
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %106, %94, %57
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_16__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @roq_write_video_info_chunk(%struct.TYPE_13__*) #1

declare dso_local i32 @roq_encode_video(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
