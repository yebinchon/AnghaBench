; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bool.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ST_UI_TYPE_CHECKBOX = common dso_local global i32 0, align 4
@SD_FLAG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__**, %struct.TYPE_16__*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i32, i32, i64)* @config_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_bool(%struct.TYPE_15__** %0, %struct.TYPE_16__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_17__* %8, %struct.TYPE_17__* %9, i8* %10, i32 %11, i32 %12, i64 %13) #0 {
  %15 = alloca %struct.TYPE_15__**, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %15, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store %struct.TYPE_17__* %8, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %24, align 8
  store i8* %10, i8** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i64 %13, i64* %28, align 8
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 %36
  %38 = load i32, i32* %18, align 4
  %39 = call i32 @msg_hash_to_str(i32 %38)
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @msg_hash_to_str(i32 %40)
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @msg_hash_to_str(i32 %44)
  %46 = load i32, i32* %22, align 4
  %47 = call i32 @msg_hash_to_str(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %25, align 8
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %27, align 4
  %57 = call i32 @setting_bool_setting(i32 %39, i32 %41, i32* %42, i32 %43, i32 %45, i32 %47, i32 %50, i32 %53, i8* %54, i32 %55, i32 %56, i32 0)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = bitcast %struct.TYPE_15__* %37 to i8*
  %60 = bitcast %struct.TYPE_15__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  %61 = load i32, i32* @ST_UI_TYPE_CHECKBOX, align 4
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 %61, i32* %70, align 4
  %71 = load i64, i64* %28, align 8
  %72 = load i64, i64* @SD_FLAG_NONE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %14
  %75 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %77 = load i64, i64* %28, align 8
  %78 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(%struct.TYPE_15__** %75, %struct.TYPE_16__* %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %14
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__** %80, %struct.TYPE_16__* %81, i32 %82)
  %84 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__** %84, %struct.TYPE_16__* %85, i32 %86)
  ret void
}

declare dso_local i32 @setting_bool_setting(i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(%struct.TYPE_15__**, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_15__**, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
