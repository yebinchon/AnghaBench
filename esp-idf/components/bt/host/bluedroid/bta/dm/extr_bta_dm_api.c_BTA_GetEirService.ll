; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_GetEirService.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_GetEirService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN_UUID_16 = common dso_local global i32 0, align 4
@BTA_MAX_SERVICE_ID = common dso_local global i64 0, align 8
@bta_service_id_to_uuid_lkup_tbl = common dso_local global i64* null, align 8
@UUID_SERVCLASS_HEADSET_HS = common dso_local global i64 0, align 8
@BTA_HSP_SERVICE_MASK = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HDP_SOURCE = common dso_local global i64 0, align 8
@BTA_HL_SERVICE_MASK = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HDP_SINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_GetEirService(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 32, i64* %8, align 8
  %13 = load i32, i32* @LEN_UUID_16, align 4
  %14 = mul nsw i32 32, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i64* %17, i64** %11, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = load i32, i32* @LEN_UUID_16, align 4
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @BTM_GetEirUuidList(i64* %18, i32 %19, i64* %7, i64* %17, i64 %20)
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %89, %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @BTA_MAX_SERVICE_ID, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** @bta_service_id_to_uuid_lkup_tbl, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %31
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %27

52:                                               ; preds = %41, %27
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UUID_SERVCLASS_HEADSET_HS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @BTA_HSP_SERVICE_MASK, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UUID_SERVCLASS_HDP_SOURCE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @BTA_HL_SERVICE_MASK, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UUID_SERVCLASS_HDP_SINK, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @BTA_HL_SERVICE_MASK, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %83, %76
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %22

92:                                               ; preds = %22
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BTM_GetEirUuidList(i64*, i32, i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
