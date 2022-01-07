; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_wrr_ro.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_wrr_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }

@BACKEND_TYPE_RO = common dso_local global i64 0, align 8
@BACKEND_STATE_UP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wrr_ro(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i64 @network_backends_count(%struct.TYPE_13__* %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call %struct.TYPE_14__* @network_backends_get(%struct.TYPE_13__* %33, i64 %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %7, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = icmp eq %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %59

39:                                               ; preds = %32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %39
  br label %59

59:                                               ; preds = %58, %38
  %60 = load i64, i64* %3, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %3, align 8
  br label %28

62:                                               ; preds = %28
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  store i64 0, i64* %3, align 8
  br label %73

73:                                               ; preds = %132, %63
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %135

77:                                               ; preds = %73
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call %struct.TYPE_14__* @network_backends_get(%struct.TYPE_13__* %78, i64 %79)
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %12, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %82 = icmp eq %struct.TYPE_14__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %111

84:                                               ; preds = %77
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = call i32* @chassis_event_thread_pool(%struct.TYPE_14__* %85)
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %111

89:                                               ; preds = %84
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BACKEND_TYPE_RO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BACKEND_STATE_UP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, i64* %10, align 8
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %101, %95, %89
  br label %111

111:                                              ; preds = %110, %88, %83
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub nsw i64 %113, 1
  %115 = icmp sge i64 %112, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i64, i64* %9, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %121, %116
  br label %127

124:                                              ; preds = %111
  %125 = load i64, i64* %10, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %10, align 8
  br label %127

127:                                              ; preds = %124, %123
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %135

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %3, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %3, align 8
  br label %73

135:                                              ; preds = %130, %73
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %11, align 4
  ret i32 %142
}

declare dso_local i64 @network_backends_count(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @network_backends_get(%struct.TYPE_13__*, i64) #1

declare dso_local i32* @chassis_event_thread_pool(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
