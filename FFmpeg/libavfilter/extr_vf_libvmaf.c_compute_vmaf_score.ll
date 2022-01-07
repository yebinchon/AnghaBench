; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libvmaf.c_compute_vmaf_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_libvmaf.c_compute_vmaf_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @compute_vmaf_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_vmaf_score(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32 (float*, float*, float*, i32, i8*)*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 16
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 (float*, float*, float*, i32, i8*)* @read_frame_8bit, i32 (float*, float*, float*, i32, i8*)** %3, align 8
  br label %16

15:                                               ; preds = %1
  store i32 (float*, float*, float*, i32, i8*)* @read_frame_10bit, i32 (float*, float*, float*, i32, i8*)** %3, align 8
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 16
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 14
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 8
  %32 = load i32 (float*, float*, float*, i32, i8*)*, i32 (float*, float*, float*, i32, i8*)** %3, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @compute_vmaf(i32* %24, i8* %25, i32 %28, i32 %31, i32 (float*, float*, float*, i32, i8*)* %32, %struct.TYPE_8__* %33, i32 %36, i32 %39, i32 %42, i32 0, i32 0, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 15
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local i32 @read_frame_8bit(float*, float*, float*, i32, i8*) #1

declare dso_local i32 @read_frame_10bit(float*, float*, float*, i32, i8*) #1

declare dso_local i32 @compute_vmaf(i32*, i8*, i32, i32, i32 (float*, float*, float*, i32, i8*)*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
