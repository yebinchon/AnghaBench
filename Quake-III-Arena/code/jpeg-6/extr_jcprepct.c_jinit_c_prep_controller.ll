; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcprepct.c_jinit_c_prep_controller.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcprepct.c_jinit_c_prep_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_10__*, %struct.jpeg_c_prep_controller* }
%struct.TYPE_12__ = type { i32 (i32, i32, i32, i32)*, i64 (i32, i32, i32)* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.jpeg_c_prep_controller = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@JERR_BAD_BUFFER_MODE = common dso_local global i32 0, align 4
@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_prep_controller = common dso_local global i32 0, align 4
@start_pass_prep = common dso_local global i32 0, align 4
@JERR_NOT_COMPILED = common dso_local global i32 0, align 4
@pre_process_data = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i64 0, align 8
@pre_process_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_c_prep_controller(%struct.TYPE_15__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = load i32, i32* @JERR_BAD_BUFFER_MODE, align 4
  %13 = call i32 @ERREXIT(%struct.TYPE_15__* %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = ptrtoint %struct.TYPE_15__* %20 to i32
  %22 = load i32, i32* @JPOOL_IMAGE, align 4
  %23 = load i32, i32* @my_prep_controller, align 4
  %24 = call i32 @SIZEOF(i32 %23)
  %25 = call i64 %19(i32 %21, i32 %22, i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = bitcast %struct.TYPE_13__* %27 to %struct.jpeg_c_prep_controller*
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 6
  store %struct.jpeg_c_prep_controller* %28, %struct.jpeg_c_prep_controller** %30, align 8
  %31 = load i32, i32* @start_pass_prep, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %14
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = load i32, i32* @JERR_NOT_COMPILED, align 4
  %44 = call i32 @ERREXIT(%struct.TYPE_15__* %42, i32 %43)
  br label %99

45:                                               ; preds = %14
  %46 = load i32, i32* @pre_process_data, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  store i32 0, i32* %6, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %7, align 8
  br label %53

53:                                               ; preds = %93, %45
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = ptrtoint %struct.TYPE_15__* %65 to i32
  %67 = load i32, i32* @JPOOL_IMAGE, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DCTSIZE, align 8
  %72 = mul nsw i64 %70, %71
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = mul nsw i64 %72, %75
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sdiv i64 %76, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 %64(i32 %66, i32 %67, i32 %81, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %59
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 1
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %7, align 8
  br label %53

98:                                               ; preds = %53
  br label %99

99:                                               ; preds = %98, %41
  ret void
}

declare dso_local i32 @ERREXIT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SIZEOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
