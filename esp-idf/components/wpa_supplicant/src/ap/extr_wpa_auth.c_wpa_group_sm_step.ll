; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_sm_step.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_group_sm_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_authenticator = type { i32 }
%struct.wpa_group = type { i64, i64, i64, i64, i64 }

@WPA_GROUP_GTK_INIT = common dso_local global i64 0, align 8
@WPA_GROUP_SETKEYSDONE = common dso_local global i64 0, align 8
@WPA_GROUP_SETKEYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_authenticator*, %struct.wpa_group*)* @wpa_group_sm_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_group_sm_step(%struct.wpa_authenticator* %0, %struct.wpa_group* %1) #0 {
  %3 = alloca %struct.wpa_authenticator*, align 8
  %4 = alloca %struct.wpa_group*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %3, align 8
  store %struct.wpa_group* %1, %struct.wpa_group** %4, align 8
  %5 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %6 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %11 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %12 = call i32 @wpa_group_gtk_init(%struct.wpa_authenticator* %10, %struct.wpa_group* %11)
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPA_GROUP_GTK_INIT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %26 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %27 = call i32 @wpa_group_setkeysdone(%struct.wpa_authenticator* %25, %struct.wpa_group* %26)
  br label %71

28:                                               ; preds = %19, %13
  %29 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WPA_GROUP_SETKEYSDONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %41 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %42 = call i32 @wpa_group_setkeys(%struct.wpa_authenticator* %40, %struct.wpa_group* %41)
  br label %70

43:                                               ; preds = %34, %28
  %44 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WPA_GROUP_SETKEYS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %51 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %56 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %57 = call i32 @wpa_group_setkeysdone(%struct.wpa_authenticator* %55, %struct.wpa_group* %56)
  br label %68

58:                                               ; preds = %49
  %59 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_group, %struct.wpa_group* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %3, align 8
  %65 = load %struct.wpa_group*, %struct.wpa_group** %4, align 8
  %66 = call i32 @wpa_group_setkeys(%struct.wpa_authenticator* %64, %struct.wpa_group* %65)
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %43
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71, %9
  ret void
}

declare dso_local i32 @wpa_group_gtk_init(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_setkeysdone(%struct.wpa_authenticator*, %struct.wpa_group*) #1

declare dso_local i32 @wpa_group_setkeys(%struct.wpa_authenticator*, %struct.wpa_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
