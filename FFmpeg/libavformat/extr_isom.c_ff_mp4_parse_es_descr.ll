; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_isom.c_ff_mp4_parse_es_descr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_isom.c_ff_mp4_parse_es_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mp4_parse_es_descr(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @avio_rb16(i32* %10)
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @avio_rb16(i32* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @avio_r8(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @avio_rb16(i32* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @avio_r8(i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @avio_skip(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @avio_rb16(i32* %40)
  br label %42

42:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
