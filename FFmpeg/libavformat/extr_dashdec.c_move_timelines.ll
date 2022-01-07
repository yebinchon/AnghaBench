; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_move_timelines.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_move_timelines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i32, i64, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.representation*, %struct.representation*, i32*)* @move_timelines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_timelines(%struct.representation* %0, %struct.representation* %1, i32* %2) #0 {
  %4 = alloca %struct.representation*, align 8
  %5 = alloca %struct.representation*, align 8
  %6 = alloca i32*, align 8
  store %struct.representation* %0, %struct.representation** %4, align 8
  store %struct.representation* %1, %struct.representation** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.representation*, %struct.representation** %5, align 8
  %8 = icmp ne %struct.representation* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = load %struct.representation*, %struct.representation** %4, align 8
  %11 = icmp ne %struct.representation* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load %struct.representation*, %struct.representation** %5, align 8
  %14 = call i32 @free_timelines_list(%struct.representation* %13)
  %15 = load %struct.representation*, %struct.representation** %4, align 8
  %16 = getelementptr inbounds %struct.representation, %struct.representation* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.representation*, %struct.representation** %5, align 8
  %19 = getelementptr inbounds %struct.representation, %struct.representation* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.representation*, %struct.representation** %4, align 8
  %21 = getelementptr inbounds %struct.representation, %struct.representation* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.representation*, %struct.representation** %5, align 8
  %24 = getelementptr inbounds %struct.representation, %struct.representation* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.representation*, %struct.representation** %4, align 8
  %26 = getelementptr inbounds %struct.representation, %struct.representation* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.representation*, %struct.representation** %5, align 8
  %29 = getelementptr inbounds %struct.representation, %struct.representation* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.representation*, %struct.representation** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @calc_max_seg_no(%struct.representation* %30, i32* %31)
  %33 = load %struct.representation*, %struct.representation** %5, align 8
  %34 = getelementptr inbounds %struct.representation, %struct.representation* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.representation*, %struct.representation** %4, align 8
  %36 = getelementptr inbounds %struct.representation, %struct.representation* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.representation*, %struct.representation** %4, align 8
  %38 = getelementptr inbounds %struct.representation, %struct.representation* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.representation*, %struct.representation** %4, align 8
  %40 = getelementptr inbounds %struct.representation, %struct.representation* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.representation*, %struct.representation** %5, align 8
  %43 = getelementptr inbounds %struct.representation, %struct.representation* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %12, %9, %3
  ret void
}

declare dso_local i32 @free_timelines_list(%struct.representation*) #1

declare dso_local i32 @calc_max_seg_no(%struct.representation*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
