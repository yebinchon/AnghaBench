; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32*, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i64 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_PARAMETER_BUFFER_REQUIREMENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @graph_port_parameter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_parameter_set(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)** %20, align 8
  %22 = icmp ne i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_19__*)** %26, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = call i64 %27(%struct.TYPE_22__* %29, %struct.TYPE_18__* %30, %struct.TYPE_19__* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MMAL_ENOSYS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %120

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = call %struct.TYPE_18__* @find_port_from_graph(%struct.TYPE_20__* %40, %struct.TYPE_18__* %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %8, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %46, i64* %3, align 8
  br label %120

47:                                               ; preds = %39
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = call i64 @mmal_port_parameter_set(%struct.TYPE_18__* %48, %struct.TYPE_19__* %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @MMAL_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %118

55:                                               ; preds = %47
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MMAL_PARAMETER_BUFFER_REQUIREMENTS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %117

61:                                               ; preds = %55
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %87, %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @MMAL_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  br i1 %76, label %77, label %90

77:                                               ; preds = %75
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @graph_port_update_requirements(%struct.TYPE_20__* %78, i32 %85)
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %65

90:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %113, %90
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @MMAL_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ult i32 %96, %99
  br label %101

101:                                              ; preds = %95, %91
  %102 = phi i1 [ false, %91 ], [ %100, %95 ]
  br i1 %102, label %103, label %116

103:                                              ; preds = %101
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @graph_port_update_requirements(%struct.TYPE_20__* %104, i32 %111)
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %91

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %55
  br label %118

118:                                              ; preds = %117, %54
  %119 = load i64, i64* %7, align 8
  store i64 %119, i64* %3, align 8
  br label %120

120:                                              ; preds = %118, %45, %36
  %121 = load i64, i64* %3, align 8
  ret i64 %121
}

declare dso_local %struct.TYPE_18__* @find_port_from_graph(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i64 @mmal_port_parameter_set(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @graph_port_update_requirements(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
