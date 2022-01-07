; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_group = type { i8*, i32, i8* }
%struct.wpa_authenticator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"WPA: Not enough entropy in random pool for secure operations - update keys later when the first station connects\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to get random data for WPA initialization.\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"WPA: Delay group state machine start until Beacon frames have been configured\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_group* (%struct.wpa_authenticator*, i32, i32)* @wpa_group_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_group* @wpa_group_init(%struct.wpa_authenticator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_group*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i64 @os_zalloc(i32 24)
  %10 = inttoptr i64 %9 to %struct.wpa_group*
  store %struct.wpa_group* %10, %struct.wpa_group** %8, align 8
  %11 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %12 = icmp eq %struct.wpa_group* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.wpa_group* null, %struct.wpa_group** %4, align 8
  br label %61

14:                                               ; preds = %3
  %15 = load i8*, i8** @TRUE, align 8
  %16 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %17 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wpa_cipher_key_len(i32 %21)
  %23 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = call i32 (...) @random_pool_ready()
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i32, i32* @MSG_INFO, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %32 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %33 = call i64 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator* %31, %struct.wpa_group* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @MSG_ERROR, align 4
  %37 = call i32 @wpa_printf(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %39 = call i32 @os_free(%struct.wpa_group* %38)
  store %struct.wpa_group* null, %struct.wpa_group** %4, align 8
  br label %61

40:                                               ; preds = %30
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %43 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0))
  br label %59

49:                                               ; preds = %40
  %50 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %51 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %52 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %50, %struct.wpa_group* %51)
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %55 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %57 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  %58 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %56, %struct.wpa_group* %57)
  br label %59

59:                                               ; preds = %49, %46
  %60 = load %struct.wpa_group*, %struct.wpa_group** %8, align 8
  store %struct.wpa_group* %60, %struct.wpa_group** %4, align 8
  br label %61

61:                                               ; preds = %59, %35, %13
  %62 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  ret %struct.wpa_group* %62
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_cipher_key_len(i32) #1

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @os_free(%struct.wpa_group*) #1

declare dso_local i32 @wpa_group_sm_step(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
