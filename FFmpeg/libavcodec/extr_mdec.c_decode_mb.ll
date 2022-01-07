; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdec.c_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdec.c_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*)* }

@decode_mb.block_index = internal constant [6 x i32] [i32 5, i32 4, i32 0, i32 1, i32 2, i32 3], align 16
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, [64 x i32]*)* @decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mb(%struct.TYPE_6__* %0, [64 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca [64 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store [64 x i32]* %1, [64 x i32]** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = load [64 x i32]*, [64 x i32]** %5, align 8
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0, i64 0
  %15 = call i32 %11(i32* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load [64 x i32]*, [64 x i32]** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* @decode_mb.block_index, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 %26
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* @decode_mb.block_index, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mdec_decode_block_intra(%struct.TYPE_6__* %20, i32* %28, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %19
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i64 @get_bits_left(i32* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %16

48:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mdec_decode_block_intra(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
