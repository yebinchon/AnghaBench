; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jccoefct.c_jinit_c_coef_controller.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jccoefct.c_jinit_c_coef_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.jpeg_c_coef_controller* }
%struct.TYPE_9__ = type { i64 (i32, i32, i32)*, i32* (i32, i32, i32, i32, i32, i32)*, i64 (i32, i32, i32)* }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.jpeg_c_coef_controller = type { i32 }
%struct.TYPE_10__ = type { i32**, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_coef_controller = common dso_local global i32 0, align 4
@start_pass_coef = common dso_local global i32 0, align 4
@JERR_BAD_BUFFER_MODE = common dso_local global i32 0, align 4
@C_MAX_BLOCKS_IN_MCU = common dso_local global i32 0, align 4
@JBLOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_c_coef_controller(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
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
  %21 = bitcast %struct.TYPE_10__* %20 to %struct.jpeg_c_coef_controller*
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 3
  store %struct.jpeg_c_coef_controller* %21, %struct.jpeg_c_coef_controller** %23, align 8
  %24 = load i32, i32* @start_pass_coef, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i32, i32* @JERR_BAD_BUFFER_MODE, align 4
  %33 = call i32 @ERREXIT(%struct.TYPE_12__* %31, i32 %32)
  br label %71

34:                                               ; preds = %2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = ptrtoint %struct.TYPE_12__* %40 to i32
  %42 = load i32, i32* @JPOOL_IMAGE, align 4
  %43 = load i32, i32* @C_MAX_BLOCKS_IN_MCU, align 4
  %44 = load i32, i32* @JBLOCK, align 4
  %45 = call i32 @SIZEOF(i32 %44)
  %46 = mul nsw i32 %43, %45
  %47 = call i64 %39(i32 %41, i32 %42, i32 %46)
  store i64 %47, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %63, %34
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @C_MAX_BLOCKS_IN_MCU, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %30
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
