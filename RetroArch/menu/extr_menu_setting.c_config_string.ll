; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ST_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_8__*, i8*, i64, i32, i32, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*, i8*, i32, i32)* @config_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_string(i32** %0, %struct.TYPE_8__* %1, i8* %2, i64 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_9__* %7, %struct.TYPE_9__* %8, i8* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32** %0, i32*** %13, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %14, align 8
  store i8* %2, i8** %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load i32, i32* @ST_STRING, align 4
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @msg_hash_to_str(i32 %26)
  %28 = load i32, i32* %18, align 4
  %29 = call i32 @msg_hash_to_str(i32 %28)
  %30 = load i8*, i8** %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i8*, i8** %19, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %22, align 8
  %41 = load i32, i32* %23, align 4
  %42 = load i32, i32* %24, align 4
  %43 = call i32 @setting_string_setting(i32 %25, i32 %27, i32 %29, i8* %30, i32 %32, i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i8* %40, i32 %41, i32 %42, i32 0)
  %44 = load i32**, i32*** %13, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32 %43, i32* %51, align 4
  %52 = load i32**, i32*** %13, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(i32** %52, %struct.TYPE_8__* %53, i32 %54)
  %56 = load i32**, i32*** %13, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(i32** %56, %struct.TYPE_8__* %57, i32 %58)
  ret void
}

declare dso_local i32 @setting_string_setting(i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(i32**, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(i32**, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
