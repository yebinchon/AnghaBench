; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_interleaved_se_golomb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_golomb.h_get_interleaved_se_golomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@re = common dso_local global i32 0, align 4
@ff_interleaved_golomb_vlc_len = common dso_local global i32* null, align 8
@ff_interleaved_se_golomb_vlc_code = common dso_local global i32* null, align 8
@INVALID_VLC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_interleaved_se_golomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_interleaved_se_golomb(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @re, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @OPEN_READER(i32 %6, i32* %7)
  %9 = load i32, i32* @re, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @UPDATE_CACHE(i32 %9, i32* %10)
  %12 = load i32, i32* @re, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @GET_CACHE(i32 %12, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -1434451968
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 24
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @re, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @ff_interleaved_golomb_vlc_len, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LAST_SKIP_BITS(i32 %21, i32* %22, i32 %27)
  %29 = load i32, i32* @re, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @CLOSE_READER(i32 %29, i32* %30)
  %32 = load i32*, i32** @ff_interleaved_se_golomb_vlc_code, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %100

37:                                               ; preds = %1
  %38 = load i32, i32* @re, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @LAST_SKIP_BITS(i32 %38, i32* %39, i32 8)
  %41 = load i32, i32* @re, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @UPDATE_CACHE(i32 %41, i32* %42)
  %44 = load i32, i32* @re, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @GET_CACHE(i32 %44, i32* %45)
  %47 = ashr i32 %46, 8
  %48 = or i32 1, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, -1431655766
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i32, i32* @INVALID_VLC, align 4
  store i32 %55, i32* %2, align 4
  br label %100

56:                                               ; preds = %37
  store i32 31, i32* %5, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, -2147483648
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = shl i32 %62, 2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, 1
  %69 = lshr i32 %66, %68
  %70 = sub i32 %63, %69
  %71 = load i32, i32* %4, align 4
  %72 = lshr i32 %71, 30
  %73 = add i32 %70, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* @re, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 2, %80
  %82 = sub nsw i32 63, %81
  %83 = sub nsw i32 %82, 8
  %84 = call i32 @LAST_SKIP_BITS(i32 %78, i32* %79, i32 %83)
  %85 = load i32, i32* @re, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @CLOSE_READER(i32 %85, i32* %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = lshr i32 %90, %91
  %93 = sub i32 %92, 1
  %94 = load i32, i32* %4, align 4
  %95 = and i32 %94, 1
  %96 = sub i32 0, %95
  %97 = xor i32 %93, %96
  %98 = add i32 %97, 1
  %99 = ashr i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %77, %54, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
