; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__, i32, i32, i32 (i32, %struct.TYPE_20__*)*, i64 }
%struct.TYPE_15__ = type { i8*, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_20__*)*, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@BTA_GATT_NO_RESOURCES = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"bta_gattc_register state %d\0A\00", align 1
@BTA_GATTC_STATE_DISABLED = common dso_local global i64 0, align 8
@BTA_GATTC_CL_MAX = common dso_local global i64 0, align 8
@bta_gattc_cl_cback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Register with GATT stack failed.\0A\00", align 1
@BTA_GATT_ERROR = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@BTA_GATTC_INT_START_IF_EVT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"GATTC getbuf sucess.\0A\00", align 1
@BTA_GATT_OK = common dso_local global i8* null, align 8
@BTA_GATTC_REG_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_register(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** @BTA_GATT_NO_RESOURCES, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = call i32 @memset(%struct.TYPE_20__* %5, i32 0, i32 40)
  %19 = load i8*, i8** @BTA_GATT_NO_RESOURCES, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTA_GATTC_STATE_DISABLED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = call i32 @bta_gattc_enable(%struct.TYPE_19__* %28)
  br label %30

30:                                               ; preds = %27, %2
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %135, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @BTA_GATTC_CL_MAX, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %31
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %134, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @GATT_Register(i32* %48, i32* @bta_gattc_cl_cback)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  store i32 %49, i32* %55, align 8
  %56 = icmp eq i32 %49, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47, %44
  %58 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8*, i8** @BTA_GATT_ERROR, align 8
  store i8* %59, i8** %9, align 8
  br label %133

60:                                               ; preds = %47
  %61 = load i64, i64* @TRUE, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 4
  store i64 %61, i64* %67, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 3
  store i32 (i32, %struct.TYPE_20__*)* %71, i32 (i32, %struct.TYPE_20__*)** %77, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @memcpy(i32* %83, i32* %84, i32 4)
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = load i64, i64* %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = call i64 @osi_malloc(i32 8)
  %96 = inttoptr i64 %95 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %96, %struct.TYPE_17__** %8, align 8
  %97 = icmp ne %struct.TYPE_17__* %96, null
  br i1 %97, label %98, label %116

98:                                               ; preds = %60
  %99 = load i32, i32* @BTA_GATTC_INT_START_IF_EVT, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = call i32 @bta_sys_sendmsg(%struct.TYPE_17__* %113)
  %115 = load i8*, i8** @BTA_GATT_OK, align 8
  store i8* %115, i8** %9, align 8
  br label %132

116:                                              ; preds = %60
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @GATT_Deregister(i32 %123)
  %125 = load i8*, i8** @BTA_GATT_NO_RESOURCES, align 8
  store i8* %125, i8** %9, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 %129
  %131 = call i32 @memset(%struct.TYPE_20__* %130, i32 0, i32 4)
  br label %132

132:                                              ; preds = %116, %98
  br label %138

133:                                              ; preds = %57
  br label %134

134:                                              ; preds = %133, %35
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %31

138:                                              ; preds = %132, %31
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %141, align 8
  %143 = icmp ne i32 (i32, %struct.TYPE_20__*)* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %138
  %145 = load i32*, i32** %7, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @memcpy(i32* %149, i32* %150, i32 4)
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %158, align 8
  %160 = load i32, i32* @BTA_GATTC_REG_EVT, align 4
  %161 = call i32 %159(i32 %160, %struct.TYPE_20__* %5)
  br label %162

162:                                              ; preds = %152, %138
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @bta_gattc_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @GATT_Register(i32*, i32*) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_17__*) #1

declare dso_local i32 @GATT_Deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
