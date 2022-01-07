; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64, i64 }

@DSS_AUDIO_BLOCK_HEADER_SIZE = common dso_local global i32 0, align 4
@DSS_ACODEC_DSS_SP = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@DSS_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @dss_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_read_seek(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DSS_ACODEC_DSS_SP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %30, 264
  %32 = mul nsw i32 %31, 41
  %33 = sdiv i32 %32, 506
  %34 = mul nsw i32 %33, 512
  store i32 %34, i32* %12, align 4
  br label %44

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = sdiv i32 %36, 240
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = sdiv i32 %41, 506
  %43 = mul nsw i32 %42, 512
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @avio_seek(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %124

66:                                               ; preds = %48
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %71 = call i32 @avio_read(i32 %69, i32* %23, i32 %70)
  %72 = getelementptr inbounds i32, i32* %23, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = and i32 %73, 128
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %23, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 2, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %83, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %66
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %124

94:                                               ; preds = %66
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @avio_skip(i32 %103, i32 %105)
  store i32 %106, i32* %15, align 4
  br label %121

107:                                              ; preds = %94
  %108 = load i64, i64* @DSS_BLOCK_SIZE, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @DSS_AUDIO_BLOCK_HEADER_SIZE, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @avio_skip(i32 %116, i32 %119)
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %107, %98
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i32 -1, i32* %123, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %121, %92, %64
  %125 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_seek(i32, i32, i32) #2

declare dso_local i32 @avio_read(i32, i32*, i32) #2

declare dso_local i32 @avio_skip(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
