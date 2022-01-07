; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_calculate_skip_errors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_calculate_skip_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@MB_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32**, i32*, i32**, i32*, i32*)* @calculate_skip_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_skip_errors(%struct.TYPE_7__* %0, i32 %1, i32** %2, i32* %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x i32*], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %72, %7
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %63, %26
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32**, i32*** %10, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %41 = call i32 @get_sub_picture(%struct.TYPE_7__* %34, i32 %35, i32 %36, i32** %37, i32* %38, i32** %39, i32* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32**, i32*** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %49 = call i32 @get_sub_picture(%struct.TYPE_7__* %42, i32 %43, i32 %44, i32** %45, i32* %46, i32** %47, i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %53 = getelementptr inbounds [4 x i32*], [4 x i32*]* %19, i64 0, i64 0
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %55 = call i32 @compute_mb_distortion(%struct.TYPE_7__* %50, i32** %51, i32* %52, i32** %53, i32* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  br label %63

63:                                               ; preds = %33
  %64 = load i64, i64* @MB_SIZE, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %17, align 4
  br label %27

71:                                               ; preds = %27
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* @MB_SIZE, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  br label %22

78:                                               ; preds = %22
  ret void
}

declare dso_local i32 @get_sub_picture(%struct.TYPE_7__*, i32, i32, i32**, i32*, i32**, i32*) #1

declare dso_local i32 @compute_mb_distortion(%struct.TYPE_7__*, i32**, i32*, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
