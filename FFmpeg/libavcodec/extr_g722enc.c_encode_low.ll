; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722enc.c_encode_low.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g722enc.c_encode_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.G722Band = type { i32, i64 }

@low_quant = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.G722Band*, i32)* @encode_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_low(%struct.G722Band* %0, i32 %1) #0 {
  %3 = alloca %struct.G722Band*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.G722Band* %0, %struct.G722Band** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %11 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = call i32 @av_clip_int16(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 31
  %18 = xor i32 %15, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = shl i32 %20, 10
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** @low_quant, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %27 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = icmp sgt i32 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 9, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %2
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 29
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** @low_quant, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.G722Band*, %struct.G722Band** %3, align 8
  %44 = getelementptr inbounds %struct.G722Band, %struct.G722Band* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = icmp sgt i32 %37, %46
  br label %48

48:                                               ; preds = %36, %33
  %49 = phi i1 [ false, %33 ], [ %47, %36 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %33

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 2
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 63, i32 33
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 61, %61 ]
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  ret i32 %65
}

declare dso_local i32 @av_clip_int16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
