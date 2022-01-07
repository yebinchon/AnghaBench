; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_ff_mpeg4_init_partitions.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_ff_mpeg4_init_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mpeg4_init_partitions(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = call i32* @put_bits_ptr(%struct.TYPE_6__* %9)
  store i32* %10, i32** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = and i64 %27, -4
  %29 = load i32*, i32** %3, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = sub nsw i64 %28, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 2, %34
  %36 = sub nsw i32 %33, %35
  %37 = and i32 %36, -4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @set_put_bits_buffer_size(%struct.TYPE_6__* %39, i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @init_put_bits(i32* %43, i32* %47, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @init_put_bits(i32* %51, i32* %58, i32 %59)
  ret void
}

declare dso_local i32* @put_bits_ptr(%struct.TYPE_6__*) #1

declare dso_local i32 @set_put_bits_buffer_size(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
