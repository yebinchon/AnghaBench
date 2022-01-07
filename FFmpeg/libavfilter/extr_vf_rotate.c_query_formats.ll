; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_rotate.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_formats.pix_fmts = internal constant [35 x i32] [i32 154, i32 155, i32 159, i32 149, i32 160, i32 156, i32 161, i32 151, i32 162, i32 158, i32 150, i32 157, i32 153, i32 148, i32 142, i32 128, i32 147, i32 129, i32 133, i32 137, i32 146, i32 136, i32 141, i32 132, i32 145, i32 140, i32 139, i32 131, i32 144, i32 135, i32 138, i32 130, i32 143, i32 134, i32 152], align 16
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([35 x i32], [35 x i32]* @query_formats.pix_fmts, i64 0, i64 0))
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = call i32 @AVERROR(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %15

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ff_set_common_formats(i32* %12, i32* %13)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %11, %8
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
