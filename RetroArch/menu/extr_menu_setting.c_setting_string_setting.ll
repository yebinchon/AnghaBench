; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_string_setting.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_string_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, double, double, i32, float, i32, i32, i32, i32*, i32*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i8*, i64, i64, i64, i64, i64, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@setting_get_string_representation_st_string = common dso_local global i32 0, align 4
@ST_NONE = common dso_local global i32 0, align 4
@CMD_EVENT_NONE = common dso_local global i32 0, align 4
@setting_string_action_start_generic = common dso_local global i8* null, align 8
@setting_get_string_representation_st_dir = common dso_local global i32 0, align 4
@setting_get_string_representation_st_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32)* @setting_string_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_string_setting(%struct.TYPE_13__* noalias sret %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i32 %1, i32* %15, align 4
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  store i8* %12, i8** %26, align 8
  store i32 %13, i32* %27, align 4
  %28 = load i32, i32* @MSG_UNKNOWN, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 37
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %15, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %19, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %23, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** %24, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 6
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 36
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 35
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 34
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 33
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 7
  store double 0.000000e+00, double* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 8
  store double 0.000000e+00, double* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 32
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 31
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** %25, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 30
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %26, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 29
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 28
  store i32* null, i32** %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 27
  store i32* null, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 26
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 25
  store i32* null, i32** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 24
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 23
  store i32* null, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 22
  store i32* null, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  store i32* @setting_get_string_representation_st_string, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 21
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @ST_NONE, align 4
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 10
  store float 0.000000e+00, float* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 20
  store i32* null, i32** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 11
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 12
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 19
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 18
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 17
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @CMD_EVENT_NONE, align 4
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 16
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i32, i32* %15, align 4
  switch i32 %87, label %100 [
    i32 129, label %88
    i32 128, label %94
  ]

88:                                               ; preds = %14
  %89 = load i8*, i8** @setting_string_action_start_generic, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  store i32* %90, i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  store i32 129, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  store i32* @setting_get_string_representation_st_dir, i32** %93, align 8
  br label %101

94:                                               ; preds = %14
  %95 = load i8*, i8** @setting_string_action_start_generic, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 15
  store i32* %96, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 9
  store i32 128, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 14
  store i32* @setting_get_string_representation_st_path, i32** %99, align 8
  br label %101

100:                                              ; preds = %14
  br label %101

101:                                              ; preds = %100, %94, %88
  %102 = load i32, i32* %27, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %0, i32 0, i32 13
  store i32 %102, i32* %103, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
