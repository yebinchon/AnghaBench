; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_ff_hevc_annexb2mp4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_ff_hevc_annexb2mp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_annexb2mp4(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ff_avc_parse_nal_units(i32* %21, i32* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  br label %86

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @ff_avc_parse_nal_units_buf(i32* %26, i32** %15, i32* %8)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %86

31:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  %32 = load i32*, i32** %15, align 8
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %14, align 8
  br label %37

37:                                               ; preds = %80, %31
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp sgt i64 %43, 4
  br i1 %44, label %45, label %85

45:                                               ; preds = %37
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @AV_RB32(i32* %46)
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = sub nsw i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @FFMIN(i32 %47, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 1
  %61 = and i32 %60, 63
  store i32 %61, i32* %17, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* %17, align 4
  switch i32 %64, label %68 [
    i32 128, label %65
    i32 129, label %65
    i32 130, label %65
  ]

65:                                               ; preds = %45, %45, %45
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %80

68:                                               ; preds = %45
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 4, %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @avio_wb32(i32* %73, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @avio_write(i32* %76, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %65
  %81 = load i32, i32* %16, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %13, align 8
  br label %37

85:                                               ; preds = %37
  br label %86

86:                                               ; preds = %85, %30, %20
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 @av_free(i32* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @ff_avc_parse_nal_units(i32*, i32*, i32) #1

declare dso_local i32 @ff_avc_parse_nal_units_buf(i32*, i32**, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
