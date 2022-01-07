; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_aes_ctr.c_av_aes_ctr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVAESCTR = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_aes_ctr_init(%struct.AVAESCTR* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AVAESCTR*, align 8
  %5 = alloca i32*, align 8
  store %struct.AVAESCTR* %0, %struct.AVAESCTR** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = call i32 (...) @av_aes_alloc()
  %7 = load %struct.AVAESCTR*, %struct.AVAESCTR** %4, align 8
  %8 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.AVAESCTR*, %struct.AVAESCTR** %4, align 8
  %10 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = call i32 @AVERROR(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.AVAESCTR*, %struct.AVAESCTR** %4, align 8
  %18 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @av_aes_init(i32 %19, i32* %20, i32 128, i32 0)
  %22 = load %struct.AVAESCTR*, %struct.AVAESCTR** %4, align 8
  %23 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @memset(i32 %24, i32 0, i32 4)
  %26 = load %struct.AVAESCTR*, %struct.AVAESCTR** %4, align 8
  %27 = getelementptr inbounds %struct.AVAESCTR, %struct.AVAESCTR* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %16, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @av_aes_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_aes_init(i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
