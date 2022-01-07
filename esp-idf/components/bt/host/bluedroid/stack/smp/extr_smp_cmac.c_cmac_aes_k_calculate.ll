; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_aes_k_calculate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_cmac.c_cmac_aes_k_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i64* }

@.str = private unnamed_addr constant [22 x i8] c"cmac_aes_k_calculate \00", align 1
@cmac_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BT_OCTET16_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"tlen = %d p_mac = %p\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"p_mac[0] = 0x%02x p_mac[1] = 0x%02x p_mac[2] = 0x%02x p_mac[3] = 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"p_mac[4] = 0x%02x p_mac[5] = 0x%02x p_mac[6] = 0x%02x p_mac[7] = 0x%02x\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64)* @cmac_aes_k_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_aes_k_calculate(i32 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i64], align 16
  %12 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = bitcast [16 x i64]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %42, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmac_cb, i32 0, i32 0), align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmac_cb, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmac_cb, i32 0, i32 0), align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i64, i64* @BT_OCTET16_LEN, align 8
  %25 = mul nsw i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %28 = call i32 @smp_xor_128(i32* %26, i64* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* @BT_OCTET16_LEN, align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmac_cb, i32 0, i32 1), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cmac_cb, i32 0, i32 0), align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @BT_OCTET16_LEN, align 8
  %36 = mul nsw i64 %34, %35
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i64, i64* @BT_OCTET16_LEN, align 8
  %39 = call i32 @SMP_Encrypt(i32 %29, i64 %30, i32* %37, i64 %38, %struct.TYPE_4__* %8)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %19
  store i64 1, i64* %10, align 8
  br label %50

42:                                               ; preds = %19
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @BT_OCTET16_LEN, align 8
  %47 = call i32 @memcpy(i64* %43, i64* %45, i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %15

50:                                               ; preds = %41, %15
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %94, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @BT_OCTET16_LEN, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub nsw i64 %56, %57
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64* %59, i64** %12, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @memcpy(i64* %60, i64* %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64*, i64** %12, align 8
  %66 = ptrtoint i64* %65 to i64
  %67 = call i32 (i8*, i64, i64, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %66)
  %68 = load i64*, i64** %12, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %12, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, i64, i64, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %72, i64 %75, i64 %78)
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %12, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %12, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 6
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %12, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 7
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i64, i64, ...) @SMP_TRACE_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %85, i64 %88, i64 %91)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %4, align 4
  br label %96

94:                                               ; preds = %50
  %95 = load i32, i32* @FALSE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %53
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SMP_TRACE_EVENT(i8*) #2

declare dso_local i32 @smp_xor_128(i32*, i64*) #2

declare dso_local i32 @SMP_Encrypt(i32, i64, i32*, i64, %struct.TYPE_4__*) #2

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

declare dso_local i32 @SMP_TRACE_DEBUG(i8*, i64, i64, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
