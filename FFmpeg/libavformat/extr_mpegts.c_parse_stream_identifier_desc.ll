; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_parse_stream_identifier_desc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_parse_stream_identifier_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @parse_stream_identifier_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_stream_identifier_desc(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %4, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @get16(i32** %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, 4095
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ugt i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %64

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %61
  %31 = load i32**, i32*** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @get8(i32** %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %64

37:                                               ; preds = %30
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @get8(i32** %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %64

44:                                               ; preds = %37
  %45 = load i32**, i32*** %6, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ugt i32* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %64

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 82
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @get8(i32** %58, i32* %59)
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = load i32**, i32*** %6, align 8
  store i32* %62, i32** %63, align 8
  br label %30

64:                                               ; preds = %57, %53, %43, %36, %28, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @get16(i32**, i32*) #1

declare dso_local i32 @get8(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
