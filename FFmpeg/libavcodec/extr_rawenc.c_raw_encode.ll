; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rawenc.c_raw_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rawenc.c_raw_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"yuv2\00", align 1
@AV_PIX_FMT_YUYV422 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"b64a\00", align 1
@AV_PIX_FMT_RGBA64BE = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32*)* @raw_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_encode(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @av_image_get_buffer_size(i64 %16, i32 %19, i32 %22, i32 1)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %164

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ff_alloc_packet2(%struct.TYPE_11__* %29, %struct.TYPE_9__* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %164

37:                                               ; preds = %28
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32**
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @av_image_copy_to_buffer(i32* %40, i32 %43, i32** %47, i32 %50, i64 %53, i32 %56, i32 %59, i32 1)
  store i32 %60, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %164

64:                                               ; preds = %37
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AV_PIX_FMT_YUYV422, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = mul nsw i32 %88, 2
  %90 = icmp slt i32 %81, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %80
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, 128
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 2
  store i32 %102, i32* %11, align 4
  br label %80

103:                                              ; preds = %80
  br label %157

104:                                              ; preds = %73, %70, %64
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %156

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %156

113:                                              ; preds = %110
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AV_PIX_FMT_RGBA64BE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %156

119:                                              ; preds = %113
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %152, %119
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %124, %127
  %129 = icmp slt i32 %121, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %120
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 8, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = call i32 @AV_RB64(i32* %137)
  store i32 %138, i32* %12, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = mul nsw i32 8, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %12, align 4
  %147 = shl i32 %146, 48
  %148 = load i32, i32* %12, align 4
  %149 = ashr i32 %148, 16
  %150 = or i32 %147, %149
  %151 = call i32 @AV_WB64(i32* %145, i32 %150)
  br label %152

152:                                              ; preds = %130
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %120

155:                                              ; preds = %120
  br label %156

156:                                              ; preds = %155, %113, %110, %104
  br label %157

157:                                              ; preds = %156, %103
  %158 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load i32*, i32** %9, align 8
  store i32 1, i32* %163, align 4
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %157, %62, %35, %26
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @av_image_get_buffer_size(i64, i32, i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @av_image_copy_to_buffer(i32*, i32, i32**, i32, i64, i32, i32, i32) #1

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @AV_RB64(i32*) #1

declare dso_local i32 @AV_WB64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
