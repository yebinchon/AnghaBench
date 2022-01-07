; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_mysql-proxy-cli.c_chassis_frontend_set_chassis_options.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_mysql-proxy-cli.c_chassis_frontend_set_chassis_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"verbose-shutdown\00", align 1
@G_OPTION_ARG_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Always log the exit code when shutting down\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Start in daemon-mode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@G_OPTION_ARG_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Run mysql-proxy as user\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"<user>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"basedir\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Base directory to prepend to relative paths in the config\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"<absolute path>\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"plugin-dir\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"path to the plugins\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"<path>\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"plugins\00", align 1
@G_OPTION_ARG_STRING_ARRAY = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"plugins to load\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"log-level\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"log all messages of level ... or higher\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"(error|warning|info|message|debug)\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"log-path\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"log all messages in a path\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"log-use-syslog\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"log all messages to syslog\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"log-backtrace-on-crash\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"try to invoke debugger on crash\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"keepalive\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"try to restart the proxy if it crashed\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"max-open-files\00", align 1
@G_OPTION_ARG_INT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"maximum number of open files (ulimit -n)\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"event-threads\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"number of event-handling threads (default: 1)\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"lua-path\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"set the LUA_PATH\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"lua-cpath\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"set the LUA_CPATH\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"instance name\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"wait-timeout\00", align 1
@.str.39 = private unnamed_addr constant [99 x i8] c"the number of seconds which Atlas waits for activity on a connection before closing it (default:0)\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"max_conn_for_a_backend\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"max conn for a backend(default: 0)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chassis_frontend_set_chassis_options(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* @G_OPTION_ARG_NONE, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 17
  %9 = call i32 @chassis_options_add(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %6, i32* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @G_OPTION_ARG_NONE, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 16
  %14 = call i32 @chassis_options_add(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 %11, i32* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 15
  %19 = call i32 @chassis_options_add(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 %16, i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 14
  %24 = call i32 @chassis_options_add(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 %21, i32* %23, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 13
  %29 = call i32 @chassis_options_add(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 %26, i32* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @G_OPTION_ARG_STRING_ARRAY, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 12
  %34 = call i32 @chassis_options_add(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 0, i32 %31, i32* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 11
  %39 = call i32 @chassis_options_add(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0, i32 %36, i32* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 10
  %44 = call i32 @chassis_options_add(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 0, i32 0, i32 %41, i32* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @G_OPTION_ARG_NONE, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 9
  %49 = call i32 @chassis_options_add(i32* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 0, i32 %46, i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* null)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @G_OPTION_ARG_NONE, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 8
  %54 = call i32 @chassis_options_add(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 0, i32 0, i32 %51, i32* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i8* null)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @G_OPTION_ARG_NONE, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 7
  %59 = call i32 @chassis_options_add(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i32 0, i32 0, i32 %56, i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i8* null)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @G_OPTION_ARG_INT, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = call i32 @chassis_options_add(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 0, i32 0, i32 %61, i32* %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i8* null)
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @G_OPTION_ARG_INT, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = call i32 @chassis_options_add(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 0, i32 0, i32 %66, i32* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0), i8* null)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = call i32 @chassis_options_add(i32* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 0, i32 0, i32 %71, i32* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = call i32 @chassis_options_add(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i32 0, i32 0, i32 %76, i32* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @G_OPTION_ARG_STRING, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = call i32 @chassis_options_add(i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32 0, i32 0, i32 %81, i32* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @G_OPTION_ARG_INT, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @chassis_options_add(i32* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0), i32 0, i32 0, i32 %86, i32* %88, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.39, i64 0, i64 0), i8* null)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @G_OPTION_ARG_INT, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @chassis_options_add(i32* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 0, i32 0, i32 %91, i32* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i8* null)
  ret i32 0
}

declare dso_local i32 @chassis_options_add(i32*, i8*, i32, i32, i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
