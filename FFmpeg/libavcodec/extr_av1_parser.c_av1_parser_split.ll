; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_parser.c_av1_parser_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_parser.c_av1_parser_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@AV1_OBU_FRAME_HEADER = common dso_local global i64 0, align 8
@AV1_OBU_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @av1_parser_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_parser_split(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %10, align 8
  br label %17

17:                                               ; preds = %47, %3
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ff_av1_extract_obu(%struct.TYPE_3__* %8, i32* %22, i32 %23, i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %55

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AV1_OBU_FRAME_HEADER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV1_OBU_FRAME, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %34
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %17

55:                                               ; preds = %28, %17
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ff_av1_extract_obu(%struct.TYPE_3__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
