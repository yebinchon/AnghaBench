; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_word.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_scan_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @scan_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_word(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32*, i32** %8, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %15, %5
  br label %22

22:                                               ; preds = %62, %21
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @labs(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @GET_MED(i32 0)
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @DEC_MED(i32 0)
  br label %62

36:                                               ; preds = %26
  %37 = call i64 @GET_MED(i32 0)
  store i64 %37, i64* %11, align 8
  %38 = call i32 @INC_MED(i32 0)
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %39, %40
  %42 = call i64 @GET_MED(i32 1)
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @DEC_MED(i32 1)
  br label %61

46:                                               ; preds = %36
  %47 = call i64 @GET_MED(i32 1)
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = call i32 @INC_MED(i32 1)
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i64 @GET_MED(i32 2)
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = call i32 @DEC_MED(i32 2)
  br label %60

58:                                               ; preds = %46
  %59 = call i32 @INC_MED(i32 2)
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %8, align 8
  br label %22

67:                                               ; preds = %22
  ret void
}

declare dso_local i64 @labs(i32) #1

declare dso_local i64 @GET_MED(i32) #1

declare dso_local i32 @DEC_MED(i32) #1

declare dso_local i32 @INC_MED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
