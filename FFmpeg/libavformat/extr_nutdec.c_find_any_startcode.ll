; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_find_any_startcode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutdec.c_find_any_startcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @find_any_startcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_any_startcode(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = call i32 @avio_seek(i32* %10, i64 %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %34, %29, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @avio_feof(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 %21, 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @avio_r8(i32* %23)
  %25 = or i32 %22, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 56
  %28 = icmp ne i32 %27, 78
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %15

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %34 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %32
    i32 131, label %32
    i32 132, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %30
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
