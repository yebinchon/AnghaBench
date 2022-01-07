; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fps.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fps.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32**, i32**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }

@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %23, i32* %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %52, %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @ff_inlink_check_available_frame(i32* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i1 [ false, %31 ], [ %39, %36 ]
  br i1 %41, label %42, label %53

42:                                               ; preds = %40
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @read_frame(%struct.TYPE_12__* %43, %struct.TYPE_11__* %44, i32* %45, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %119

52:                                               ; preds = %42
  br label %31

53:                                               ; preds = %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = call i32 @ff_inlink_acknowledge_status(i32* %59, i64* %61, i32* %9)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @update_eof_pts(%struct.TYPE_12__* %66, %struct.TYPE_11__* %67, i32* %68, i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %76, i32* %77)
  store i32 0, i32* %2, align 4
  br label %119

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @write_frame(%struct.TYPE_12__* %87, %struct.TYPE_11__* %88, i32* %89, i32* %8)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = call i32 @ff_filter_set_ready(%struct.TYPE_12__* %94, i32 100)
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %119

98:                                               ; preds = %81
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ff_outlink_set_status(i32* %109, i64 %112, i32 %115)
  store i32 0, i32* %2, align 4
  br label %119

117:                                              ; preds = %103, %98
  %118 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %108, %96, %75, %50
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i64 @ff_inlink_check_available_frame(i32*) #1

declare dso_local i32 @read_frame(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ff_inlink_acknowledge_status(i32*, i64*, i32*) #1

declare dso_local i32 @update_eof_pts(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*, i32) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

declare dso_local i32 @write_frame(%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
