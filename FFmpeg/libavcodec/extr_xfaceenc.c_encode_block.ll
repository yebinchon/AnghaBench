; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_xface_probranges_per_level = common dso_local global i32** null, align 8
@XFACE_COLOR_WHITE = common dso_local global i64 0, align 8
@XFACE_COLOR_BLACK = common dso_local global i64 0, align 8
@XFACE_COLOR_GREY = common dso_local global i64 0, align 8
@XFACE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32*)* @encode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_block(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @all_white(i8* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  %18 = load i32**, i32*** @ff_xface_probranges_per_level, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @XFACE_COLOR_WHITE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @pq_push(i32* %17, i32* %24)
  br label %100

26:                                               ; preds = %5
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @all_black(i8* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  %34 = load i32**, i32*** @ff_xface_probranges_per_level, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @XFACE_COLOR_BLACK, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @pq_push(i32* %33, i32* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @push_greys(i32* %42, i8* %43, i32 %44, i32 %45)
  br label %99

47:                                               ; preds = %26
  %48 = load i32*, i32** %10, align 8
  %49 = load i32**, i32*** @ff_xface_probranges_per_level, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @XFACE_COLOR_GREY, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = call i32 @pq_push(i32* %48, i32* %55)
  %57 = load i32, i32* %7, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 2
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %10, align 8
  call void @encode_block(i8* %63, i32 %64, i32 %65, i32 %66, i32* %67)
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %10, align 8
  call void @encode_block(i8* %71, i32 %72, i32 %73, i32 %74, i32* %75)
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @XFACE_WIDTH, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %10, align 8
  call void @encode_block(i8* %81, i32 %82, i32 %83, i32 %84, i32* %85)
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @XFACE_WIDTH, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %10, align 8
  call void @encode_block(i8* %94, i32 %95, i32 %96, i32 %97, i32* %98)
  br label %99

99:                                               ; preds = %47, %32
  br label %100

100:                                              ; preds = %99, %16
  ret void
}

declare dso_local i64 @all_white(i8*, i32, i32) #1

declare dso_local i32 @pq_push(i32*, i32*) #1

declare dso_local i64 @all_black(i8*, i32, i32) #1

declare dso_local i32 @push_greys(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
