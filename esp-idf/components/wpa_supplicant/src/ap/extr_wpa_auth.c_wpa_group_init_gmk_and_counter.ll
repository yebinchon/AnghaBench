; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_init_gmk_and_counter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_init_gmk_and_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.wpa_group** }
%struct.wpa_group = type { i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_GMK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GMK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Init Counter\00", align 1
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Key Counter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_init_gmk_and_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_authenticator*, align 8
  %5 = alloca %struct.wpa_group*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %4, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %5, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = add nsw i32 %10, 8
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 8
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @WPA_GMK_LEN, align 4
  %20 = call i64 @os_get_random(i32* %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @WPA_GMK_LEN, align 4
  %29 = call i32 @wpa_hexdump_key(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %28)
  %30 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %30, i32 0, i32 0
  %32 = load %struct.wpa_group**, %struct.wpa_group*** %31, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %15, %struct.wpa_group** %32, i32 %33)
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %15, i64 %36
  %38 = call i32 @wpa_get_ntp_timestamp(i32* %37)
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %15, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = call i32 @memcpy(i32* %42, %struct.wpa_group** %5, i32 8)
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %45 = call i64 @os_get_random(i32* %44, i32 128)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

48:                                               ; preds = %23
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %50 = mul nuw i64 4, %13
  %51 = trunc i64 %50 to i32
  %52 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @WPA_NONCE_LEN, align 4
  %56 = call i64 @sha1_prf(i32* %49, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %15, i32 %51, i32* %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

59:                                               ; preds = %48
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load %struct.wpa_group*, %struct.wpa_group** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @WPA_NONCE_LEN, align 4
  %65 = call i32 @wpa_hexdump_key(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %63, i32 %64)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %59, %58, %47, %22
  %67 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_get_random(i32*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.wpa_group**, i32) #2

declare dso_local i32 @wpa_get_ntp_timestamp(i32*) #2

declare dso_local i64 @sha1_prf(i32*, i32, i8*, i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
