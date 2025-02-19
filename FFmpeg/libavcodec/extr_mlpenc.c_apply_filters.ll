; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_apply_filters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_apply_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@FIR = common dso_local global i32 0, align 4
@IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @apply_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_filters(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sle i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @apply_filter(%struct.TYPE_7__* %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FIR, align 4
  %26 = call i32 @set_filter_params(%struct.TYPE_7__* %23, i32 %24, i32 %25, i32 1)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IIR, align 4
  %30 = call i32 @set_filter_params(%struct.TYPE_7__* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @apply_filter(%struct.TYPE_7__* %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i64 @apply_filter(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_filter_params(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
