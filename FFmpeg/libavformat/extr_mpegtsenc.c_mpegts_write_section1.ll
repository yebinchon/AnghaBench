; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_write_section1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_write_section1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDT_TID = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32*, i32)* @mpegts_write_section1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpegts_write_section1(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [1024 x i32], align 16
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @SDT_TID, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 61440, i32 45056
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %17, align 4
  %28 = add nsw i32 8, %27
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = icmp ugt i32 %30, 1024
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %9, align 4
  br label %66

34:                                               ; preds = %8
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32]* %18, i64 0, i64 0
  store i32* %35, i32** %19, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %19, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %19, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %17, align 4
  %41 = add nsw i32 %40, 5
  %42 = add nsw i32 %41, 4
  %43 = or i32 %39, %42
  %44 = call i32 @put16(i32** %19, i32 %43)
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @put16(i32** %19, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = shl i32 %47, 1
  %49 = or i32 193, %48
  %50 = load i32*, i32** %19, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %19, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %19, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %19, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %19, align 8
  store i32 %55, i32* %56, align 4
  %58 = load i32*, i32** %19, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds [1024 x i32], [1024 x i32]* %18, i64 0, i64 0
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @mpegts_write_section(i32* %62, i32* %63, i32 %64)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %34, %32
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @put16(i32**, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mpegts_write_section(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
