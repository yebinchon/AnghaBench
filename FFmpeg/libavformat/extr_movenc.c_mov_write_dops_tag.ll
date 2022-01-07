; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_dops_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_dops_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"dOps\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid extradata size\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @mov_write_dops_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_dops_tag(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @avio_tell(i32* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @avio_wb32(i32* %11, i32 0)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ffio_wfourcc(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @avio_w8(i32* %15, i32 0)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 19
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 @av_log(i32* %24, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 9
  %36 = call i32 @AV_RB8(i64 %35)
  %37 = call i32 @avio_w8(i32* %29, i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 10
  %45 = call i32 @AV_RL16(i64 %44)
  %46 = call i32 @avio_wb16(i32* %38, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 12
  %54 = call i32 @AV_RL32(i64 %53)
  %55 = call i32 @avio_wb32(i32* %47, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 16
  %63 = call i32 @AV_RL16(i64 %62)
  %64 = call i32 @avio_wb16(i32* %56, i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 18
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 18
  %78 = call i32 @avio_write(i32* %65, i64 %71, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @update_size(i32* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %28, %23
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AV_RB8(i64) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @AV_RL16(i64) #1

declare dso_local i32 @AV_RL32(i64) #1

declare dso_local i32 @avio_write(i32*, i64, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
