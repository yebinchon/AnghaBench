; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_move_segments.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_move_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i64, i64, i64, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.representation*, %struct.representation*, i32*)* @move_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_segments(%struct.representation* %0, %struct.representation* %1, i32* %2) #0 {
  %4 = alloca %struct.representation*, align 8
  %5 = alloca %struct.representation*, align 8
  %6 = alloca i32*, align 8
  store %struct.representation* %0, %struct.representation** %4, align 8
  store %struct.representation* %1, %struct.representation** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.representation*, %struct.representation** %5, align 8
  %8 = icmp ne %struct.representation* %7, null
  br i1 %8, label %9, label %66

9:                                                ; preds = %3
  %10 = load %struct.representation*, %struct.representation** %4, align 8
  %11 = icmp ne %struct.representation* %10, null
  br i1 %11, label %12, label %66

12:                                               ; preds = %9
  %13 = load %struct.representation*, %struct.representation** %5, align 8
  %14 = call i32 @free_fragment_list(%struct.representation* %13)
  %15 = load %struct.representation*, %struct.representation** %4, align 8
  %16 = getelementptr inbounds %struct.representation, %struct.representation* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.representation*, %struct.representation** %5, align 8
  %19 = getelementptr inbounds %struct.representation, %struct.representation* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.representation*, %struct.representation** %5, align 8
  %22 = getelementptr inbounds %struct.representation, %struct.representation* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = icmp sgt i64 %17, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  %27 = load %struct.representation*, %struct.representation** %5, align 8
  %28 = getelementptr inbounds %struct.representation, %struct.representation* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %41

29:                                               ; preds = %12
  %30 = load %struct.representation*, %struct.representation** %4, align 8
  %31 = getelementptr inbounds %struct.representation, %struct.representation* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.representation*, %struct.representation** %5, align 8
  %34 = getelementptr inbounds %struct.representation, %struct.representation* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.representation*, %struct.representation** %5, align 8
  %38 = getelementptr inbounds %struct.representation, %struct.representation* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %29, %26
  %42 = load %struct.representation*, %struct.representation** %4, align 8
  %43 = getelementptr inbounds %struct.representation, %struct.representation* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.representation*, %struct.representation** %5, align 8
  %46 = getelementptr inbounds %struct.representation, %struct.representation* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.representation*, %struct.representation** %4, align 8
  %48 = getelementptr inbounds %struct.representation, %struct.representation* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.representation*, %struct.representation** %5, align 8
  %51 = getelementptr inbounds %struct.representation, %struct.representation* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.representation*, %struct.representation** %4, align 8
  %53 = getelementptr inbounds %struct.representation, %struct.representation* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.representation*, %struct.representation** %5, align 8
  %56 = getelementptr inbounds %struct.representation, %struct.representation* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.representation*, %struct.representation** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @calc_max_seg_no(%struct.representation* %57, i32* %58)
  %60 = load %struct.representation*, %struct.representation** %5, align 8
  %61 = getelementptr inbounds %struct.representation, %struct.representation* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.representation*, %struct.representation** %4, align 8
  %63 = getelementptr inbounds %struct.representation, %struct.representation* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.representation*, %struct.representation** %4, align 8
  %65 = getelementptr inbounds %struct.representation, %struct.representation* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %41, %9, %3
  ret void
}

declare dso_local i32 @free_fragment_list(%struct.representation*) #1

declare dso_local i32 @calc_max_seg_no(%struct.representation*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
