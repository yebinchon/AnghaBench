; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_speedhq_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_speedhq.c_speedhq_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i32, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @speedhq_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedhq_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %4
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp sge i32 %36, 100
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %5, align 4
  br label %116

40:                                               ; preds = %32
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 100, %44
  %46 = call i32 @compute_quant_matrix(i32 %43, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @AV_RL24(i32* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 3
  %53 = icmp sge i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %5, align 4
  br label %116

56:                                               ; preds = %40
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @FFALIGN(i32 %59, i32 16)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @FFALIGN(i32 %65, i32 16)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = call i32 @ff_get_buffer(%struct.TYPE_14__* %69, %struct.TYPE_13__* %70, i32 0)
  store i32 %71, i32* %16, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %56
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %5, align 4
  br label %116

75:                                               ; preds = %56
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @decode_speedhq_field(%struct.TYPE_11__* %81, i32* %82, i32 %83, %struct.TYPE_13__* %84, i32 0, i32 4, i32 %85, i32 1)
  store i32 %86, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %5, align 4
  br label %116

90:                                               ; preds = %80
  br label %113

91:                                               ; preds = %75
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @decode_speedhq_field(%struct.TYPE_11__* %92, i32* %93, i32 %94, %struct.TYPE_13__* %95, i32 0, i32 4, i32 %96, i32 2)
  store i32 %97, i32* %16, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %16, align 4
  store i32 %100, i32* %5, align 4
  br label %116

101:                                              ; preds = %91
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @decode_speedhq_field(%struct.TYPE_11__* %102, i32* %103, i32 %104, %struct.TYPE_13__* %105, i32 1, i32 %106, i32 %107, i32 2)
  store i32 %108, i32* %16, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %5, align 4
  br label %116

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %90
  %114 = load i32*, i32** %8, align 8
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %113, %110, %99, %88, %73, %54, %38, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @compute_quant_matrix(i32, i32) #1

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @decode_speedhq_field(%struct.TYPE_11__*, i32*, i32, %struct.TYPE_13__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
