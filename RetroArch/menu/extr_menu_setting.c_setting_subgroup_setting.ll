; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_subgroup_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_subgroup_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8*, double, double, float, i32, i32, i32, %struct.TYPE_4__, i32*, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i32*, i32*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@setting_get_string_representation_default = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i32 0, align 4
@CMD_EVENT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*, i8*, i8*, i32)* @setting_subgroup_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_subgroup_setting(%struct.TYPE_5__* noalias sret %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 %5, i32* %11, align 4
  %12 = load i32, i32* @MSG_UNKNOWN, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 34
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 33
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 32
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 31
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 30
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 29
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 28
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 5
  store double 0.000000e+00, double* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 6
  store double 0.000000e+00, double* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 27
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 26
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 25
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 24
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 23
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 22
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 21
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 20
  store i32* null, i32** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 19
  store i32* null, i32** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 18
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 17
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 16
  store i32* null, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 15
  store i32* @setting_get_string_representation_default, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 14
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @ST_NONE, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 13
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 7
  store float 0.000000e+00, float* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 12
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 8
  store i32 0, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 9
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* @CMD_EVENT_NONE, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 10
  store i32 %57, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
