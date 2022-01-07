; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_string_options.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_string_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ST_STRING_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST_UI_TYPE_STRING_COMBOBOX = common dso_local global i32 0, align 4
@SD_FREE_FLAG_VALUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, %struct.TYPE_16__*, i8*, i64, i32, i32, i8*, i8*, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i32, i32)* @config_string_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_string_options(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, i8* %7, %struct.TYPE_17__* %8, %struct.TYPE_17__* %9, i8* %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.TYPE_15__**, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %14, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %15, align 8
  store i8* %2, i8** %16, align 8
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %23, align 8
  store i8* %10, i8** %24, align 8
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 %34
  %36 = load i32, i32* @ST_STRING_OPTIONS, align 4
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @msg_hash_to_str(i32 %37)
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @msg_hash_to_str(i32 %39)
  %41 = load i8*, i8** %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %20, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %24, align 8
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %26, align 4
  %55 = call i32 @setting_string_setting_options(i32 %36, i32 %38, i32 %40, i8* %41, i32 %43, i8* %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48, i32 %51, i8* %52, i32 %53, i32 %54, i32 0)
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = bitcast %struct.TYPE_15__* %35 to i8*
  %58 = bitcast %struct.TYPE_15__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load i32, i32* @ST_UI_TYPE_STRING_COMBOBOX, align 4
  %60 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %59, i32* %68, align 4
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__** %69, %struct.TYPE_16__* %70, i32 %71)
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__** %73, %struct.TYPE_16__* %74, i32 %75)
  %77 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %79 = load i32, i32* @SD_FREE_FLAG_VALUES, align 4
  %80 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(%struct.TYPE_15__** %77, %struct.TYPE_16__* %78, i32 %79)
  ret void
}

declare dso_local i32 @setting_string_setting_options(i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
