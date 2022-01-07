; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_yao_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_yao_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @yao_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yao_block(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca [16 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 @yao_subblock(i32* %13, i32* %14, i32 %15, i32* %16)
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = call i32 @yao_subblock(i32* %18, i32* %19, i32 %20, i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 16
  %30 = call i32 @yao_subblock(i32* %25, i32* %26, i32 %27, i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 24
  %37 = call i32 @yao_subblock(i32* %32, i32* %33, i32 %34, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 32
  %44 = call i32 @yao_subblock(i32* %39, i32* %40, i32 %41, i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 40
  %51 = call i32 @yao_subblock(i32* %46, i32* %47, i32 %48, i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 48
  %58 = call i32 @yao_subblock(i32* %53, i32* %54, i32 %55, i32* %57)
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 56
  %65 = call i32 @yao_subblock(i32* %60, i32* %61, i32 %62, i32* %64)
  ret i32 64
}

declare dso_local i32 @yao_subblock(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
