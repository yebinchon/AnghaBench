; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_color_inc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_palettegen.c_color_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_node = type { i32, %struct.color_ref* }
%struct.color_ref = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_node*, i64)* @color_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_inc(%struct.hist_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hist_node*, align 8
  %9 = alloca %struct.color_ref*, align 8
  store %struct.hist_node* %0, %struct.hist_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @color_hash(i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.hist_node*, %struct.hist_node** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %12, i64 %14
  store %struct.hist_node* %15, %struct.hist_node** %8, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.hist_node*, %struct.hist_node** %8, align 8
  %19 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.hist_node*, %struct.hist_node** %8, align 8
  %24 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %23, i32 0, i32 1
  %25 = load %struct.color_ref*, %struct.color_ref** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %25, i64 %27
  store %struct.color_ref* %28, %struct.color_ref** %9, align 8
  %29 = load %struct.color_ref*, %struct.color_ref** %9, align 8
  %30 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.color_ref*, %struct.color_ref** %9, align 8
  %36 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %61

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.hist_node*, %struct.hist_node** %8, align 8
  %45 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %44, i32 0, i32 1
  %46 = bitcast %struct.color_ref** %45 to i8**
  %47 = load %struct.hist_node*, %struct.hist_node** %8, align 8
  %48 = getelementptr inbounds %struct.hist_node, %struct.hist_node* %47, i32 0, i32 0
  %49 = call %struct.color_ref* @av_dynarray2_add(i8** %46, i32* %48, i32 16, i32* null)
  store %struct.color_ref* %49, %struct.color_ref** %9, align 8
  %50 = load %struct.color_ref*, %struct.color_ref** %9, align 8
  %51 = icmp ne %struct.color_ref* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %43
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.color_ref*, %struct.color_ref** %9, align 8
  %58 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.color_ref*, %struct.color_ref** %9, align 8
  %60 = getelementptr inbounds %struct.color_ref, %struct.color_ref* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %52, %34
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @color_hash(i64) #1

declare dso_local %struct.color_ref* @av_dynarray2_add(i8**, i32*, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
