; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_put_swf_line_edge.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_swfenc.c_put_swf_line_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @put_swf_line_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_swf_line_edge(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @put_bits(i32* %9, i32 1, i32 1)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @put_bits(i32* %11, i32 1, i32 1)
  store i32 2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @max_nbits(i32* %7, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @max_nbits(i32* %7, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 2
  %23 = call i32 @put_bits(i32* %20, i32 4, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @put_bits(i32* %27, i32 1, i32 0)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @put_bits(i32* %29, i32 1, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @put_bits(i32* %31, i32 %32, i32 %35)
  br label %67

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @put_bits(i32* %41, i32 1, i32 0)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @put_bits(i32* %43, i32 1, i32 0)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @put_bits(i32* %45, i32 %46, i32 %49)
  br label %66

51:                                               ; preds = %37
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @put_bits(i32* %52, i32 1, i32 1)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @put_bits(i32* %54, i32 %55, i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @put_bits(i32* %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %51, %40
  br label %67

67:                                               ; preds = %66, %26
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @max_nbits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
