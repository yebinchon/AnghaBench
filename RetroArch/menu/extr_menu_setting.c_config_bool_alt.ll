; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bool_alt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_config_bool_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SD_FLAG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_7__*, i32*, i8*, i8*, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i32, i32, i64)* @config_bool_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_bool_alt(i32** %0, %struct.TYPE_7__* %1, i32* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_8__* %8, %struct.TYPE_8__* %9, i8* %10, i32 %11, i32 %12, i64 %13) #0 {
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32** %0, i32*** %15, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %24, align 8
  store i8* %10, i8** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i64 %13, i64* %28, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* %21, align 4
  %34 = call i32 @msg_hash_to_str(i32 %33)
  %35 = load i32, i32* %22, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %25, align 8
  %44 = load i32, i32* %26, align 4
  %45 = load i32, i32* %27, align 4
  %46 = call i32 @setting_bool_setting(i8* %29, i8* %30, i32* %31, i32 %32, i32 %34, i32 %36, i32 %39, i32 %42, i8* %43, i32 %44, i32 %45, i32 1)
  %47 = load i32**, i32*** %15, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  store i32 %46, i32* %54, align 4
  %55 = load i64, i64* %28, align 8
  %56 = load i64, i64* @SD_FLAG_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %14
  %59 = load i32**, i32*** %15, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %61 = load i64, i64* %28, align 8
  %62 = call i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(i32** %59, %struct.TYPE_7__* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %14
  ret void
}

declare dso_local i32 @setting_bool_setting(i8*, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(i32**, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
