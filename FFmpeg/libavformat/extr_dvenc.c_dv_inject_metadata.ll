; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_inject_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_inject_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i64 }

@dv_timecode = common dso_local global i32 0, align 4
@dv_video_recdate = common dso_local global i32 0, align 4
@dv_video_rectime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @dv_inject_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dv_inject_metadata(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %7, align 8
  br label %9

9:                                                ; preds = %152, %2
  %10 = load i32*, i32** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  %19 = icmp ult i32* %10, %18
  br i1 %19, label %20, label %155

20:                                               ; preds = %9
  store i32 80, i32* %5, align 4
  br label %21

21:                                               ; preds = %108, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 240
  br i1 %23, label %24, label %111

24:                                               ; preds = %21
  store i32 6, i32* %6, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 48
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i32, i32* @dv_timecode, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = call i32 @dv_write_pack(i32 %29, %struct.TYPE_6__* %30, i32* %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %6, align 4
  br label %25

41:                                               ; preds = %25
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = mul nsw i64 %58, %63
  %65 = sdiv i64 %53, %64
  %66 = sdiv i64 %47, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = srem i64 %66, %71
  %73 = icmp sgt i64 %72, 5
  br i1 %73, label %74, label %107

74:                                               ; preds = %41
  %75 = load i32, i32* @dv_video_recdate, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 14
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = call i32 @dv_write_pack(i32 %75, %struct.TYPE_6__* %76, i32* %81)
  %83 = load i32, i32* @dv_video_rectime, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 22
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = call i32 @dv_write_pack(i32 %83, %struct.TYPE_6__* %84, i32* %89)
  %91 = load i32, i32* @dv_video_recdate, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 38
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = call i32 @dv_write_pack(i32 %91, %struct.TYPE_6__* %92, i32* %97)
  %99 = load i32, i32* @dv_video_rectime, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 46
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = call i32 @dv_write_pack(i32 %99, %struct.TYPE_6__* %100, i32* %105)
  br label %107

107:                                              ; preds = %74, %41
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 80
  store i32 %110, i32* %5, align 4
  br label %21

111:                                              ; preds = %21
  store i32 243, i32* %5, align 4
  br label %112

112:                                              ; preds = %148, %111
  %113 = load i32, i32* %5, align 4
  %114 = icmp slt i32 %113, 480
  br i1 %114, label %115, label %151

115:                                              ; preds = %112
  %116 = load i32, i32* @dv_video_recdate, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 10
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = call i32 @dv_write_pack(i32 %116, %struct.TYPE_6__* %117, i32* %122)
  %124 = load i32, i32* @dv_video_rectime, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 15
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = call i32 @dv_write_pack(i32 %124, %struct.TYPE_6__* %125, i32* %130)
  %132 = load i32, i32* @dv_video_recdate, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 55
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = call i32 @dv_write_pack(i32 %132, %struct.TYPE_6__* %133, i32* %138)
  %140 = load i32, i32* @dv_video_rectime, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 60
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = call i32 @dv_write_pack(i32 %140, %struct.TYPE_6__* %141, i32* %146)
  br label %148

148:                                              ; preds = %115
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 80
  store i32 %150, i32* %5, align 4
  br label %112

151:                                              ; preds = %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 12000
  store i32* %154, i32** %7, align 8
  br label %9

155:                                              ; preds = %9
  ret void
}

declare dso_local i32 @dv_write_pack(i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
