; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_in_fetch_bonded_devices.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_storage.c_btc_in_fetch_bonded_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Remote device:%s\0A\00", align 1
@BTC_STORAGE_LINK_KEY_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_LINK_KEY_TYPE_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_DEV_CLASS_STR = common dso_local global i32 0, align 4
@BTC_STORAGE_PIN_LENGTH_STR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"bounded device:%s, LinkKeyType or PinLength is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Remote device:%s, no link key\0A\00", align 1
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @btc_in_fetch_bonded_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_in_fetch_bonded_devices(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  %16 = call i32 (...) @btc_config_lock()
  %17 = call i32* (...) @btc_config_section_begin()
  store i32* %17, i32** %4, align 8
  br label %18

18:                                               ; preds = %91, %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* (...) @btc_config_section_end()
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @btc_config_section_name(i32* %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @string_is_bdaddr(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %91

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @BTC_TRACE_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i64 4, i64* %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @BTC_STORAGE_LINK_KEY_STR, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @btc_config_get_bin(i8* %32, i32 %33, i32 %34, i64* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @BTC_STORAGE_LINK_KEY_TYPE_STR, align 4
  %40 = call i64 @btc_config_get_int(i8* %38, i32 %39, i32* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @string_to_bdaddr(i8* %43, %struct.TYPE_6__* %9)
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 12, i1 false)
  store i32 0, i32* %12, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @BTC_STORAGE_DEV_CLASS_STR, align 4
  %51 = call i64 @btc_config_get_int(i8* %49, i32 %50, i32* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = bitcast { i64, i32 }* %13 to i8*
  %56 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @uint2devclass(i32 %54, i64 %58, i32 %60)
  br label %62

62:                                               ; preds = %53, %47
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* @BTC_STORAGE_PIN_LENGTH_STR, align 4
  %65 = call i64 @btc_config_get_int(i8* %63, i32 %64, i32* %12)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = bitcast { i64, i32 }* %14 to i8*
  %72 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @BTA_DmAddDevice(i32 %67, i64 %74, i32 %76, i32 %68, i32 0, i32 0, i32 %69, i32 0, i32 %70)
  br label %78

78:                                               ; preds = %62, %42
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %37
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @BTC_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %78
  br label %84

84:                                               ; preds = %83, %29
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @BTC_TRACE_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %28
  %92 = load i32*, i32** %4, align 8
  %93 = call i32* @btc_config_section_next(i32* %92)
  store i32* %93, i32** %4, align 8
  br label %18

94:                                               ; preds = %18
  %95 = call i32 (...) @btc_config_unlock()
  %96 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  ret i32 %96
}

declare dso_local i32 @btc_config_lock(...) #1

declare dso_local i32* @btc_config_section_begin(...) #1

declare dso_local i32* @btc_config_section_end(...) #1

declare dso_local i8* @btc_config_section_name(i32*) #1

declare dso_local i32 @string_is_bdaddr(i8*) #1

declare dso_local i32 @BTC_TRACE_DEBUG(i8*, i8*) #1

declare dso_local i64 @btc_config_get_bin(i8*, i32, i32, i64*) #1

declare dso_local i64 @btc_config_get_int(i8*, i32, i32*) #1

declare dso_local i32 @string_to_bdaddr(i8*, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @uint2devclass(i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BTA_DmAddDevice(i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BTC_TRACE_ERROR(i8*, i8*) #1

declare dso_local i32* @btc_config_section_next(i32*) #1

declare dso_local i32 @btc_config_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
