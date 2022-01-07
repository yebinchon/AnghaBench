; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_dir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ST_DIR = common dso_local global i32 0, align 4
@ST_UI_TYPE_DIRECTORY_SELECTOR = common dso_local global i32 0, align 4
@SD_FLAG_ALLOW_EMPTY = common dso_local global i32 0, align 4
@SD_FLAG_PATH_DIR = common dso_local global i32 0, align 4
@SD_FLAG_BROWSER_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, %struct.TYPE_16__*, i8*, i64, i32, i32, i8*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i32, i32)* @config_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_dir(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, i32 %7, %struct.TYPE_17__* %8, %struct.TYPE_17__* %9, i8* %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.TYPE_15__**, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
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
  store i32 %7, i32* %21, align 4
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
  %36 = load i32, i32* @ST_DIR, align 4
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @msg_hash_to_str(i32 %37)
  %39 = load i32, i32* %19, align 4
  %40 = call i32 @msg_hash_to_str(i32 %39)
  %41 = load i8*, i8** %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %20, align 8
  %45 = load i32, i32* %21, align 4
  %46 = call i32 @msg_hash_to_str(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %24, align 8
  %54 = load i32, i32* %25, align 4
  %55 = load i32, i32* %26, align 4
  %56 = call i32 @setting_string_setting(i32 %36, i32 %38, i32 %40, i8* %41, i32 %43, i8* %44, i32 %46, i32 %49, i32 %52, i8* %53, i32 %54, i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = bitcast %struct.TYPE_15__* %35 to i8*
  %59 = bitcast %struct.TYPE_15__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load i32, i32* @ST_UI_TYPE_DIRECTORY_SELECTOR, align 4
  %61 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %60, i32* %69, align 4
  %70 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = load i32, i32* @SD_FLAG_ALLOW_EMPTY, align 4
  %73 = load i32, i32* @SD_FLAG_PATH_DIR, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SD_FLAG_BROWSER_ACTION, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(%struct.TYPE_15__** %70, %struct.TYPE_16__* %71, i32 %76)
  %78 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__** %78, %struct.TYPE_16__* %79, i32 %80)
  %82 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %14, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__** %82, %struct.TYPE_16__* %83, i32 %84)
  ret void
}

declare dso_local i32 @setting_string_setting(i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
