; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/admin/extr_admin-plugin.c_network_mysqld_admin_plugin_apply_config.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/admin/extr_admin-plugin.c_network_mysqld_admin_plugin_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"%s: Failed to get bind address, please set by --admin-address=<host:port>\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: --admin-username needs to be set\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: --admin-password needs to be set\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s/lib/mysql-proxy/lua/admin.lua\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@network_mysqld_admin_con_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @network_mysqld_admin_plugin_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_admin_plugin_apply_config(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
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
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @G_STRLOC, align 4
  %14 = call i32 @g_critical(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %3, align 4
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @G_STRLOC, align 4
  %22 = call i32 @g_critical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %3, align 4
  br label %95

23:                                               ; preds = %15
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @G_STRLOC, align 4
  %30 = call i32 @g_critical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %95

31:                                               ; preds = %23
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @g_strdup_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = call %struct.TYPE_15__* (...) @network_mysqld_con_new()
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i32 @network_mysqld_add_connection(%struct.TYPE_17__* %45, %struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %53, align 8
  %54 = call %struct.TYPE_14__* (...) @network_socket_new()
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %7, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = call i32 @network_mysqld_server_connection_init(%struct.TYPE_15__* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @network_address_set_address(i32 %62, i32 %65)
  %67 = icmp ne i64 0, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %95

69:                                               ; preds = %43
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = call i64 @network_socket_bind(%struct.TYPE_14__* %70)
  %72 = icmp ne i64 0, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %95

74:                                               ; preds = %69
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EV_READ, align 4
  %81 = load i32, i32* @EV_PERSIST, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @network_mysqld_admin_con_accept, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = call i32 @event_set(i32* %76, i32 %79, i32 %82, i32 %83, %struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = call i32 @event_base_set(i32 %88, i32* %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = call i32 @event_add(i32* %93, i32* null)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %74, %73, %68, %28, %20, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @g_critical(i8*, i32) #1

declare dso_local i64 @g_strdup_printf(i8*, i32) #1

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
