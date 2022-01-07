; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_ff_simple_idct248_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_simple_idct.c_ff_simple_idct248_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_simple_idct248_put(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  store i32* %9, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %24, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = call i32 @BF(i32 0)
  %15 = call i32 @BF(i32 1)
  %16 = call i32 @BF(i32 2)
  %17 = call i32 @BF(i32 3)
  %18 = call i32 @BF(i32 4)
  %19 = call i32 @BF(i32 5)
  %20 = call i32 @BF(i32 6)
  %21 = call i32 @BF(i32 7)
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 16
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %10

27:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @idctRowCondDC_int16_8bit(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %28

41:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @idct4col_put(i32* %49, i32 %51, i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 2, %64
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @idct4col_put(i32* %63, i32 %65, i32* %70)
  br label %72

72:                                               ; preds = %45
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %42

75:                                               ; preds = %42
  ret void
}

declare dso_local i32 @BF(i32) #1

declare dso_local i32 @idctRowCondDC_int16_8bit(i32*, i32) #1

declare dso_local i32 @idct4col_put(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
