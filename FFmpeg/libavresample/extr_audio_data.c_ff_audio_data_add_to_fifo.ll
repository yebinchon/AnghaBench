; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_add_to_fifo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_add_to_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32** }

@AVRESAMPLE_MAX_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_audio_data_add_to_fifo(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @AVRESAMPLE_MAX_CHANNELS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %59

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %51, %25
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %18, i64 %49
  store i32* %47, i32** %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i32*, i32** %6, align 8
  %56 = bitcast i32** %18 to i8**
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @av_audio_fifo_write(i32* %55, i8** %56, i32 %57)
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %59

59:                                               ; preds = %54, %24
  %60 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_audio_fifo_write(i32*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
