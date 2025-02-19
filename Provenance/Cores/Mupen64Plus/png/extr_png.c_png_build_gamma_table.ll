; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_build_gamma_table.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_build_gamma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, %struct.TYPE_11__, i32*, i32*, i32*, %struct.TYPE_10__, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"in png_build_gamma_table\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gamma table being rebuilt\00", align 1
@PNG_FP_1 = common dso_local global i64 0, align 8
@PNG_16_TO_8 = common dso_local global i32 0, align 4
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COMPOSE = common dso_local global i32 0, align 4
@PNG_MAX_GAMMA_8 = common dso_local global i32 0, align 4
@PNG_RGB_TO_GRAY = common dso_local global i32 0, align 4
@PNG_SCALE_16_TO_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_build_gamma_table(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 11
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @png_warning(%struct.TYPE_12__* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 @png_destroy_gamma_table(%struct.TYPE_12__* %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 8
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 11
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @png_reciprocal2(i64 %35, i64 %38)
  br label %42

40:                                               ; preds = %23
  %41 = load i64, i64* @PNG_FP_1, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi i64 [ %39, %31 ], [ %41, %40 ]
  %44 = call i32 @png_build_8bit_table(%struct.TYPE_12__* %24, i32** %26, i64 %43)
  br label %45

45:                                               ; preds = %42, %20
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @png_destroy_gamma_table(%struct.TYPE_12__*) #1

declare dso_local i32 @png_build_8bit_table(%struct.TYPE_12__*, i32**, i64) #1

declare dso_local i64 @png_reciprocal2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
