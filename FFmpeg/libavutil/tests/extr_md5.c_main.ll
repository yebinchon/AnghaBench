; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_md5.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_md5.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca [1000 x i32], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 1000
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 %13
  store volatile i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %5

18:                                               ; preds = %5
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %20 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 0
  %21 = call i32 @av_md5_sum(i32* %19, i32* %20, i32 1000)
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %23 = call i32 @print_md5(i32* %22)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 0
  %26 = call i32 @av_md5_sum(i32* %24, i32* %25, i32 63)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %28 = call i32 @print_md5(i32* %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %30 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 0
  %31 = call i32 @av_md5_sum(i32* %29, i32* %30, i32 64)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %33 = call i32 @print_md5(i32* %32)
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %35 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 0
  %36 = call i32 @av_md5_sum(i32* %34, i32* %35, i32 65)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %38 = call i32 @print_md5(i32* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %48, %18
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = srem i32 %43, 127
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 %46
  store volatile i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %39

51:                                               ; preds = %39
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %53 = getelementptr inbounds [1000 x i32], [1000 x i32]* %4, i64 0, i64 0
  %54 = call i32 @av_md5_sum(i32* %52, i32* %53, i32 999)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %56 = call i32 @print_md5(i32* %55)
  ret i32 0
}

declare dso_local i32 @av_md5_sum(i32*, i32*, i32) #1

declare dso_local i32 @print_md5(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
