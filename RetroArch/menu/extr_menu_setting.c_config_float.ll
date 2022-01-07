; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ST_UI_TYPE_FLOAT_SPINBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__**, %struct.TYPE_14__*, float*, i32, i32, float, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, i8*, i32, i32)* @config_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_float(%struct.TYPE_13__** %0, %struct.TYPE_14__* %1, float* %2, i32 %3, i32 %4, float %5, i8* %6, %struct.TYPE_15__* %7, %struct.TYPE_15__* %8, i8* %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_13__**, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %13, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %14, align 8
  store float* %2, float** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store float %5, float* %18, align 4
  store i8* %6, i8** %19, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %32
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @msg_hash_to_str(i32 %34)
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @msg_hash_to_str(i32 %36)
  %38 = load float*, float** %15, align 8
  %39 = load float, float* %18, align 4
  %40 = load i8*, i8** %19, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %22, align 8
  %48 = load i32, i32* %23, align 4
  %49 = load i32, i32* %24, align 4
  %50 = call i32 @setting_float_setting(i32 %35, i32 %37, float* %38, float %39, i8* %40, i32 %43, i32 %46, i8* %47, i32 %48, i32 %49, i32 0)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.TYPE_13__* %33 to i8*
  %53 = bitcast %struct.TYPE_13__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load i32, i32* @ST_UI_TYPE_FLOAT_SPINBOX, align 4
  %55 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 %54, i32* %63, align 4
  %64 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_13__** %64, %struct.TYPE_14__* %65, i32 %66)
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %13, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_13__** %68, %struct.TYPE_14__* %69, i32 %70)
  ret void
}

declare dso_local i32 @setting_float_setting(i32, i32, float*, float, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_13__**, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_13__**, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
