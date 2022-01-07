; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_convert_pcm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_convert_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@CONVERSION_U8_TO_S16L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i64, i32*)* @convert_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_pcm(%struct.TYPE_6__* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca [256 x i32], align 16
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  br label %17

17:                                               ; preds = %40, %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @MIN(i32 1024, i64 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @bytestream_get(i32* %23, i32* %24, i64 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CONVERSION_U8_TO_S16L, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @convert_pcm_u8_to_s16l(i32** %8, i32* %33, i64 %34)
  br label %40

36:                                               ; preds = %20
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @bytestream_skip(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %17

44:                                               ; preds = %17
  ret void
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @bytestream_get(i32*, i32*, i64) #1

declare dso_local i32 @convert_pcm_u8_to_s16l(i32**, i32*, i64) #1

declare dso_local i32 @bytestream_skip(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
