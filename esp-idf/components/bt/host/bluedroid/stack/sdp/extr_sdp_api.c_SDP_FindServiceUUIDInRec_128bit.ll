; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInRec_128bit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInRec_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_ID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_FindServiceUUIDInRec_128bit(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  br label %13

13:                                               ; preds = %141, %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %145

16:                                               ; preds = %13
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @SDP_DISC_ATTR_TYPE(i32 %25)
  %27 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %89

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %7, align 8
  br label %35

35:                                               ; preds = %84, %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %88

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SDP_DISC_ATTR_TYPE(i32 %41)
  %43 = load i64, i64* @UUID_DESC_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SDP_DISC_ATTR_LEN(i32 %48)
  %50 = icmp eq i32 %49, 16
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load i64, i64* @LEN_UUID_128, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  store i64 0, i64* %8, align 8
  br label %55

55:                                               ; preds = %77, %51
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @LEN_UUID_128, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @LEN_UUID_128, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %59
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %45
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %3, align 4
  br label %147

83:                                               ; preds = %38
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %7, align 8
  br label %35

88:                                               ; preds = %35
  br label %145

89:                                               ; preds = %22, %16
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ATTR_ID_SERVICE_ID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %140

95:                                               ; preds = %89
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @SDP_DISC_ATTR_TYPE(i32 %98)
  %100 = load i64, i64* @UUID_DESC_TYPE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %139

102:                                              ; preds = %95
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SDP_DISC_ATTR_LEN(i32 %105)
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load i64, i64* @LEN_UUID_128, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %134, %108
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* @LEN_UUID_128, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @LEN_UUID_128, align 8
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %122, %123
  %125 = sub i64 %124, 1
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %116
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %9, align 8
  br label %112

137:                                              ; preds = %112
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %3, align 4
  br label %147

139:                                              ; preds = %102, %95
  br label %140

140:                                              ; preds = %139, %89
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  store %struct.TYPE_13__* %144, %struct.TYPE_13__** %6, align 8
  br label %13

145:                                              ; preds = %88, %13
  %146 = load i32, i32* @FALSE, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %137, %81
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @SDP_DISC_ATTR_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
