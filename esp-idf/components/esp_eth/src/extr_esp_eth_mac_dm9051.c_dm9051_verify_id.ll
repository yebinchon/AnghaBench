; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_verify_id.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_dm9051_verify_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@DM9051_VIDL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"read VIDL failed\00", align 1
@err = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@DM9051_VIDH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"read VIDH failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong Vendor ID\00", align 1
@ESP_ERR_INVALID_VERSION = common dso_local global i32 0, align 4
@DM9051_PIDL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"read PIDL failed\00", align 1
@DM9051_PIDH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"read PIDH failed\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wrong Product ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @dm9051_verify_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dm9051_verify_id(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [2 x i32], align 4
  store i32* %0, i32** %3, align 8
  %6 = load i64, i64* @ESP_OK, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @DM9051_VIDL, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %10 = call i64 @dm9051_register_read(i32* %7, i32 %8, i32* %9)
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @err, align 4
  %15 = load i32, i32* @ESP_FAIL, align 4
  %16 = call i32 @MAC_CHECK(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @DM9051_VIDH, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = call i64 @dm9051_register_read(i32* %17, i32 %18, i32* %19)
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @err, align 4
  %25 = load i32, i32* @ESP_FAIL, align 4
  %26 = call i32 @MAC_CHECK(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 10, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 70, %32
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i1 [ false, %1 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @err, align 4
  %38 = load i32, i32* @ESP_ERR_INVALID_VERSION, align 4
  %39 = call i32 @MAC_CHECK(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* @DM9051_PIDL, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = call i64 @dm9051_register_read(i32* %40, i32 %41, i32* %42)
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @err, align 4
  %48 = load i32, i32* @ESP_FAIL, align 4
  %49 = call i32 @MAC_CHECK(i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @DM9051_PIDH, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %53 = call i64 @dm9051_register_read(i32* %50, i32 %51, i32* %52)
  %54 = load i64, i64* @ESP_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @err, align 4
  %58 = load i32, i32* @ESP_FAIL, align 4
  %59 = call i32 @MAC_CHECK(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 144, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %34
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 81, %65
  br label %67

67:                                               ; preds = %63, %34
  %68 = phi i1 [ false, %34 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @err, align 4
  %71 = load i32, i32* @ESP_ERR_INVALID_VERSION, align 4
  %72 = call i32 @MAC_CHECK(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i64, i64* @ESP_OK, align 8
  store i64 %73, i64* %2, align 8
  br label %76

74:                                               ; No predecessors!
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %67
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @MAC_CHECK(i32, i8*, i32, i32) #1

declare dso_local i64 @dm9051_register_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
