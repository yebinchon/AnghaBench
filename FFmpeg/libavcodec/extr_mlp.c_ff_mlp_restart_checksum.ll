; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp.c_ff_mlp_restart_checksum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlp.c_ff_mlp_restart_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_1D = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mlp_restart_checksum(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, 2
  %10 = udiv i32 %9, 8
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** @crc_1D, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 63
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** @crc_1D, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 2
  %25 = call i32 @av_crc(i32* %19, i32 %20, i32* %22, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, %31
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %61, %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 2
  %38 = and i32 %37, 7
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 256
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = xor i32 %47, 285
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 7, %55
  %57 = ashr i32 %54, %56
  %58 = and i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @av_crc(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
