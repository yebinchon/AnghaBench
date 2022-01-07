; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_setting_float_item.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_setting_float_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_push_dropdown_setting_float_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_push_dropdown_setting_float_item(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca float, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.TYPE_8__* @menu_setting_find_enum(i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @atof(i8* %19)
  %21 = sitofp i64 %20 to float
  store float %21, float* %14, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %44

25:                                               ; preds = %5
  %26 = load float, float* %14, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float %26, float* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_8__*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = call i32 %39(%struct.TYPE_8__* %40)
  br label %42

42:                                               ; preds = %36, %25
  %43 = call i32 @action_cancel_pop_default(i32* null, i32* null, i32 0, i32 0)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %24
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_8__* @menu_setting_find_enum(i32) #1

declare dso_local i64 @atof(i8*) #1

declare dso_local i32 @action_cancel_pop_default(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
