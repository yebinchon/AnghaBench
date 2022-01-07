; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_get_string_representation_bind_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_get_string_representation_bind_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"%s (#%u)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s (%s #%u)\00", align 1
@MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PORT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i64)* @get_string_representation_bind_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_string_representation_bind_device(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 (...) @input_config_get_device_count()
  store i32 %13, i32* %9, align 4
  %14 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @input_config_get_device_display_name(i32 %34)
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @input_config_get_device_display_name(i32 %38)
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @input_config_get_device_name(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i8* [ %39, %37 ], [ %42, %40 ]
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @string_is_empty(i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @input_autoconfigure_get_device_name_index(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  br label %64

59:                                               ; preds = %48
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @strlcpy(i8* %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %53
  br label %74

65:                                               ; preds = %43
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE, align 4
  %69 = call i8* @msg_hash_to_str(i32 %68)
  %70 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PORT, align 4
  %71 = call i8* @msg_hash_to_str(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %64
  br label %81

75:                                               ; preds = %18
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DISABLED, align 4
  %78 = call i8* @msg_hash_to_str(i32 %77)
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @strlcpy(i8* %76, i8* %78, i64 %79)
  br label %81

81:                                               ; preds = %17, %75, %74
  ret void
}

declare dso_local i32 @input_config_get_device_count(...) #1

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i8* @input_config_get_device_display_name(i32) #1

declare dso_local i8* @input_config_get_device_name(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @input_autoconfigure_get_device_name_index(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
