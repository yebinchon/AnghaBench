; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_send_ok_full.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_send_ok_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_con_send_ok_full(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = call i32* @g_string_new(i32* null)
  store i32* %13, i32** %11, align 8
  %14 = call %struct.TYPE_10__* (...) @network_mysqld_ok_packet_new()
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = call i32 @network_mysqld_proto_append_ok_packet(i32* %27, %struct.TYPE_10__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @S(i32* %34)
  %36 = call i32 @network_mysqld_queue_append(%struct.TYPE_9__* %30, i32 %33, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = call i32 @network_mysqld_queue_reset(%struct.TYPE_9__* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @g_string_free(i32* %39, i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %43 = call i32 @network_mysqld_ok_packet_free(%struct.TYPE_10__* %42)
  ret i32 0
}

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local %struct.TYPE_10__* @network_mysqld_ok_packet_new(...) #1

declare dso_local i32 @network_mysqld_proto_append_ok_packet(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @network_mysqld_queue_append(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @S(i32*) #1

declare dso_local i32 @network_mysqld_queue_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

declare dso_local i32 @network_mysqld_ok_packet_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
