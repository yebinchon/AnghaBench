; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_filter_get.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_filter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hb_filter_detelecine = common dso_local global i32 0, align 4
@hb_filter_comb_detect = common dso_local global i32 0, align 4
@hb_filter_decomb = common dso_local global i32 0, align 4
@hb_filter_deinterlace = common dso_local global i32 0, align 4
@hb_filter_colorspace = common dso_local global i32 0, align 4
@hb_filter_vfr = common dso_local global i32 0, align 4
@hb_filter_deblock = common dso_local global i32 0, align 4
@hb_filter_denoise = common dso_local global i32 0, align 4
@hb_filter_nlmeans = common dso_local global i32 0, align 4
@hb_filter_chroma_smooth = common dso_local global i32 0, align 4
@hb_filter_render_sub = common dso_local global i32 0, align 4
@hb_filter_crop_scale = common dso_local global i32 0, align 4
@hb_filter_lapsharp = common dso_local global i32 0, align 4
@hb_filter_unsharp = common dso_local global i32 0, align 4
@hb_filter_avfilter = common dso_local global i32 0, align 4
@hb_filter_pad = common dso_local global i32 0, align 4
@hb_filter_rotate = common dso_local global i32 0, align 4
@hb_filter_grayscale = common dso_local global i32 0, align 4
@hb_filter_mt_frame = common dso_local global i32 0, align 4
@hb_filter_qsv = common dso_local global i32 0, align 4
@hb_filter_qsv_post = common dso_local global i32 0, align 4
@hb_filter_qsv_pre = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_filter_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %24 [
    i32 140, label %5
    i32 146, label %6
    i32 143, label %7
    i32 142, label %8
    i32 147, label %9
    i32 128, label %10
    i32 144, label %11
    i32 141, label %12
    i32 136, label %13
    i32 148, label %14
    i32 131, label %15
    i32 145, label %16
    i32 138, label %17
    i32 129, label %18
    i32 149, label %19
    i32 135, label %20
    i32 130, label %21
    i32 139, label %22
    i32 137, label %23
  ]

5:                                                ; preds = %1
  store i32* @hb_filter_detelecine, i32** %3, align 8
  br label %25

6:                                                ; preds = %1
  store i32* @hb_filter_comb_detect, i32** %3, align 8
  br label %25

7:                                                ; preds = %1
  store i32* @hb_filter_decomb, i32** %3, align 8
  br label %25

8:                                                ; preds = %1
  store i32* @hb_filter_deinterlace, i32** %3, align 8
  br label %25

9:                                                ; preds = %1
  store i32* @hb_filter_colorspace, i32** %3, align 8
  br label %25

10:                                               ; preds = %1
  store i32* @hb_filter_vfr, i32** %3, align 8
  br label %25

11:                                               ; preds = %1
  store i32* @hb_filter_deblock, i32** %3, align 8
  br label %25

12:                                               ; preds = %1
  store i32* @hb_filter_denoise, i32** %3, align 8
  br label %25

13:                                               ; preds = %1
  store i32* @hb_filter_nlmeans, i32** %3, align 8
  br label %25

14:                                               ; preds = %1
  store i32* @hb_filter_chroma_smooth, i32** %3, align 8
  br label %25

15:                                               ; preds = %1
  store i32* @hb_filter_render_sub, i32** %3, align 8
  br label %25

16:                                               ; preds = %1
  store i32* @hb_filter_crop_scale, i32** %3, align 8
  br label %25

17:                                               ; preds = %1
  store i32* @hb_filter_lapsharp, i32** %3, align 8
  br label %25

18:                                               ; preds = %1
  store i32* @hb_filter_unsharp, i32** %3, align 8
  br label %25

19:                                               ; preds = %1
  store i32* @hb_filter_avfilter, i32** %3, align 8
  br label %25

20:                                               ; preds = %1
  store i32* @hb_filter_pad, i32** %3, align 8
  br label %25

21:                                               ; preds = %1
  store i32* @hb_filter_rotate, i32** %3, align 8
  br label %25

22:                                               ; preds = %1
  store i32* @hb_filter_grayscale, i32** %3, align 8
  br label %25

23:                                               ; preds = %1
  store i32* @hb_filter_mt_frame, i32** %3, align 8
  br label %25

24:                                               ; preds = %1
  store i32* null, i32** %3, align 8
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
