; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_format_commit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_graph_port_format_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"couldn't propagate format commit of port %s(%p)\00", align 1
@MMAL_FALSE = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @graph_port_format_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @graph_port_format_commit(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %4, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %17, align 8
  %19 = icmp ne i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = call i64 %24(%struct.TYPE_21__* %26, %struct.TYPE_19__* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MMAL_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %94

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @MMAL_ENOSYS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %142

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call %struct.TYPE_19__* @find_port_from_graph(%struct.TYPE_20__* %41, %struct.TYPE_19__* %42)
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %6, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %47, i64* %2, align 8
  br label %142

48:                                               ; preds = %40
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @mmal_format_full_copy(i32 %51, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @MMAL_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %142

61:                                               ; preds = %48
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = call i64 @mmal_port_format_commit(%struct.TYPE_19__* %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @MMAL_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %61
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %2, align 8
  br label %142

79:                                               ; preds = %61
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = call i64 @graph_port_format_commit_propagate(%struct.TYPE_20__* %80, %struct.TYPE_19__* %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @MMAL_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %91 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %89, %struct.TYPE_19__* %90)
  %92 = load i64, i64* %5, align 8
  store i64 %92, i64* %2, align 8
  br label %142

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %32
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = load i32, i32* @MMAL_FALSE, align 4
  %98 = call i64 @graph_port_update(%struct.TYPE_20__* %95, %struct.TYPE_19__* %96, i32 %97)
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @MMAL_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %2, align 8
  br label %142

104:                                              ; preds = %94
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %136, %110
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ult i32 %112, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %111
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %123, i64 %125
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = load i32, i32* @MMAL_FALSE, align 4
  %129 = call i64 @graph_port_update(%struct.TYPE_20__* %118, %struct.TYPE_19__* %127, i32 %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @MMAL_SUCCESS, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %117
  %134 = load i64, i64* %5, align 8
  store i64 %134, i64* %2, align 8
  br label %142

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %111

139:                                              ; preds = %111
  br label %140

140:                                              ; preds = %139, %104
  %141 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %141, i64* %2, align 8
  br label %142

142:                                              ; preds = %140, %133, %102, %86, %77, %59, %46, %37
  %143 = load i64, i64* %2, align 8
  ret i64 %143
}

declare dso_local %struct.TYPE_19__* @find_port_from_graph(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @mmal_format_full_copy(i32, i32) #1

declare dso_local i64 @mmal_port_format_commit(%struct.TYPE_19__*) #1

declare dso_local i64 @graph_port_format_commit_propagate(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @graph_port_update(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
