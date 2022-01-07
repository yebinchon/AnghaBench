; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ST_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ST_UI_TYPE_FILE_SELECTOR = common dso_local global i32 0, align 4
@SD_FLAG_ALLOW_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, %struct.TYPE_16__*, i8*, i64, i32, i32, i8*, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i32, i32)* @config_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_path(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_17__* %7, %struct.TYPE_17__* %8, i8* %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_15__**, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca %struct.TYPE_17__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %13, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 %32
  %34 = load i32, i32* @ST_PATH, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = load i32, i32* %18, align 4
  %38 = call i32 @msg_hash_to_str(i32 %37)
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %19, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %22, align 8
  %50 = load i32, i32* %23, align 4
  %51 = load i32, i32* %24, align 4
  %52 = call i32 @setting_string_setting(i32 %34, i32 %36, i32 %38, i8* %39, i32 %41, i8* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i8* %49, i32 %50, i32 %51, i32 0)
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = bitcast %struct.TYPE_15__* %33 to i8*
  %55 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load i32, i32* @ST_UI_TYPE_FILE_SELECTOR, align 4
  %57 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  store i32 %56, i32* %65, align 4
  %66 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %68 = load i32, i32* @SD_FLAG_ALLOW_EMPTY, align 4
  %69 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(%struct.TYPE_15__** %66, %struct.TYPE_16__* %67, i32 %68)
  %70 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__** %70, %struct.TYPE_16__* %71, i32 %72)
  %74 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %13, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__** %74, %struct.TYPE_16__* %75, i32 %76)
  ret void
}

declare dso_local i32 @setting_string_setting(i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32) #1

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
