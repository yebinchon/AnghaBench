; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-plugin.c_chassis_plugin_load.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-plugin.c_chassis_plugin_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 (...)*, i32, i32, i64, i32 (...)*, i32, i32 }

@G_MODULE_BIND_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"loading module '%s' failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"plugin_init\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"module '%s' doesn't have a init-function: %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"init-function for module '%s' failed\00", align 1
@CHASSIS_PLUGIN_MAGIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [87 x i8] c"plugin '%s' doesn't match the current plugin interface (plugin is %lx, chassis is %lx)\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"plugin '%s' doesn't set a version number, refusing to load this plugin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @chassis_plugin_load(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32 (%struct.TYPE_6__*)*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = call %struct.TYPE_6__* (...) @chassis_plugin_new()
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @G_MODULE_BIND_LOCAL, align 4
  %9 = call i32 @g_module_open(i32* %7, i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (...) @g_module_error()
  %19 = call i32 (i8*, i32*, ...) @g_critical(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @chassis_plugin_free(%struct.TYPE_6__* %20)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %106

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = ptrtoint i32 (%struct.TYPE_6__*)** %4 to i32
  %27 = call i32 @g_module_symbol(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 (...) @g_module_error()
  %32 = call i32 (i8*, i32*, ...) @g_critical(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @chassis_plugin_free(%struct.TYPE_6__* %33)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %106

35:                                               ; preds = %22
  %36 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = call i32 %36(%struct.TYPE_6__* %37)
  %39 = icmp ne i32 0, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 (i8*, i32*, ...) @g_critical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call i32 @chassis_plugin_free(%struct.TYPE_6__* %43)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %106

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHASSIS_PLUGIN_MAGIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CHASSIS_PLUGIN_MAGIC, align 8
  %57 = call i32 (i8*, i32*, ...) @g_critical(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), i32* %52, i64 %55, i64 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = call i32 @chassis_plugin_free(%struct.TYPE_6__* %58)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %106

60:                                               ; preds = %45
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32 (...)*, i32 (...)** %62, align 8
  %64 = icmp ne i32 (...)* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  %68 = load i32 (...)*, i32 (...)** %67, align 8
  %69 = call i32 (...) %68()
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @g_strdup(i32* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 (i8*, i32*, ...) @g_critical(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = call i32 @chassis_plugin_free(%struct.TYPE_6__* %90)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %106

92:                                               ; preds = %82
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32 (...)*, i32 (...)** %94, align 8
  %96 = icmp ne i32 (...)* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32 (...)*, i32 (...)** %99, align 8
  %101 = call i32 (...) %100()
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %92
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %2, align 8
  br label %106

106:                                              ; preds = %104, %87, %51, %40, %29, %16
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %107
}

declare dso_local %struct.TYPE_6__* @chassis_plugin_new(...) #1

declare dso_local i32 @g_module_open(i32*, i32) #1

declare dso_local i32 @g_critical(i8*, i32*, ...) #1

declare dso_local i32 @g_module_error(...) #1

declare dso_local i32 @chassis_plugin_free(%struct.TYPE_6__*) #1

declare dso_local i32 @g_module_symbol(i32, i8*, i32) #1

declare dso_local i64 @g_strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
