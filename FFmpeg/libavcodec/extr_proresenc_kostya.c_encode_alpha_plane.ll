; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_alpha_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_encode_alpha_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*, i32)* @encode_alpha_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_alpha_plane(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %25, 256
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @put_bits_count(i32* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @put_alpha_diff(i32* %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %66, %5
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @put_alpha_run(i32* %53, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @put_alpha_diff(i32* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %65

62:                                               ; preds = %42
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %62, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %42, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @put_alpha_run(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @flush_put_bits(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @put_bits_count(i32* %80)
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  %84 = ashr i32 %83, 3
  ret i32 %84
}

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_alpha_diff(i32*, i32, i32, i32) #1

declare dso_local i32 @put_alpha_run(i32*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
