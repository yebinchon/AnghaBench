; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_xvmc.c_ff_xvmc_init_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_xvmc.c_ff_xvmc_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }
%struct.xvmc_pix_fmt = type { i64, i32, i64 }

@AV_XVMC_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_xvmc_init_block(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.xvmc_pix_fmt*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.xvmc_pix_fmt*
  store %struct.xvmc_pix_fmt* %12, %struct.xvmc_pix_fmt** %3, align 8
  %13 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %3, align 8
  %14 = icmp ne %struct.xvmc_pix_fmt* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %3, align 8
  %17 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AV_XVMC_ID, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi i1 [ false, %1 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %3, align 8
  %26 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xvmc_pix_fmt*, %struct.xvmc_pix_fmt** %3, align 8
  %29 = getelementptr inbounds %struct.xvmc_pix_fmt, %struct.xvmc_pix_fmt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 64
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %27, %32
  %34 = inttoptr i64 %33 to [64 x i32]*
  %35 = bitcast [64 x i32]* %34 to i32**
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32** %35, i32*** %37, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
