; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_inject_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_inject_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__*, %struct.TYPE_8__**, i32 }
%struct.TYPE_10__ = type { i32, i32**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@dv_aaux_packs_dist = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32*)* @dv_inject_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_inject_audio(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dv_audio_frame_size(%struct.TYPE_10__* %14, i32 %17, i32 %28)
  %30 = mul nsw i32 4, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %31, %36
  %38 = mul nsw i32 %37, 150
  %39 = mul nsw i32 %38, 80
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %156, %3
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %159

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 480
  store i32* %53, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %152, %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 9
  br i1 %56, label %57, label %155

57:                                               ; preds = %54
  %58 = load i32**, i32*** @dv_aaux_packs_dist, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 2
  %78 = icmp sge i32 %71, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @dv_write_pack(i32 %66, %struct.TYPE_9__* %67, i32* %69, i32 %70, i32 %79)
  store i32 8, i32* %9, align 4
  br label %81

81:                                               ; preds = %146, %57
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 80
  br i1 %83, label %84, label %149

84:                                               ; preds = %81
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, 8
  %100 = sdiv i32 %99, 2
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %100, %105
  %107 = add nsw i32 %97, %106
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul nsw i32 %108, 2
  %110 = load i32, i32* %11, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %84
  br label %146

113:                                              ; preds = %84
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = call i32* @av_fifo_peek2(i32 %120, i32 %123)
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 %137, 2
  %139 = call i32* @av_fifo_peek2(i32 %136, i32 %138)
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  br label %146

146:                                              ; preds = %113, %112
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %9, align 4
  br label %81

149:                                              ; preds = %81
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1280
  store i32* %151, i32** %6, align 8
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %54

155:                                              ; preds = %54
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %43

159:                                              ; preds = %43
  ret void
}

declare dso_local i32 @dv_audio_frame_size(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @dv_write_pack(i32, %struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32* @av_fifo_peek2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
