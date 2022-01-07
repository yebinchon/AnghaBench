; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_encrypt_counter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_encrypt_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVAES = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AVAES*, i32*, i32*, i32)* @encrypt_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encrypt_counter(%struct.AVAES* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.AVAES*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.AVAES* %0, %struct.AVAES** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %52, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 14
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @AV_WB16(i32* %19, i32 %20)
  %22 = load %struct.AVAES*, %struct.AVAES** %5, align 8
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @av_aes_crypt(%struct.AVAES* %22, i32* %23, i32* %24, i32 1, i32* null, i32 0)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %17
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %51

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %26

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %13

55:                                               ; preds = %13
  ret void
}

declare dso_local i32 @AV_WB16(i32*, i32) #1

declare dso_local i32 @av_aes_crypt(%struct.AVAES*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
