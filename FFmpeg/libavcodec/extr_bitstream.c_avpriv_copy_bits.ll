; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream.c_avpriv_copy_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream.c_avpriv_copy_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_SMALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avpriv_copy_bits(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %102

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @put_bits_left(i32* %19)
  %21 = icmp sle i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @av_assert0(i32 %22)
  %24 = load i64, i64* @CONFIG_SMALL, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @put_bits_count(i32* %30)
  %32 = and i32 %31, 7
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29, %26, %17
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = call i32 @AV_RB16(i32* %45)
  %47 = call i32 @put_bits(i32* %40, i32 16, i32 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %35

51:                                               ; preds = %35
  br label %89

52:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @put_bits_count(i32* %54)
  %56 = and i32 %55, 31
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @put_bits(i32* %59, i32 8, i32 %64)
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @flush_put_bits(i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @put_bits_ptr(i32* %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 2, %78
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @memcpy(i32 %73, i32* %77, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 2, %84
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 @skip_put_bytes(i32* %83, i32 %87)
  br label %89

89:                                               ; preds = %69, %51
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 2, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = call i32 @AV_RB16(i32* %96)
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 16, %98
  %100 = ashr i32 %97, %99
  %101 = call i32 @put_bits(i32* %90, i32 %91, i32 %100)
  br label %102

102:                                              ; preds = %89, %16
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits_left(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @put_bits_ptr(i32*) #1

declare dso_local i32 @skip_put_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
