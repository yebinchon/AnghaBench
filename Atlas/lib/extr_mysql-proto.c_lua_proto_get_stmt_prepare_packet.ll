; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_stmt_prepare_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_stmt_prepare_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [58 x i8] c"%s: network_mysqld_proto_get_stmt_prepare_packet() failed\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@stmt_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_proto_get_stmt_prepare_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_proto_get_stmt_prepare_packet(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = call i32* (...) @network_mysqld_stmt_prepare_packet_new()
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @network_mysqld_proto_get_stmt_prepare_packet(%struct.TYPE_4__* %7, i32* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %1
  %26 = phi i1 [ true, %1 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @network_mysqld_stmt_prepare_packet_free(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @G_STRLOC, align 4
  %35 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_newtable(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @stmt_text, align 4
  %41 = call i32 @LUA_EXPORT_STR(i32* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @network_mysqld_stmt_prepare_packet_free(i32* %42)
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %30
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32* @network_mysqld_stmt_prepare_packet_new(...) #1

declare dso_local i64 @network_mysqld_proto_get_stmt_prepare_packet(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @network_mysqld_stmt_prepare_packet_free(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @LUA_EXPORT_STR(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
