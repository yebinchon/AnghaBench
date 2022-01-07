; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_mov_cenc_write_encrypted.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenccenc.c_mov_cenc_write_encrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32)* @mov_cenc_write_encrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_cenc_write_encrypted(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %18, %4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @FFMIN(i32 %19, i32 16384)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* %9, i64 0, i64 0
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @av_aes_ctr_crypt(i32 %23, i32* %24, i32* %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds [4096 x i32], [4096 x i32]* %9, i64 0, i64 0
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @avio_write(i32* %28, i32* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %15

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_aes_ctr_crypt(i32, i32*, i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
