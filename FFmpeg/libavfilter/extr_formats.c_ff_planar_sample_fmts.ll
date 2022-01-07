; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_planar_sample_fmts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_planar_sample_fmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_planar_sample_fmts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @av_get_bytes_per_sample(i32 %5)
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @av_sample_fmt_is_planar(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ff_add_format(i32** %2, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32* null, i32** %1, align 8
  br label %24

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load i32*, i32** %2, align 8
  store i32* %23, i32** %1, align 8
  br label %24

24:                                               ; preds = %22, %16
  %25 = load i32*, i32** %1, align 8
  ret i32* %25
}

declare dso_local i64 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i64 @ff_add_format(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
