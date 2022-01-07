; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_presets_add_config_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_presets.c_presets_add_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@G_FILE_TEST_IS_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s/presets.%d.%d.%d.json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @presets_add_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @presets_add_config_file(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %14 = call i32* @ghb_get_user_config_dir(i32* null)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32* (i8*, i32*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @g_free(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @G_FILE_TEST_IS_REGULAR, align 4
  %23 = call i32 @g_file_test(i32* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @hb_presets_read_file(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @g_free(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @hb_presets_version(i32* %34, i32* %10, i32* %11, i32* %12)
  %36 = call i32 @hb_presets_current_version(i32* %7, i32* %8, i32* %9)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = call i32* @ghb_get_user_config_dir(i32* null)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32* (i8*, i32*, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32 %43, i32 %44, i32 %45)
  store i32* %46, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @hb_value_write_json(i32* %47, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @g_free(i32* %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @g_free(i32* %52)
  br label %54

54:                                               ; preds = %40, %33
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @hb_value_free(i32** %6)
  store i32 -2, i32* %2, align 4
  br label %83

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @hb_presets_import(i32* %61, i32** %13)
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @hb_presets_add(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %68, %60
  %77 = call i32 (...) @hb_presets_builtin_update()
  %78 = call i32 (...) @store_presets()
  br label %79

79:                                               ; preds = %76, %72
  %80 = call i32 @hb_value_free(i32** %13)
  %81 = call i32 @hb_value_free(i32** %6)
  store i32 0, i32* %2, align 4
  br label %83

82:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %79, %58, %25
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32* @ghb_get_user_config_dir(i32*) #1

declare dso_local i32* @g_strdup_printf(i8*, i32*, i32, ...) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_file_test(i32*, i32) #1

declare dso_local i32* @hb_presets_read_file(i32*) #1

declare dso_local i32 @hb_presets_version(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @hb_presets_current_version(i32*, i32*, i32*) #1

declare dso_local i32 @hb_value_write_json(i32*, i32*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_presets_import(i32*, i32**) #1

declare dso_local i32 @hb_presets_add(i32*) #1

declare dso_local i32 @hb_presets_builtin_update(...) #1

declare dso_local i32 @store_presets(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
