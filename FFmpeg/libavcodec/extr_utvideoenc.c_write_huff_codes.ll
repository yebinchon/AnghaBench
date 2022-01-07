; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_write_huff_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_write_huff_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32, i32, i32, %struct.TYPE_3__*)* @write_huff_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_huff_codes(i64* %0, i64* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %12, align 8
  %17 = load i64*, i64** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @init_put_bits(i32* %13, i64* %17, i32 %18)
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %57, %6
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @put_bits(i32* %13, i32 %38, i32 %47)
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %10, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %7, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %20

60:                                               ; preds = %20
  %61 = call i32 @put_bits_count(i32* %13)
  %62 = and i32 %61, 31
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 32, %66
  %68 = call i32 @put_bits(i32* %13, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %65, %60
  %70 = call i32 @put_bits_count(i32* %13)
  store i32 %70, i32* %16, align 4
  %71 = call i32 @flush_put_bits(i32* %13)
  %72 = load i32, i32* %16, align 4
  ret i32 %72
}

declare dso_local i32 @init_put_bits(i32*, i64*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
