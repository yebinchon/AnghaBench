; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_sdp_db_service_search.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_sdp_db_service_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }

@sdp_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @sdp_db_service_search(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sdp_cb, i32 0, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i64 %11
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sdp_cb, i32 0, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 0
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 1
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %4, align 8
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %135, %21
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = icmp ult %struct.TYPE_13__* %23, %24
  br i1 %25, label %26, label %138

26:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %123, %26
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %126

33:                                               ; preds = %27
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i64 0
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %110, %33
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %115

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UUID_DESC_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @sdpu_compare_uuid_arrays(i32 %53, i32 %56, i32* %64, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %115

75:                                               ; preds = %50
  br label %109

76:                                               ; preds = %44
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @find_uuid_in_seq(i32 %85, i32 %88, i32* %96, i32 %103, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %82
  br label %115

107:                                              ; preds = %82
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %75
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %6, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %6, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 1
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %8, align 8
  br label %38

115:                                              ; preds = %106, %74, %38
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %126

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %7, align 8
  br label %27

126:                                              ; preds = %121, %27
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %3, align 8
  br label %139

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 1
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %4, align 8
  br label %22

138:                                              ; preds = %22
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %139

139:                                              ; preds = %138, %132
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %140
}

declare dso_local i64 @sdpu_compare_uuid_arrays(i32, i32, i32*, i32) #1

declare dso_local i64 @find_uuid_in_seq(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
