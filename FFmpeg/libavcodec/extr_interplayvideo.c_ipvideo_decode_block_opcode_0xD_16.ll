; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0xD_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_interplayvideo.c_ipvideo_decode_block_opcode_0xD_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipvideo_decode_block_opcode_0xD_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvideo_decode_block_opcode_0xD_16(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = call i32 @bytestream2_get_le16(i32* %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @bytestream2_get_le16(i32* %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %20, %16
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %8, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %13

56:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
