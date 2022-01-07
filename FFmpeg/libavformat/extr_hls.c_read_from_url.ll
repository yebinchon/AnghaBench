; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_read_from_url.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_read_from_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i64, i32 }
%struct.segment = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.playlist*, %struct.segment*, i32*, i32)* @read_from_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_from_url(%struct.playlist* %0, %struct.segment* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca %struct.segment*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.playlist* %0, %struct.playlist** %5, align 8
  store %struct.segment* %1, %struct.segment** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.segment*, %struct.segment** %6, align 8
  %11 = getelementptr inbounds %struct.segment, %struct.segment* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.segment*, %struct.segment** %6, align 8
  %17 = getelementptr inbounds %struct.segment, %struct.segment* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.playlist*, %struct.playlist** %5, align 8
  %20 = getelementptr inbounds %struct.playlist, %struct.playlist* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = call i32 @FFMIN(i32 %15, i64 %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %14, %4
  %25 = load %struct.playlist*, %struct.playlist** %5, align 8
  %26 = getelementptr inbounds %struct.playlist, %struct.playlist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @avio_read(i32 %27, i32* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.playlist*, %struct.playlist** %5, align 8
  %37 = getelementptr inbounds %struct.playlist, %struct.playlist* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32 @avio_read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
