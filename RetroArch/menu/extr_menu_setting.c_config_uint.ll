; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_uint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ST_UI_TYPE_UINT_SPINBOX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__**, %struct.TYPE_14__*, i32*, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i8*, i32, i32)* @config_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_uint(%struct.TYPE_13__** %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_15__* %6, %struct.TYPE_15__* %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_13__**, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %30
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @msg_hash_to_str(i32 %32)
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @msg_hash_to_str(i32 %34)
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %20, align 8
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %22, align 4
  %47 = call i32 @setting_uint_setting(i32 %33, i32 %35, i32* %36, i32 %37, i32 %40, i32 %43, i8* %44, i32 %45, i32 %46, i32 0)
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.TYPE_13__* %31 to i8*
  %50 = bitcast %struct.TYPE_13__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32, i32* @ST_UI_TYPE_UINT_SPINBOX, align 4
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32 %51, i32* %60, align 4
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(%struct.TYPE_13__** %61, %struct.TYPE_14__* %62, i32 %63)
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(%struct.TYPE_13__** %65, %struct.TYPE_14__* %66, i32 %67)
  ret void
}

declare dso_local i32 @setting_uint_setting(i32, i32, i32*, i32, i32, i32, i8*, i32, i32, i32) #1

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
