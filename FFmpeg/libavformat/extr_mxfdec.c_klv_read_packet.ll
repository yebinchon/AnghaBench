; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_klv_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_klv_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@mxf_klv_key = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @klv_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klv_read_packet(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @mxf_klv_key, align 4
  %10 = call i32 @mxf_read_sync(i32* %8, i32 %9, i32 4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @avio_tell(i32* %15)
  %17 = sub nsw i64 %16, 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @mxf_klv_key, align 4
  %24 = call i32 @memcpy(i64 %22, i32 %23, i32 4)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 4
  %30 = call i32 @avio_read(i32* %25, i64 %29, i32 12)
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @klv_decode_ber_length(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %14
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %14
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @avio_tell(i32* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @INT64_MAX, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %38
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %49, %35, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mxf_read_sync(i32*, i32, i32) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i64 @klv_decode_ber_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
