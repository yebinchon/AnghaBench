; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_ensure_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_ensure_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32 }
%struct.wpa_group = type { i8*, i8* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WPA: Re-initialize GMK/Counter on first station\0A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"WPA: Not enough entropy in random pool to proceed - reject first 4-way handshake\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_ensure_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_group_ensure_init(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  %5 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %6 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = call i32 @wpa_printf(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @random_pool_ready()
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** @TRUE, align 8
  %19 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %28

21:                                               ; preds = %10
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @FALSE, align 8
  %26 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %30 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %31 = call i32 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator* %29, %struct.wpa_group* %30)
  %32 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %33 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %34 = call i32 @wpa_gtk_update(%struct.wpa_authenticator* %32, %struct.wpa_group* %33)
  %35 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %36 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %37 = call i32 @wpa_group_config_group_keys(%struct.wpa_authenticator* %35, %struct.wpa_group* %36)
  br label %38

38:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @random_pool_ready(...) #1

declare dso_local i32 @wpa_group_init_gmk_and_counter(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_gtk_update(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_config_group_keys(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
