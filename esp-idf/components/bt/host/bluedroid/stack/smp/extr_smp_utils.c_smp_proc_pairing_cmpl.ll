; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_proc_pairing_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_utils.c_smp_proc_pairing_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64, i64, i32, i32, i32 (i32, i32, %struct.TYPE_13__*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"smp_proc_pairing_cmpl \0A\00", align 1
@SMP_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"send SMP_COMPLT_EVT reason=0x%0x sec_level=0x%0x\0A\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@SMP_COMPLT_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_proc_pairing_cmpl(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__, align 8
  %4 = alloca i32 (i32, i32, %struct.TYPE_13__*)**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = bitcast %struct.TYPE_13__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 7
  %10 = load i32 (i32, i32, %struct.TYPE_13__*)*, i32 (i32, i32, %struct.TYPE_13__*)** %9, align 8
  %11 = bitcast i32 (i32, i32, %struct.TYPE_13__*)* %10 to i32 (i32, i32, %struct.TYPE_13__*)**
  store i32 (i32, i32, %struct.TYPE_13__*)** %11, i32 (i32, i32, %struct.TYPE_13__*)*** %4, align 8
  %12 = call i32 (i8*, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_15__* @btm_find_dev(i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SMP_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %34
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = icmp ne %struct.TYPE_15__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %44
  br label %71

60:                                               ; preds = %34
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = icmp ne %struct.TYPE_15__* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %60
  br label %71

71:                                               ; preds = %70, %59
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i32, i32* @FALSE, align 4
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @TRUE, align 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %72
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BD_ADDR_LEN, align 4
  %97 = call i32 @memcpy(i32 %92, i32 %95, i32 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %84
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = icmp ne %struct.TYPE_15__* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  br label %122

116:                                              ; preds = %106, %103
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = call i32 @L2CA_EnableUpdateBleConnParams(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  br label %123

123:                                              ; preds = %122, %84
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = call i32 @smp_reset_control_value(%struct.TYPE_14__* %124)
  %126 = load i32 (i32, i32, %struct.TYPE_13__*)**, i32 (i32, i32, %struct.TYPE_13__*)*** %4, align 8
  %127 = icmp ne i32 (i32, i32, %struct.TYPE_13__*)** %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32 (i32, i32, %struct.TYPE_13__*)**, i32 (i32, i32, %struct.TYPE_13__*)*** %4, align 8
  %130 = load i32 (i32, i32, %struct.TYPE_13__*)*, i32 (i32, i32, %struct.TYPE_13__*)** %129, align 8
  %131 = load i32, i32* @SMP_COMPLT_EVT, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 %130(i32 %131, i32 %132, %struct.TYPE_13__* %3)
  br label %134

134:                                              ; preds = %128, %123
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, ...) #2

declare dso_local %struct.TYPE_15__* @btm_find_dev(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @L2CA_EnableUpdateBleConnParams(i32, i32) #2

declare dso_local i32 @smp_reset_control_value(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
