; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_wide.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i64)* @mov_read_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_wide(i32* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_4__* %6 to { i32, i64 }*
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 0
  store i32 %2, i32* %11, align 8
  %12 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 1
  store i64 %3, i64* %12, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %53

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @avio_rb32(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 4
  %26 = call i32 @avio_skip(i32* %22, i32 %25)
  store i32 0, i32* %5, align 4
  br label %53

27:                                               ; preds = %17
  %28 = load i32*, i32** %8, align 8
  %29 = call i64 @avio_rl32(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 8
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @MKTAG(i8 signext 109, i8 signext 100, i8 signext 97, i8 signext 116)
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @avio_skip(i32* %39, i32 %41)
  store i32 0, i32* %5, align 4
  br label %53

43:                                               ; preds = %27
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = bitcast %struct.TYPE_4__* %6 to { i32, i64 }*
  %47 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %46, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mov_read_mdat(i32* %44, i32* %45, i32 %48, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43, %38, %21, %16
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_read_mdat(i32*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
