; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_add_nal_unit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_add_nal_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @hvcc_add_nal_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvcc_add_nal_unit(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @ff_nal_unit_extract_rbsp(i32* %14, i32 %15, i32* %13, i32 2)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %9, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @init_get_bits8(i32* %10, i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %71

29:                                               ; preds = %22
  %30 = call i32 @nal_unit_parse_header(i32* %10, i32* %11)
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %68 [
    i32 128, label %32
    i32 129, label %32
    i32 132, label %32
    i32 131, label %32
    i32 130, label %32
  ]

32:                                               ; preds = %29, %29, %29, %29, %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @hvcc_array_add_nal_unit(i32* %33, i32 %34, i32 %35, i32 %36, i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %71

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @hvcc_parse_vps(i32* %10, i32* %46)
  store i32 %47, i32* %9, align 4
  br label %62

48:                                               ; preds = %42
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @hvcc_parse_sps(i32* %10, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @hvcc_parse_pps(i32* %10, i32* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %71

67:                                               ; preds = %63
  br label %70

68:                                               ; preds = %29
  %69 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %69, i32* %9, align 4
  br label %71

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %68, %66, %41, %28, %19
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @av_free(i32* %72)
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32* @ff_nal_unit_extract_rbsp(i32*, i32, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @nal_unit_parse_header(i32*, i32*) #1

declare dso_local i32 @hvcc_array_add_nal_unit(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @hvcc_parse_vps(i32*, i32*) #1

declare dso_local i32 @hvcc_parse_sps(i32*, i32*) #1

declare dso_local i32 @hvcc_parse_pps(i32*, i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
