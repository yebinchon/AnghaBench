; ModuleID = '/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_print_cur_config.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/cinder/app/android/extr_android_native_app_glue.c_print_cur_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32 }

@.str = private unnamed_addr constant [151 x i8] c"Config: mcc=%d mnc=%d lang=%c%c cnt=%c%c orien=%d touch=%d dens=%d keys=%d nav=%d keysHid=%d navHid=%d sdk=%d size=%d long=%d modetype=%d modenight=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.android_app*)* @print_cur_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cur_config(%struct.android_app* %0) #0 {
  %2 = alloca %struct.android_app*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca [2 x i8], align 1
  store %struct.android_app* %0, %struct.android_app** %2, align 8
  %5 = load %struct.android_app*, %struct.android_app** %2, align 8
  %6 = getelementptr inbounds %struct.android_app, %struct.android_app* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %9 = call i32 @AConfiguration_getLanguage(i32 %7, i8* %8)
  %10 = load %struct.android_app*, %struct.android_app** %2, align 8
  %11 = getelementptr inbounds %struct.android_app, %struct.android_app* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %14 = call i32 @AConfiguration_getCountry(i32 %12, i8* %13)
  %15 = load %struct.android_app*, %struct.android_app** %2, align 8
  %16 = getelementptr inbounds %struct.android_app, %struct.android_app* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AConfiguration_getMcc(i32 %17)
  %19 = load %struct.android_app*, %struct.android_app** %2, align 8
  %20 = getelementptr inbounds %struct.android_app, %struct.android_app* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AConfiguration_getMnc(i32 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.android_app*, %struct.android_app** %2, align 8
  %32 = getelementptr inbounds %struct.android_app, %struct.android_app* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AConfiguration_getOrientation(i32 %33)
  %35 = load %struct.android_app*, %struct.android_app** %2, align 8
  %36 = getelementptr inbounds %struct.android_app, %struct.android_app* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AConfiguration_getTouchscreen(i32 %37)
  %39 = load %struct.android_app*, %struct.android_app** %2, align 8
  %40 = getelementptr inbounds %struct.android_app, %struct.android_app* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AConfiguration_getDensity(i32 %41)
  %43 = load %struct.android_app*, %struct.android_app** %2, align 8
  %44 = getelementptr inbounds %struct.android_app, %struct.android_app* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AConfiguration_getKeyboard(i32 %45)
  %47 = load %struct.android_app*, %struct.android_app** %2, align 8
  %48 = getelementptr inbounds %struct.android_app, %struct.android_app* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AConfiguration_getNavigation(i32 %49)
  %51 = load %struct.android_app*, %struct.android_app** %2, align 8
  %52 = getelementptr inbounds %struct.android_app, %struct.android_app* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AConfiguration_getKeysHidden(i32 %53)
  %55 = load %struct.android_app*, %struct.android_app** %2, align 8
  %56 = getelementptr inbounds %struct.android_app, %struct.android_app* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AConfiguration_getNavHidden(i32 %57)
  %59 = load %struct.android_app*, %struct.android_app** %2, align 8
  %60 = getelementptr inbounds %struct.android_app, %struct.android_app* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @AConfiguration_getSdkVersion(i32 %61)
  %63 = load %struct.android_app*, %struct.android_app** %2, align 8
  %64 = getelementptr inbounds %struct.android_app, %struct.android_app* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @AConfiguration_getScreenSize(i32 %65)
  %67 = load %struct.android_app*, %struct.android_app** %2, align 8
  %68 = getelementptr inbounds %struct.android_app, %struct.android_app* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @AConfiguration_getScreenLong(i32 %69)
  %71 = load %struct.android_app*, %struct.android_app** %2, align 8
  %72 = getelementptr inbounds %struct.android_app, %struct.android_app* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @AConfiguration_getUiModeType(i32 %73)
  %75 = load %struct.android_app*, %struct.android_app** %2, align 8
  %76 = getelementptr inbounds %struct.android_app, %struct.android_app* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @AConfiguration_getUiModeNight(i32 %77)
  %79 = call i32 @LOGV(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i8 signext %24, i8 signext %26, i8 signext %28, i8 signext %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74, i32 %78)
  ret void
}

declare dso_local i32 @AConfiguration_getLanguage(i32, i8*) #1

declare dso_local i32 @AConfiguration_getCountry(i32, i8*) #1

declare dso_local i32 @LOGV(i8*, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AConfiguration_getMcc(i32) #1

declare dso_local i32 @AConfiguration_getMnc(i32) #1

declare dso_local i32 @AConfiguration_getOrientation(i32) #1

declare dso_local i32 @AConfiguration_getTouchscreen(i32) #1

declare dso_local i32 @AConfiguration_getDensity(i32) #1

declare dso_local i32 @AConfiguration_getKeyboard(i32) #1

declare dso_local i32 @AConfiguration_getNavigation(i32) #1

declare dso_local i32 @AConfiguration_getKeysHidden(i32) #1

declare dso_local i32 @AConfiguration_getNavHidden(i32) #1

declare dso_local i32 @AConfiguration_getSdkVersion(i32) #1

declare dso_local i32 @AConfiguration_getScreenSize(i32) #1

declare dso_local i32 @AConfiguration_getScreenLong(i32) #1

declare dso_local i32 @AConfiguration_getUiModeType(i32) #1

declare dso_local i32 @AConfiguration_getUiModeNight(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
