; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_ff_av1_filter_obus.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_ff_av1_filter_obus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_av1_filter_obus(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %48, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @parse_obu_header(i32* %24, i32 %31, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %23
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %40 [
    i32 129, label %39
    i32 130, label %39
    i32 128, label %39
    i32 131, label %39
  ]

39:                                               ; preds = %37, %37, %37, %37
  br label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @avio_write(i32* %41, i32* %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %40, %39
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %6, align 8
  br label %19

53:                                               ; preds = %19
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @parse_obu_header(i32*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
