; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbc_parser.c_sbc_parse_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbc_parser.c_sbc_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@sbc_parse_header.sample_rates = internal constant [4 x i32] [i32 16000, i32 32000, i32 44100, i32 48000], align 16
@MSBC_SYNCWORD = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i8* null, align 8
@SBC_SYNCWORD = common dso_local global i32 0, align 4
@SBC_MODE_MONO = common dso_local global i32 0, align 4
@SBC_MODE_JOINT_STEREO = common dso_local global i32 0, align 4
@SBC_MODE_DUAL_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i64)* @sbc_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_parse_header(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 3
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %140

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSBC_SYNCWORD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i8*, i8** @AV_SAMPLE_FMT_S16, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 16000, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 120, i32* %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  store i32 57, i32* %5, align 4
  br label %140

52:                                               ; preds = %32, %27, %21
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SBC_SYNCWORD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -2, i32* %5, align 4
  br label %140

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 6
  %64 = and i32 %63, 3
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 4
  %69 = and i32 %68, 3
  %70 = add nsw i32 %69, 1
  %71 = shl i32 %70, 2
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 2
  %76 = and i32 %75, 3
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 0
  %81 = and i32 %80, 1
  %82 = add nsw i32 %81, 1
  %83 = shl i32 %82, 2
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @SBC_MODE_MONO, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 2
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SBC_MODE_JOINT_STEREO, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 2
  %100 = add nsw i32 4, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @SBC_MODE_DUAL_CHANNEL, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = add nsw i32 %104, 1
  %106 = load i32, i32* %11, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %13, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = add nsw i32 %113, 7
  %115 = sdiv i32 %114, 8
  %116 = add nsw i32 %100, %115
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** @AV_SAMPLE_FMT_S16, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* @sbc_parse_header.sample_rates, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %59, %58, %37, %20
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
