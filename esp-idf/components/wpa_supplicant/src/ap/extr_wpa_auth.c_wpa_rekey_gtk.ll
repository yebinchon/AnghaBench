; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_rekey_gtk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_rekey_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { %struct.TYPE_2__, %struct.wpa_group* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_group = type { i64, i32, %struct.wpa_group* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wpa_rekey_gtk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_rekey_gtk(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca %struct.wpa_group*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wpa_authenticator*
  store %struct.wpa_authenticator* %8, %struct.wpa_authenticator** %5, align 8
  %9 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %9, i32 0, i32 1
  %11 = load %struct.wpa_group*, %struct.wpa_group** %10, align 8
  store %struct.wpa_group* %11, %struct.wpa_group** %6, align 8
  br label %12

12:                                               ; preds = %32, %2
  %13 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %14 = icmp ne %struct.wpa_group* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %26, %15
  %20 = load i64, i64* @FALSE, align 8
  %21 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %22 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %24 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %25 = call i32 @wpa_group_sm_step(%struct.wpa_authenticator* %23, %struct.wpa_group* %24)
  br label %26

26:                                               ; preds = %19
  %27 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.wpa_group*, %struct.wpa_group** %6, align 8
  %34 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %33, i32 0, i32 2
  %35 = load %struct.wpa_group*, %struct.wpa_group** %34, align 8
  store %struct.wpa_group* %35, %struct.wpa_group** %6, align 8
  br label %12

36:                                               ; preds = %12
  %37 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %48 = call i32 @eloop_register_timeout(i64 %46, i32 0, void (i8*, i8*)* @wpa_rekey_gtk, %struct.wpa_authenticator* %47, i32* null)
  br label %49

49:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @wpa_group_sm_step(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @eloop_register_timeout(i64, i32, void (i8*, i8*)*, %struct.wpa_authenticator*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
