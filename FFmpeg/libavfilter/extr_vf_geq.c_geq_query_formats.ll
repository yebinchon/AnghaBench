; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_geq_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_geq.c_geq_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@geq_query_formats.yuv_pix_fmts = internal constant [41 x i32] [i32 145, i32 153, i32 159, i32 160, i32 161, i32 147, i32 131, i32 135, i32 139, i32 164, i32 140, i32 148, i32 154, i32 128, i32 132, i32 136, i32 144, i32 152, i32 158, i32 146, i32 130, i32 134, i32 138, i32 163, i32 168, i32 143, i32 151, i32 157, i32 167, i32 166, i32 142, i32 150, i32 156, i32 141, i32 149, i32 155, i32 129, i32 133, i32 137, i32 165, i32 162], align 16
@geq_query_formats.rgb_pix_fmts = internal constant [11 x i32] [i32 174, i32 178, i32 169, i32 173, i32 177, i32 172, i32 176, i32 171, i32 170, i32 175, i32 162], align 16
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @geq_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geq_query_formats(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([11 x i32], [11 x i32]* @geq_query_formats.rgb_pix_fmts, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([41 x i32], [41 x i32]* @geq_query_formats.yuv_pix_fmts, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ff_set_common_formats(%struct.TYPE_6__* %24, i32* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
