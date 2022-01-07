; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9block.c_decode_coeffs_b32_16bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9block.c_decode_coeffs_b32_16bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, [6 x [3 x i32]]*, [6 x [2 x i32]]*, [6 x [11 x i32]]*, i32, i32*, [2 x i32]*, i32*, i32*)* @decode_coeffs_b32_16bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_coeffs_b32_16bpp(%struct.TYPE_9__* %0, i32* %1, i32 %2, [6 x [3 x i32]]* %3, [6 x [2 x i32]]* %4, [6 x [11 x i32]]* %5, i32 %6, i32* %7, [2 x i32]* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [6 x [3 x i32]]*, align 8
  %16 = alloca [6 x [2 x i32]]*, align 8
  %17 = alloca [6 x [11 x i32]]*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca [2 x i32]*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store [6 x [3 x i32]]* %3, [6 x [3 x i32]]** %15, align 8
  store [6 x [2 x i32]]* %4, [6 x [2 x i32]]** %16, align 8
  store [6 x [11 x i32]]* %5, [6 x [11 x i32]]** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store [2 x i32]* %8, [2 x i32]** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load [6 x [3 x i32]]*, [6 x [3 x i32]]** %15, align 8
  %36 = bitcast [6 x [3 x i32]]* %35 to i32***
  %37 = load [6 x [2 x i32]]*, [6 x [2 x i32]]** %16, align 8
  %38 = bitcast [6 x [2 x i32]]* %37 to i32***
  %39 = load [6 x [11 x i32]]*, [6 x [11 x i32]]** %17, align 8
  %40 = bitcast [6 x [11 x i32]]* %39 to i32***
  %41 = load i32, i32* %18, align 4
  %42 = load i32*, i32** %19, align 8
  %43 = load [2 x i32]*, [2 x i32]** %20, align 8
  %44 = bitcast [2 x i32]* %43 to i32**
  %45 = load i32*, i32** %21, align 8
  %46 = load i32*, i32** %22, align 8
  %47 = call i32 @decode_coeffs_b_generic(i32 %25, i32* %26, i32 %27, i32 1, i32 0, i32 %34, i32*** %36, i32*** %38, i32*** %40, i32 %41, i32* %42, i32** %44, i32* %45, i32* %46)
  ret i32 %47
}

declare dso_local i32 @decode_coeffs_b_generic(i32, i32*, i32, i32, i32, i32, i32***, i32***, i32***, i32, i32*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
