; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindProfileVersionInRec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindProfileVersionInRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_9__* }

@ATTR_ID_BT_PROFILE_DESC_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@UINT_DESC_TYPE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_FindProfileVersionInRec(%struct.TYPE_8__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  br label %13

13:                                               ; preds = %115, %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %119

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATTR_ID_BT_PROFILE_DESC_LIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %115

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @SDP_DISC_ATTR_TYPE(i32 %25)
  %27 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %115

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %8, align 8
  br label %35

35:                                               ; preds = %109, %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %38, label %113

38:                                               ; preds = %35
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SDP_DISC_ATTR_TYPE(i32 %41)
  %43 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %121

47:                                               ; preds = %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %9, align 8
  br label %53

53:                                               ; preds = %104, %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %108

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @SDP_DISC_ATTR_TYPE(i32 %59)
  %61 = load i64, i64* @UUID_DESC_TYPE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %56
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @SDP_DISC_ATTR_LEN(i32 %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %9, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @SDP_DISC_ATTR_TYPE(i32 %83)
  %85 = load i64, i64* @UINT_DESC_TYPE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @SDP_DISC_ATTR_LEN(i32 %90)
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %4, align 4
  br label %121

101:                                              ; preds = %87, %77
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %121

103:                                              ; preds = %69, %63, %56
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %9, align 8
  br label %53

108:                                              ; preds = %53
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %8, align 8
  br label %35

113:                                              ; preds = %35
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %22, %16
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %8, align 8
  br label %13

119:                                              ; preds = %13
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %113, %101, %93, %45
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @SDP_DISC_ATTR_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
