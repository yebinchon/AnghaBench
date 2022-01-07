; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_decode_subblock.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_decode_subblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@modulo_three_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32*, i32)* @decode_subblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_subblock(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** @modulo_three_table, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %13, align 4
  %23 = ashr i32 %22, 6
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @decode_coeff(i32* %21, i32 %23, i32 3, i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %6
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 3
  %37 = load i32*, i32** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @decode_coeff(i32* %33, i32 %36, i32 2, i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %13, align 4
  %45 = ashr i32 %44, 2
  %46 = and i32 %45, 3
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @decode_coeff(i32* %43, i32 %46, i32 2, i32* %47, i32* %48, i32 %49)
  br label %72

51:                                               ; preds = %6
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %13, align 4
  %56 = ashr i32 %55, 4
  %57 = and i32 %56, 3
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @decode_coeff(i32* %54, i32 %57, i32 2, i32* %58, i32* %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %13, align 4
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 3
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @decode_coeff(i32* %64, i32 %67, i32 2, i32* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %51, %30
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %13, align 4
  %77 = ashr i32 %76, 0
  %78 = and i32 %77, 3
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @decode_coeff(i32* %75, i32 %78, i32 2, i32* %79, i32* %80, i32 %81)
  ret void
}

declare dso_local i32 @decode_coeff(i32*, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
