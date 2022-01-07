; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_msnwc_tcp.c_msnwc_tcp_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_msnwc_tcp.c_msnwc_tcp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@HEADER_SIZE = common dso_local global i64 0, align 8
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @msnwc_tcp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msnwc_tcp_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %70, %1
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @HEADER_SIZE, align 8
  %13 = add nsw i64 %11, %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = call i64 @bytestream_get_le16(i32** %8)
  %26 = load i64, i64* @HEADER_SIZE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %70

29:                                               ; preds = %18
  %30 = call i64 @bytestream_get_le16(i32** %8)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = call i64 @bytestream_get_le16(i32** %8)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 320
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 240
  br i1 %38, label %46, label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 160
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 120
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %39
  br label %70

46:                                               ; preds = %42, %36
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %8, align 8
  %51 = call i64 @bytestream_get_le32(i32** %8)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @MKTAG(i8 signext 77, i8 signext 76, i8 signext 50, i32 48)
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %70

56:                                               ; preds = %46
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 14
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %2, align 4
  br label %74

65:                                               ; preds = %59
  %66 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %67 = sdiv i32 %66, 3
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %56
  %69 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %69, i32* %2, align 4
  br label %74

70:                                               ; preds = %55, %45, %28
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %9

73:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %68, %65, %62
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @bytestream_get_le16(i32**) #1

declare dso_local i64 @bytestream_get_le32(i32**) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
