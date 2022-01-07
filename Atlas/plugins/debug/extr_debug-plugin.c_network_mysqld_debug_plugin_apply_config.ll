; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_network_mysqld_debug_plugin_apply_config.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_network_mysqld_debug_plugin_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c":4043\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@network_mysqld_con_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @network_mysqld_debug_plugin_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_debug_plugin_apply_config(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @g_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = call %struct.TYPE_15__* (...) @network_mysqld_con_new()
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = call i32 @network_mysqld_add_connection(%struct.TYPE_17__* %18, %struct.TYPE_15__* %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %26, align 8
  %27 = call %struct.TYPE_14__* (...) @network_socket_new()
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %7, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = call i32 @network_mysqld_server_connection_init(%struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @network_address_set_address(i32 %35, i32 %38)
  %40 = icmp ne i64 0, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %68

42:                                               ; preds = %16
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = call i64 @network_socket_bind(%struct.TYPE_14__* %43)
  %45 = icmp ne i64 0, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %68

47:                                               ; preds = %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EV_READ, align 4
  %54 = load i32, i32* @EV_PERSIST, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @network_mysqld_con_accept, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @event_set(i32* %49, i32 %52, i32 %55, i32 %56, %struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = call i32 @event_base_set(i32 %61, i32* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = call i32 @event_add(i32* %66, i32* null)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %47, %46, %41
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local %struct.TYPE_15__* @network_mysqld_con_new(...) #1

declare dso_local i32 @network_mysqld_add_connection(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @network_socket_new(...) #1

declare dso_local i32 @network_mysqld_server_connection_init(%struct.TYPE_15__*) #1

declare dso_local i64 @network_address_set_address(i32, i32) #1

declare dso_local i64 @network_socket_bind(%struct.TYPE_14__*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @event_base_set(i32, i32*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
