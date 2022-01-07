; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_unpack_dictionary.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_avpacket.c_av_packet_unpack_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_packet_unpack_dictionary(i64* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32**, i32*** %7, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %75

22:                                               ; preds = %17
  %23 = load i64*, i64** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  store i64* %26, i64** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 -1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %4, align 4
  br label %75

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %66, %36
  %38 = load i64*, i64** %5, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = icmp ult i64* %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load i64*, i64** %5, align 8
  store i64* %42, i64** %10, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = call i32 @strlen(i64* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64* %48, i64** %11, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = icmp uge i64* %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %75

58:                                               ; preds = %52
  %59 = load i32**, i32*** %7, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = call i32 @av_dict_set(i32** %59, i64* %60, i64* %61, i32 0)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %73

66:                                               ; preds = %58
  %67 = load i64*, i64** %11, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 @strlen(i64* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  store i64* %72, i64** %5, align 8
  br label %37

73:                                               ; preds = %65, %37
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %56, %34, %20
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @av_dict_set(i32**, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
