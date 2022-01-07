; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_float_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_float_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i8*, i8*, i8*, i8*, i8*, double, double, float, i8*, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32, i64, i32*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i8*, i8*, i64, i64, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { float }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float* }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@ST_FLOAT = common dso_local global i32 0, align 4
@setting_generic_action_start_default = common dso_local global i32 0, align 4
@setting_fraction_action_left_default = common dso_local global i32 0, align 4
@setting_fraction_action_right_default = common dso_local global i32 0, align 4
@setting_generic_action_ok_default = common dso_local global i8* null, align 8
@setting_get_string_representation_st_float = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i32 0, align 4
@CMD_EVENT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i8*, float*, float, i8*, i8*, i8*, i8*, i8*, i8*, i32)* @setting_float_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_float_setting(%struct.TYPE_13__* noalias sret %0, i8* %1, i8* %2, float* %3, float %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store float* %3, float** %15, align 8
  store float %4, float* %16, align 4
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  store i32 %11, i32* %23, align 4
  %24 = load i32, i32* @MSG_UNKNOWN, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 37
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ST_FLOAT, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 36
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  store i32 4, i32* %28, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 35
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 34
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 33
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 32
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  store double 0.000000e+00, double* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  store double 0.000000e+00, double* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 31
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 30
  store i64 0, i64* %46, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 29
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %22, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 28
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @setting_generic_action_start_default, align 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 27
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @setting_fraction_action_left_default, align 4
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 26
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @setting_fraction_action_right_default, align 4
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 25
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 24
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 23
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 22
  store i32* null, i32** %59, align 8
  %60 = load i8*, i8** @setting_generic_action_ok_default, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 21
  store i8* %60, i8** %61, align 8
  %62 = load i8*, i8** @setting_generic_action_ok_default, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 20
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 19
  store i32* @setting_get_string_representation_st_float, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 18
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @ST_NONE, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 17
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 8
  store float 0.000000e+00, float* %68, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 10
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 11
  store i32 0, i32* %72, align 4
  %73 = load float*, float** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store float* %73, float** %76, align 8
  %77 = load float*, float** %15, align 8
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store float %78, float* %80, align 8
  %81 = load float, float* %16, align 4
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store float %81, float* %83, align 4
  %84 = load i32, i32* @CMD_EVENT_NONE, align 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 13
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 13
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %23, align 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  store i32 %89, i32* %90, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
