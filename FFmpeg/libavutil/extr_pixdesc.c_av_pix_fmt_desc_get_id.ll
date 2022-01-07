; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_pix_fmt_desc_get_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_pixdesc.c_av_pix_fmt_desc_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@av_pix_fmt_descriptors = common dso_local global i32* null, align 8
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_pix_fmt_desc_get_id(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32*, i32** @av_pix_fmt_descriptors, align 8
  %6 = icmp ult i32* %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** @av_pix_fmt_descriptors, align 8
  %10 = load i32*, i32** @av_pix_fmt_descriptors, align 8
  %11 = call i32 @FF_ARRAY_ELEMS(i32* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = icmp uge i32* %8, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %7, %1
  %16 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %7
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** @av_pix_fmt_descriptors, align 8
  %20 = ptrtoint i32* %18 to i64
  %21 = ptrtoint i32* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
