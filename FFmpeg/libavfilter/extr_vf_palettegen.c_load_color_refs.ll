; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_load_color_refs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_load_color_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_ref = type { i32 }
%struct.hist_node = type { i32, %struct.color_ref* }

@HIST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.color_ref** (%struct.hist_node*, i32)* @load_color_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.color_ref** @load_color_refs(%struct.hist_node* %0, i32 %1) #0 {
  %3 = alloca %struct.color_ref**, align 8
  %4 = alloca %struct.hist_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.color_ref**, align 8
  %10 = alloca %struct.hist_node*, align 8
  store %struct.hist_node* %0, %struct.hist_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.color_ref** @av_malloc_array(i32 %11, i32 8)
  store %struct.color_ref** %12, %struct.color_ref*** %9, align 8
  %13 = load %struct.color_ref**, %struct.color_ref*** %9, align 8
  %14 = icmp ne %struct.color_ref** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.color_ref** null, %struct.color_ref*** %3, align 8
  br label %53

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HIST_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.hist_node*, %struct.hist_node** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %22, i64 %24
  store %struct.hist_node* %25, %struct.hist_node** %10, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %44, %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hist_node*, %struct.hist_node** %10, align 8
  %29 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.hist_node*, %struct.hist_node** %10, align 8
  %34 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %33, i32 0, i32 1
  %35 = load %struct.color_ref*, %struct.color_ref** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %35, i64 %37
  %39 = load %struct.color_ref**, %struct.color_ref*** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds %struct.color_ref*, %struct.color_ref** %39, i64 %42
  store %struct.color_ref* %38, %struct.color_ref** %43, align 8
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %26

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load %struct.color_ref**, %struct.color_ref*** %9, align 8
  store %struct.color_ref** %52, %struct.color_ref*** %3, align 8
  br label %53

53:                                               ; preds = %51, %15
  %54 = load %struct.color_ref**, %struct.color_ref*** %3, align 8
  ret %struct.color_ref** %54
}

declare dso_local %struct.color_ref** @av_malloc_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
