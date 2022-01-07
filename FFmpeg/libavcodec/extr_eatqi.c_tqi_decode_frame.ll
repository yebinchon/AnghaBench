; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatqi.c_tqi_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatqi.c_tqi_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64*, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i32 (i32, i32*, i32)* }
%struct.TYPE_14__ = type { i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @tqi_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tqi_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %13, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %14, align 8
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %5, align 4
  br label %184

37:                                               ; preds = %4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i32 @AV_RL16(i32* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = call i32 @AV_RL16(i32* %45)
  store i32 %46, i32* %17, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tqi_calculate_qtable(%struct.TYPE_13__* %47, i32 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  store i32* %53, i32** %10, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @ff_set_dimensions(%struct.TYPE_15__* %54, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %184

62:                                               ; preds = %37
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @ff_get_buffer(%struct.TYPE_15__* %63, i32* %64, i32 0)
  store i32 %65, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  br label %184

69:                                               ; preds = %62
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 7
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @av_fast_padded_malloc(i32* %71, i32* %73, i32 %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %69
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = call i32 @AVERROR(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %184

89:                                               ; preds = %69
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = sdiv i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 %93(i32 %96, i32* %97, i32 %105)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = mul nsw i64 8, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @init_get_bits(i32* %108, i32 %111, i32 %119)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %175, %89
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %139, 15
  %141 = sdiv i32 %140, 16
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %180

143:                                              ; preds = %135
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %146

146:                                              ; preds = %169, %143
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 15
  %152 = sdiv i32 %151, 16
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %146
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @tqi_decode_mb(%struct.TYPE_13__* %155, i32 %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %181

162:                                              ; preds = %154
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @tqi_idct_put(%struct.TYPE_15__* %163, i32* %164, i32 %167)
  br label %169

169:                                              ; preds = %162
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %146

174:                                              ; preds = %146
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  br label %135

180:                                              ; preds = %135
  br label %181

181:                                              ; preds = %180, %161
  %182 = load i32*, i32** %8, align 8
  store i32 1, i32* %182, align 4
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %86, %67, %60, %35
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @tqi_calculate_qtable(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i64 @tqi_decode_mb(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @tqi_idct_put(%struct.TYPE_15__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
