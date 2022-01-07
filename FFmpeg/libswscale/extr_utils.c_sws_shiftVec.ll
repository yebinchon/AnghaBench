; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_shiftVec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_utils.c_sws_shiftVec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sws_shiftVec(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_7__* @sws_getShiftedVec(%struct.TYPE_7__* %6, i32 %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = call i32 @makenan_vec(%struct.TYPE_7__* %12)
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call i32 @av_free(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = call i32 @av_free(%struct.TYPE_7__* %29)
  br label %31

31:                                               ; preds = %14, %11
  ret void
}

declare dso_local %struct.TYPE_7__* @sws_getShiftedVec(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @makenan_vec(%struct.TYPE_7__*) #1

declare dso_local i32 @av_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
