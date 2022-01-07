; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_crc.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_crc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.p = internal constant [7 x [3 x i32]] [[3 x i32] [i32 130, i32 -306674912, i32 1029496068], [3 x i32] [i32 131, i32 79764919, i32 -1057637664], [3 x i32] [i32 132, i32 8801531, i32 11994318], [3 x i32] [i32 133, i32 40961, i32 49112], [3 x i32] [i32 134, i32 32773, i32 8123], [3 x i32] [i32 129, i32 7, i32 227], [3 x i32] [i32 128, i32 29, i32 214]], align 16
@.str = private unnamed_addr constant [15 x i8] c"crc %08X = %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1999 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 7996
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %11, %12
  %14 = add nsw i32 %10, %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1999 x i32], [1999 x i32]* %2, i64 0, i64 %16
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 7
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* @main.p, i64 0, i64 %27
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @av_crc_get_table(i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [7 x [3 x i32]], [7 x [3 x i32]]* @main.p, i64 0, i64 %33
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [1999 x i32], [1999 x i32]* %2, i64 0, i64 0
  %39 = call i32 @av_crc(i32* %37, i32 0, i32* %38, i32 7996)
  %40 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %22

44:                                               ; preds = %22
  ret i32 0
}

declare dso_local i32* @av_crc_get_table(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @av_crc(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
