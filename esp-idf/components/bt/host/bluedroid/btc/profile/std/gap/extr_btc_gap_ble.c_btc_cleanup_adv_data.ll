; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_cleanup_adv_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gap/extr_btc_gap_ble.c_btc_cleanup_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @btc_cleanup_adv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_cleanup_adv_data(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %6 = icmp eq %struct.TYPE_19__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %156

8:                                                ; preds = %1
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i8**
  %19 = call i32 @btc_gap_adv_point_cleanup(i8** %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 8
  %22 = bitcast %struct.TYPE_11__** %21 to i8**
  %23 = call i32 @btc_gap_adv_point_cleanup(i8** %22)
  br label %24

24:                                               ; preds = %13, %8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %4, align 8
  br label %35

35:                                               ; preds = %49, %29
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = icmp ne %struct.TYPE_18__* %45, null
  br label %47

47:                                               ; preds = %44, %35
  %48 = phi i1 [ false, %35 ], [ %46, %44 ]
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = bitcast i32* %51 to i8**
  %53 = call i32 @btc_gap_adv_point_cleanup(i8** %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 1
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %4, align 8
  br label %35

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = bitcast %struct.TYPE_18__** %60 to i8**
  %62 = call i32 @btc_gap_adv_point_cleanup(i8** %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = bitcast %struct.TYPE_12__** %64 to i8**
  %66 = call i32 @btc_gap_adv_point_cleanup(i8** %65)
  br label %67

67:                                               ; preds = %56, %24
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 6
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to i8**
  %78 = call i32 @btc_gap_adv_point_cleanup(i8** %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 6
  %81 = bitcast %struct.TYPE_13__** %80 to i8**
  %82 = call i32 @btc_gap_adv_point_cleanup(i8** %81)
  br label %83

83:                                               ; preds = %72, %67
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8**
  %94 = call i32 @btc_gap_adv_point_cleanup(i8** %93)
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 5
  %97 = bitcast %struct.TYPE_14__** %96 to i8**
  %98 = call i32 @btc_gap_adv_point_cleanup(i8** %97)
  br label %99

99:                                               ; preds = %88, %83
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = bitcast i32* %101 to i8**
  %103 = call i32 @btc_gap_adv_point_cleanup(i8** %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = icmp ne %struct.TYPE_15__* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = bitcast i32* %112 to i8**
  %114 = call i32 @btc_gap_adv_point_cleanup(i8** %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = bitcast %struct.TYPE_15__** %116 to i8**
  %118 = call i32 @btc_gap_adv_point_cleanup(i8** %117)
  br label %119

119:                                              ; preds = %108, %99
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = icmp ne %struct.TYPE_16__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = bitcast i32* %128 to i8**
  %130 = call i32 @btc_gap_adv_point_cleanup(i8** %129)
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 2
  %133 = bitcast %struct.TYPE_16__** %132 to i8**
  %134 = call i32 @btc_gap_adv_point_cleanup(i8** %133)
  br label %135

135:                                              ; preds = %124, %119
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = icmp ne %struct.TYPE_17__* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = bitcast i32* %144 to i8**
  %146 = call i32 @btc_gap_adv_point_cleanup(i8** %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = bitcast %struct.TYPE_17__** %148 to i8**
  %150 = call i32 @btc_gap_adv_point_cleanup(i8** %149)
  br label %151

151:                                              ; preds = %140, %135
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = bitcast i32* %153 to i8**
  %155 = call i32 @btc_gap_adv_point_cleanup(i8** %154)
  br label %156

156:                                              ; preds = %151, %7
  ret void
}

declare dso_local i32 @btc_gap_adv_point_cleanup(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
