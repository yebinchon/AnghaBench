; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_aax_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_aax_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*)* @aax_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aax_filter(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i8* %9, i32 %12, i32 16)
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @av_aes_init(i32 %18, i32 %21, i32 128, i32 1)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %30 = call i32 @av_aes_crypt(i32 %25, i32* %26, i32* %27, i32 %28, i8* %29, i32 1)
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @av_aes_init(i32, i32, i32, i32) #1

declare dso_local i32 @av_aes_crypt(i32, i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
