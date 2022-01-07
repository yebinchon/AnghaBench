; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_pps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @hvcc_parse_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvcc_parse_pps(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @get_ue_golomb_long(i32* %7)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_ue_golomb_long(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @skip_bits(i32* %11, i32 7)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @get_ue_golomb_long(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @get_ue_golomb_long(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @get_se_golomb_long(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @skip_bits(i32* %19, i32 2)
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @get_bits1(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @get_ue_golomb_long(i32* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @get_se_golomb_long(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @get_se_golomb_long(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @skip_bits(i32* %32, i32 4)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @get_bits1(i32* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i64 @get_bits1(i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %63

46:                                               ; preds = %40, %27
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 3, i32* %51, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 2, i32* %57, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %43
  ret i32 0
}

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_se_golomb_long(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
