; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_read_dst_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_iff.c_read_dst_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__**, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @read_dst_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dst_frame(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %163, %2
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @avio_feof(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %175

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @avio_tell(i32* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %34, i32* %3, align 4
  br label %177

35:                                               ; preds = %25
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @avio_rl32(i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @avio_rb64(i32* %43)
  br label %48

45:                                               ; preds = %35
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @avio_rb32(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i64 [ %44, %42 ], [ %47, %45 ]
  store i64 %49, i64* %11, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @avio_tell(i32* %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp slt i64 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %3, align 4
  br label %177

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %163 [
    i32 129, label %58
    i32 128, label %136
  ]

58:                                               ; preds = %56
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %7, align 8
  %63 = call i64 @avio_tell(i32* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 12, i32 8
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %63, %70
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %177

83:                                               ; preds = %58
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @av_get_packet(i32* %84, %struct.TYPE_12__* %85, i64 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %3, align 4
  br label %177

92:                                               ; preds = %83
  %93 = load i64, i64* %11, align 8
  %94 = and i64 %93, 1
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @avio_skip(i32* %97, i64 1)
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %109, i64 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 588, %115
  %117 = sdiv i32 %116, 44100
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @avio_tell(i32* %123)
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %177

131:                                              ; preds = %99
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i32, i32* @SEEK_SET, align 4
  %135 = call i32 @avio_seek(i32* %132, i64 %133, i32 %134)
  store i32 0, i32* %3, align 4
  br label %177

136:                                              ; preds = %56
  %137 = load i64, i64* %11, align 8
  %138 = icmp slt i64 %137, 4
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %140, i32* %3, align 4
  br label %177

141:                                              ; preds = %136
  %142 = load i32*, i32** %7, align 8
  %143 = call i64 @avio_rb32(i32* %142)
  %144 = mul nsw i64 %143, 588
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %147, i64 0
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = mul nsw i64 %144, %154
  %156 = sdiv i64 %155, 44100
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i64 %156, i64* %162, align 8
  br label %163

163:                                              ; preds = %56, %141
  %164 = load i32*, i32** %7, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = call i64 @avio_tell(i32* %166)
  %168 = load i64, i64* %10, align 8
  %169 = sub nsw i64 %167, %168
  %170 = sub nsw i64 %165, %169
  %171 = load i64, i64* %11, align 8
  %172 = and i64 %171, 1
  %173 = add nsw i64 %170, %172
  %174 = call i32 @avio_skip(i32* %164, i64 %173)
  br label %20

175:                                              ; preds = %20
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %139, %131, %130, %90, %61, %54, %33
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i64 @avio_rb64(i32*) #1

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @avio_skip(i32*, i64) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
