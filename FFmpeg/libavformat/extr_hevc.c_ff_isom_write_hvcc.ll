; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_ff_isom_write_hvcc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_ff_isom_write_hvcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_isom_write_hvcc(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %12, align 8
  %16 = call i32 @hvcc_init(i32* %13)
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %9, align 4
  br label %100

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @avio_write(i32* %26, i32* %27, i32 %28)
  br label %100

30:                                               ; preds = %21
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @AV_RB24(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @AV_RB32(i32* %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %9, align 4
  br label %100

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ff_avc_parse_nal_units_buf(i32* %43, i32** %12, i32* %7)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %100

48:                                               ; preds = %42
  %49 = load i32*, i32** %12, align 8
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32* %53, i32** %11, align 8
  br label %54

54:                                               ; preds = %92, %48
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = icmp sgt i64 %60, 4
  br i1 %61, label %62, label %97

62:                                               ; preds = %54
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @AV_RB32(i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = sub nsw i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @FFMIN(i32 %64, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 1
  %78 = and i32 %77, 63
  store i32 %78, i32* %15, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %10, align 8
  %81 = load i32, i32* %15, align 4
  switch i32 %81, label %91 [
    i32 128, label %82
    i32 129, label %82
    i32 132, label %82
    i32 131, label %82
    i32 130, label %82
  ]

82:                                               ; preds = %62, %62, %62, %62, %62
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @hvcc_add_nal_unit(i32* %83, i32 %84, i32 %85, i32* %13)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %100

90:                                               ; preds = %82
  br label %92

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %10, align 8
  br label %54

97:                                               ; preds = %54
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @hvcc_write(i32* %98, i32* %13)
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %97, %89, %47, %38, %25, %19
  %101 = call i32 @hvcc_close(i32* %13)
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @av_free(i32* %102)
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @hvcc_init(i32*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @ff_avc_parse_nal_units_buf(i32*, i32**, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @hvcc_add_nal_unit(i32*, i32, i32, i32*) #1

declare dso_local i32 @hvcc_write(i32*, i32*) #1

declare dso_local i32 @hvcc_close(i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
