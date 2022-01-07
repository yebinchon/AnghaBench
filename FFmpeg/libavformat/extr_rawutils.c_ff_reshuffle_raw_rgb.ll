; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rawutils.c_ff_reshuffle_raw_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rawutils.c_ff_reshuffle_raw_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_reshuffle_raw_rgb(i32* %0, %struct.TYPE_10__** %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 15
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 16, %31 ]
  store i32 %33, i32* %12, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = add nsw i32 %38, 7
  %40 = ashr i32 %39, 3
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %45, 1024
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %49, %32
  %56 = phi i1 [ false, %32 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  br label %70

66:                                               ; preds = %55
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi i32 [ %65, %60 ], [ %69, %66 ]
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %72, %75
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @FFMIN(i32 %78, i32 %79)
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %181

92:                                               ; preds = %70
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %94, %97
  %99 = icmp ne i32 %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 0, i32* %5, align 4
  br label %181

101:                                              ; preds = %92
  %102 = call %struct.TYPE_10__* (...) @av_packet_alloc()
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %20, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %5, align 4
  br label %181

108:                                              ; preds = %101
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = call i32 @av_new_packet(%struct.TYPE_10__* %109, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %178

119:                                              ; preds = %108
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %122 = call i32 @av_packet_copy_props(%struct.TYPE_10__* %120, %struct.TYPE_10__* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %178

126:                                              ; preds = %119
  store i32 0, i32* %19, align 4
  br label %127

127:                                              ; preds = %170, %126
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %136, %140
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %17, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @FFMIN(i32 %150, i32 %151)
  %153 = call i32 @memcpy(i64 %141, i64 %149, i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %156, %160
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 %164, %166
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @memset(i64 %167, i32 0, i32 %168)
  br label %170

170:                                              ; preds = %133
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %127

173:                                              ; preds = %127
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %175 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %175, align 8
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 1, %176
  store i32 %177, i32* %5, align 4
  br label %181

178:                                              ; preds = %125, %118
  %179 = call i32 @av_packet_free(%struct.TYPE_10__** %20)
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %178, %173, %105, %100, %91
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local %struct.TYPE_10__* @av_packet_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
