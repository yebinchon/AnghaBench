; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vapoursynth.c_free_vsframe_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vapoursynth.c_free_vsframe_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsframe_ref_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @free_vsframe_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_vsframe_ref(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vsframe_ref_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vsframe_ref_data*
  store %struct.vsframe_ref_data* %7, %struct.vsframe_ref_data** %5, align 8
  %8 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %5, align 8
  %9 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %5, align 8
  %14 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i64)*, i32 (i64)** %16, align 8
  %18 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %5, align 8
  %19 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 %17(i64 %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %5, align 8
  %24 = getelementptr inbounds %struct.vsframe_ref_data, %struct.vsframe_ref_data* %23, i32 0, i32 0
  %25 = call i32 @av_buffer_unref(i32* %24)
  %26 = load %struct.vsframe_ref_data*, %struct.vsframe_ref_data** %5, align 8
  %27 = call i32 @av_free(%struct.vsframe_ref_data* %26)
  ret void
}

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_free(%struct.vsframe_ref_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
