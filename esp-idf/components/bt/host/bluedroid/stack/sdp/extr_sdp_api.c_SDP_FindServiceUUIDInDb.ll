; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInDb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@ATTR_ID_SERVICE_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @SDP_FindServiceUUIDInDb(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %111

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %8, align 8
  br label %25

21:                                               ; preds = %14
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %106, %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %110

29:                                               ; preds = %26
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  br label %33

33:                                               ; preds = %102, %29
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %36
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @SDP_DISC_ATTR_TYPE(i32 %45)
  %47 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %10, align 8
  br label %55

55:                                               ; preds = %74, %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @SDP_DISC_ATTR_TYPE(i32 %61)
  %63 = load i64, i64* @UUID_DESC_TYPE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = call i64 @sdpu_compare_uuid_with_attr(i32* %66, %struct.TYPE_13__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %4, align 8
  br label %111

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %10, align 8
  br label %55

78:                                               ; preds = %55
  br label %106

79:                                               ; preds = %42, %36
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ATTR_ID_SERVICE_ID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @SDP_DISC_ATTR_TYPE(i32 %88)
  %90 = load i64, i64* @UUID_DESC_TYPE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %95 = call i64 @sdpu_compare_uuid_with_attr(i32* %93, %struct.TYPE_13__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %4, align 8
  br label %111

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %9, align 8
  br label %33

106:                                              ; preds = %78, %33
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %8, align 8
  br label %26

110:                                              ; preds = %26
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %111

111:                                              ; preds = %110, %97, %70, %13
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %112
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i64 @sdpu_compare_uuid_with_attr(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
