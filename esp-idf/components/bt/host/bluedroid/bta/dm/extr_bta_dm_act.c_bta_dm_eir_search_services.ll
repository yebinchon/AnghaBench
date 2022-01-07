; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_eir_search_services.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_eir_search_services.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [64 x i8] c"BTA searching services in EIR of BDA:0x%02X%02X%02X%02X%02X%02X\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"    with services_to_search=0x%08X\00", align 1
@BTA_MAX_SERVICE_ID = common dso_local global i32 0, align 4
@bta_service_id_to_uuid_lkup_tbl = common dso_local global i64* null, align 8
@BTM_EIR_FOUND = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET_HS = common dso_local global i64 0, align 8
@UUID_SERVCLASS_PNP_INFORMATION = common dso_local global i64 0, align 8
@BTM_EIR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"BTA EIR search result, services_to_search=0x%08X, services_found=0x%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*)* @bta_dm_eir_search_services to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_eir_search_services(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18, i32 %23, i32 %28, i32 %33, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i32, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %120, %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BTA_MAX_SERVICE_ID, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %123

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @BTA_SERVICE_ID_TO_SERVICE_MASK(i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %120

56:                                               ; preds = %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = load i64*, i64** @bta_service_id_to_uuid_lkup_tbl, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @BTM_HasInquiryEirService(%struct.TYPE_4__* %57, i64 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @BTM_EIR_FOUND, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %56
  %68 = load i64*, i64** @bta_service_id_to_uuid_lkup_tbl, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UUID_SERVCLASS_HEADSET, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = load i64, i64* @UUID_SERVCLASS_HEADSET_HS, align 8
  %78 = call i64 @BTM_HasInquiryEirService(%struct.TYPE_4__* %76, i64 %77)
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %75, %67, %56
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @BTM_EIR_FOUND, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79
  %84 = load i64*, i64** @bta_service_id_to_uuid_lkup_tbl, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UUID_SERVCLASS_PNP_INFORMATION, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @BTA_SERVICE_ID_TO_SERVICE_MASK(i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @BTA_SERVICE_ID_TO_SERVICE_MASK(i32 %98)
  %100 = xor i64 %99, -1
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %91, %83
  br label %119

106:                                              ; preds = %79
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* @BTM_EIR_NOT_FOUND, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @BTA_SERVICE_ID_TO_SERVICE_MASK(i32 %111)
  %113 = xor i64 %112, -1
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %110, %106
  br label %119

119:                                              ; preds = %118, %105
  br label %120

120:                                              ; preds = %119, %48
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %43

123:                                              ; preds = %43
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %127)
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, ...) #1

declare dso_local i64 @BTA_SERVICE_ID_TO_SERVICE_MASK(i32) #1

declare dso_local i64 @BTM_HasInquiryEirService(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
