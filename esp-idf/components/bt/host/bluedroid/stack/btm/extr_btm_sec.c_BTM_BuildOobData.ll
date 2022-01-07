; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_BuildOobData.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_BTM_BuildOobData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* (...)* }
%struct.TYPE_8__ = type { i32 }

@BTM_OOB_MANDATORY_SIZE = common dso_local global i64 0, align 8
@BTM_OOB_HASH_C_SIZE = common dso_local global i64 0, align 8
@BTM_EIR_OOB_SSP_HASH_C_TYPE = common dso_local global i64 0, align 8
@BTM_OOB_RAND_R_SIZE = common dso_local global i64 0, align 8
@BTM_EIR_OOB_SSP_RAND_R_TYPE = common dso_local global i64 0, align 8
@BTM_OOB_COD_SIZE = common dso_local global i64 0, align 8
@BTM_EIR_OOB_COD_TYPE = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@BTM_EIR_COMPLETE_LOCAL_NAME_TYPE = common dso_local global i64 0, align 8
@BTM_EIR_SHORTENED_LOCAL_NAME_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BuildOobData(i64* %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i64*, i64** %6, align 8
  store i64* %14, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %112

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BTM_OOB_MANDATORY_SIZE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %112

21:                                               ; preds = %17
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @UINT16_TO_STREAM(i64* %22, i64 %23)
  %25 = load i64*, i64** %11, align 8
  %26 = call %struct.TYPE_9__* (...) @controller_get_interface()
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__* (...)*, %struct.TYPE_8__* (...)** %27, align 8
  %29 = call %struct.TYPE_8__* (...) %28()
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BDADDR_TO_STREAM(i64* %25, i32 %31)
  %33 = load i64, i64* @BTM_OOB_MANDATORY_SIZE, align 8
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %7, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* @BTM_OOB_HASH_C_SIZE, align 8
  %38 = add nsw i64 %37, 2
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %21
  %43 = load i64, i64* @BTM_OOB_HASH_C_SIZE, align 8
  %44 = add nsw i64 %43, 1
  %45 = load i64*, i64** %11, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %11, align 8
  store i64 %44, i64* %45, align 8
  %47 = load i64, i64* @BTM_EIR_OOB_SSP_HASH_C_TYPE, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* @BTM_OOB_HASH_C_SIZE, align 8
  %53 = call i32 @ARRAY_TO_STREAM(i64* %50, i32 %51, i64 %52)
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %42, %21
  %61 = load i64, i64* @BTM_OOB_RAND_R_SIZE, align 8
  %62 = add nsw i64 %61, 2
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i64, i64* @BTM_OOB_RAND_R_SIZE, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i64*, i64** %11, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %11, align 8
  store i64 %68, i64* %69, align 8
  %71 = load i64, i64* @BTM_EIR_OOB_SSP_RAND_R_TYPE, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %11, align 8
  store i64 %71, i64* %72, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i64, i64* @BTM_OOB_RAND_R_SIZE, align 8
  %77 = call i32 @ARRAY_TO_STREAM(i64* %74, i32 %75, i64 %76)
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %66, %60
  %85 = load i64, i64* @BTM_OOB_COD_SIZE, align 8
  %86 = add nsw i64 %85, 2
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %84
  %91 = load i64, i64* @BTM_OOB_COD_SIZE, align 8
  %92 = add nsw i64 %91, 1
  %93 = load i64*, i64** %11, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 1
  store i64* %94, i64** %11, align 8
  store i64 %92, i64* %93, align 8
  %95 = load i64, i64* @BTM_EIR_OOB_COD_TYPE, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %11, align 8
  store i64 %95, i64* %96, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 1, i32 0), align 4
  %100 = call i32 @DEVCLASS_TO_STREAM(i64* %98, i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %7, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %90, %84
  %108 = load i64*, i64** %6, align 8
  store i64* %108, i64** %11, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @UINT16_TO_STREAM(i64* %109, i64 %110)
  br label %112

112:                                              ; preds = %107, %17, %5
  %113 = load i64, i64* %12, align 8
  ret i64 %113
}

declare dso_local i32 @UINT16_TO_STREAM(i64*, i64) #1

declare dso_local i32 @BDADDR_TO_STREAM(i64*, i32) #1

declare dso_local %struct.TYPE_9__* @controller_get_interface(...) #1

declare dso_local i32 @ARRAY_TO_STREAM(i64*, i32, i64) #1

declare dso_local i32 @DEVCLASS_TO_STREAM(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
