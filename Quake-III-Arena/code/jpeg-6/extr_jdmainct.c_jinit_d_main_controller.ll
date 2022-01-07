; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmainct.c_jinit_d_main_controller.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmainct.c_jinit_d_main_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.jpeg_d_main_controller* }
%struct.TYPE_12__ = type { i32 (i32, i32, i32, i32)*, i64 (i32, i32, i32)* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.jpeg_d_main_controller = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_main_controller = common dso_local global i32 0, align 4
@start_pass_main = common dso_local global i32 0, align 4
@JERR_BAD_BUFFER_MODE = common dso_local global i32 0, align 4
@JERR_NOTIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_d_main_controller(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = ptrtoint %struct.TYPE_15__* %15 to i32
  %17 = load i32, i32* @JPOOL_IMAGE, align 4
  %18 = load i32, i32* @my_main_controller, align 4
  %19 = call i32 @SIZEOF(i32 %18)
  %20 = call i64 %14(i32 %16, i32 %17, i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %5, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = bitcast %struct.TYPE_13__* %22 to %struct.jpeg_d_main_controller*
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  store %struct.jpeg_d_main_controller* %23, %struct.jpeg_d_main_controller** %25, align 8
  %26 = load i32, i32* @start_pass_main, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load i32, i32* @JERR_BAD_BUFFER_MODE, align 4
  %35 = call i32 @ERREXIT(%struct.TYPE_15__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = load i32, i32* @JERR_NOTIMPL, align 4
  %51 = call i32 @ERREXIT(%struct.TYPE_15__* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = call i32 @alloc_funny_pointers(%struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %8, align 4
  br label %63

59:                                               ; preds = %36
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %52
  store i32 0, i32* %6, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %9, align 8
  br label %67

67:                                               ; preds = %110, %63
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %115

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %80, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = ptrtoint %struct.TYPE_15__* %90 to i32
  %92 = load i32, i32* @JPOOL_IMAGE, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %100, %101
  %103 = call i32 %89(i32 %91, i32 %92, i32 %99, i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %73
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 1
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %9, align 8
  br label %67

115:                                              ; preds = %67
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @alloc_funny_pointers(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
