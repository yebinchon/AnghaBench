; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptxhd_pack_codeword.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aptx.c_aptxhd_pack_codeword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @aptxhd_pack_codeword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aptxhd_pack_codeword(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = call i32 @aptx_quantized_parity(%struct.TYPE_6__* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 30
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %12, %13
  %15 = shl i32 %14, 19
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 15
  %23 = shl i32 %22, 15
  %24 = or i32 %15, %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 63
  %32 = shl i32 %31, 9
  %33 = or i32 %24, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 511
  %41 = shl i32 %40, 0
  %42 = or i32 %33, %41
  ret i32 %42
}

declare dso_local i32 @aptx_quantized_parity(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
