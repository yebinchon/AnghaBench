; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_pinname_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_pinname_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 (i64, %struct.TYPE_12__*)*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64*, i32, i32 }
%struct.TYPE_8__ = type { i32, i64*, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }

@bta_dm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTA_DM_SP_CFM_REQ_EVT = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BD_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bta_dm_pinname_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_pinname_cback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 0), align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @BTA_DM_SP_CFM_REQ_EVT, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 4), align 8
  %18 = call i32 @bdcpy(i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 3), align 4
  %23 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %21, i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %13
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BTM_SUCCESS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BD_NAME_LEN, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @BD_NAME_LEN, align 4
  %45 = sub nsw i32 %44, 1
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  store i32 %47, i32* %5, align 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @memcpy(i64* %50, i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* @BD_NAME_LEN, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  store i64 0, i64* %62, align 8
  br label %68

63:                                               ; preds = %26, %13
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %46
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 2), align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 5), align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %135

75:                                               ; preds = %1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 4), align 8
  %80 = call i32 @bdcpy(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 3), align 4
  %85 = call i32 @BTA_COPY_DEVICE_CLASS(i32 %83, i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = icmp ne %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %125

88:                                               ; preds = %75
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BTM_SUCCESS, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BD_NAME_LEN, align 4
  %99 = sub nsw i32 %98, 1
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  br label %108

105:                                              ; preds = %94
  %106 = load i32, i32* @BD_NAME_LEN, align 4
  %107 = sub nsw i32 %106, 1
  br label %108

108:                                              ; preds = %105, %101
  %109 = phi i32 [ %104, %101 ], [ %107, %105 ]
  store i32 %109, i32* %5, align 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @memcpy(i64* %112, i32 %115, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @BD_NAME_LEN, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  store i64 0, i64* %124, align 8
  br label %130

125:                                              ; preds = %88, %75
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %108
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 0), align 8
  store i64 %131, i64* %6, align 8
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 2), align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %130, %68
  %136 = load i32 (i64, %struct.TYPE_12__*)*, i32 (i64, %struct.TYPE_12__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 1), align 8
  %137 = icmp ne i32 (i64, %struct.TYPE_12__*)* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32 (i64, %struct.TYPE_12__*)*, i32 (i64, %struct.TYPE_12__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 1), align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i32 %139(i64 %140, %struct.TYPE_12__* %4)
  br label %142

142:                                              ; preds = %138, %135
  ret void
}

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @BTA_COPY_DEVICE_CLASS(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
