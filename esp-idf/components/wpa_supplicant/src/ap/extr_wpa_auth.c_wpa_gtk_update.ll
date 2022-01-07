; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_gtk_update.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_gtk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_group = type { i32, i32, i32*, i32, i32, i32, i32, i32* }

@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Group key expansion\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GTK\00", align 1
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@WPA_IGTK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_gtk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_gtk_update(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %7 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WPA_NONCE_LEN, align 4
  %13 = call i32 @memcpy(i32 %8, i32 %11, i32 %12)
  %14 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WPA_NONCE_LEN, align 4
  %18 = call i32 @inc_byte_array(i32 %16, i32 %17)
  %19 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @wpa_gmk_to_gtk(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %37, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %46, i32 0, i32 7
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wpa_hexdump_key(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @inc_byte_array(i32, i32) #1

declare dso_local i64 @wpa_gmk_to_gtk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
