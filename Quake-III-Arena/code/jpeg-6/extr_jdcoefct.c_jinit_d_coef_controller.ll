; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdcoefct.c_jinit_d_coef_controller.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdcoefct.c_jinit_d_coef_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_11__*, %struct.jpeg_d_coef_controller* }
%struct.TYPE_8__ = type { i64 (i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)*, i64 (i32, i32, i32)* }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }
%struct.jpeg_d_coef_controller = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64*, i32*, i32* }
%struct.TYPE_9__ = type { i32*, i32, i32, i32, i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_coef_controller = common dso_local global i32 0, align 4
@start_input_pass = common dso_local global i32 0, align 4
@start_output_pass = common dso_local global i32 0, align 4
@JERR_NOT_COMPILED = common dso_local global i32 0, align 4
@D_MAX_BLOCKS_IN_MCU = common dso_local global i32 0, align 4
@JBLOCK = common dso_local global i32 0, align 4
@dummy_consume_data = common dso_local global i32 0, align 4
@decompress_onepass = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@consume_data = common dso_local global i32 0, align 4
@decompress_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_d_coef_controller(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = ptrtoint %struct.TYPE_12__* %13 to i32
  %15 = load i32, i32* @JPOOL_IMAGE, align 4
  %16 = load i32, i32* @my_coef_controller, align 4
  %17 = call i32 @SIZEOF(i32 %16)
  %18 = call i64 %12(i32 %14, i32 %15, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = bitcast %struct.TYPE_10__* %20 to %struct.jpeg_d_coef_controller*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  store %struct.jpeg_d_coef_controller* %21, %struct.jpeg_d_coef_controller** %23, align 8
  %24 = load i32, i32* @start_input_pass, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @start_output_pass, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = load i32, i32* @JERR_NOT_COMPILED, align 4
  %37 = call i32 @ERREXIT(%struct.TYPE_12__* %35, i32 %36)
  br label %82

38:                                               ; preds = %2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = ptrtoint %struct.TYPE_12__* %44 to i32
  %46 = load i32, i32* @JPOOL_IMAGE, align 4
  %47 = load i32, i32* @D_MAX_BLOCKS_IN_MCU, align 4
  %48 = load i32, i32* @JBLOCK, align 4
  %49 = call i32 @SIZEOF(i32 %48)
  %50 = mul nsw i32 %47, %49
  %51 = call i64 %43(i32 %45, i32 %46, i32 %50)
  store i64 %51, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %67, %38
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @D_MAX_BLOCKS_IN_MCU, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32, i32* @dummy_consume_data, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @decompress_onepass, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %70, %34
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
