; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_listen.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32*, i64 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@BTA_GATT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bta_gattc_listen failed, unknown client_if: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Listen failure\00", align 1
@BTA_GATTC_LISTEN_EVT = common dso_local global i32 0, align 4
@BTA_GATT_OK = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@BTA_GATT_TRANSPORT_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Listen For All now\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_listen(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_12__* @bta_gattc_cl_get_regcb(i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @UNUSED(i32* %12)
  %14 = load i32, i32* @BTA_GATT_ERROR, align 4
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = icmp eq %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %130

31:                                               ; preds = %2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i64 @bta_gattc_mark_bg_conn(i32 %35, i32 %40, i64 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %130

48:                                               ; preds = %31
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @GATT_Listen(i32 %52, i64 %56, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %48
  %64 = call i32 (i8*, ...) @APPL_TRACE_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %66, align 8
  %68 = load i32, i32* @BTA_GATTC_LISTEN_EVT, align 4
  %69 = call i32 %67(i32 %68, %struct.TYPE_14__* %6)
  br label %129

70:                                               ; preds = %48
  %71 = load i32, i32* @BTA_GATT_OK, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.TYPE_14__*)*, i32 (i32, %struct.TYPE_14__*)** %74, align 8
  %76 = load i32, i32* @BTA_GATTC_LISTEN_EVT, align 4
  %77 = call i32 %75(i32 %76, %struct.TYPE_14__* %6)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %128

83:                                               ; preds = %70
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @L2CA_GetBleConnRole(i32* %93)
  %95 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %89
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @BTA_GATT_TRANSPORT_LE, align 4
  %107 = call i32* @bta_gattc_find_clcb_by_cif(i32 %101, i32* %105, i32 %106)
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @bta_gattc_init_clcb_conn(i32 %113, i32* %117)
  br label %119

119:                                              ; preds = %109, %97, %89
  br label %127

120:                                              ; preds = %83
  %121 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bta_gattc_process_listen_all(i32 %125)
  br label %127

127:                                              ; preds = %120, %119
  br label %128

128:                                              ; preds = %127, %70
  br label %129

129:                                              ; preds = %128, %63
  br label %130

130:                                              ; preds = %25, %129, %31
  ret void
}

declare dso_local %struct.TYPE_12__* @bta_gattc_cl_get_regcb(i32) #1

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, ...) #1

declare dso_local i64 @bta_gattc_mark_bg_conn(i32, i32, i64, i32) #1

declare dso_local i32 @GATT_Listen(i32, i64, i32*) #1

declare dso_local i64 @L2CA_GetBleConnRole(i32*) #1

declare dso_local i32* @bta_gattc_find_clcb_by_cif(i32, i32*, i32) #1

declare dso_local i32 @bta_gattc_init_clcb_conn(i32, i32*) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local i32 @bta_gattc_process_listen_all(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
