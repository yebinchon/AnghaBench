; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_sm_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_auth_sm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { i32, i32, i32, i8*, i64, i8*, i8*, i8*, %struct.TYPE_2__*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WPA state machine had not been started - initialize now\00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_sm_event(%struct.wpa_state_machine* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_state_machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %8 = icmp eq %struct.wpa_state_machine* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %83

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %64 [
    i32 132, label %12
    i32 134, label %12
    i32 131, label %13
    i32 130, label %13
    i32 129, label %17
    i32 128, label %17
    i32 133, label %63
  ]

12:                                               ; preds = %10, %10
  br label %64

13:                                               ; preds = %10, %10
  %14 = load i8*, i8** @TRUE, align 8
  %15 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %15, i32 0, i32 11
  store i8* %14, i8** %16, align 8
  br label %64

17:                                               ; preds = %10, %10
  %18 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %31 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %83

34:                                               ; preds = %22
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %37 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %36, i32 0, i32 10
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @TRUE, align 8
  %39 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %39, i32 0, i32 9
  store i8* %38, i8** %40, align 8
  br label %64

41:                                               ; preds = %17
  %42 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %42, i32 0, i32 7
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %48 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %47, i32 0, i32 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %55 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %54, i32 0, i32 7
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %46, %41
  %60 = load i8*, i8** @TRUE, align 8
  %61 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %62 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %64

63:                                               ; preds = %10
  br label %64

64:                                               ; preds = %10, %63, %59, %34, %13, %12
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i8*, i8** @FALSE, align 8
  %69 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %72 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %71, i32 0, i32 2
  %73 = call i32 @memset(i32* %72, i32 0, i32 4)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %78 = call i32 @wpa_remove_ptk(%struct.wpa_state_machine* %77)
  br label %79

79:                                               ; preds = %76, %67
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %82 = call i32 @wpa_sm_step(%struct.wpa_state_machine* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %33, %9
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_step(%struct.wpa_state_machine*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wpa_remove_ptk(%struct.wpa_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
