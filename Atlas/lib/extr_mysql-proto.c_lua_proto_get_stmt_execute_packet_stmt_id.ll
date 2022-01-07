; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_stmt_execute_packet_stmt_id.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_stmt_execute_packet_stmt_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [66 x i8] c"%s: network_mysqld_proto_get_stmt_execute_packet_stmt_id() failed\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_proto_get_stmt_execute_packet_stmt_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_proto_get_stmt_execute_packet_stmt_id(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = call i64 @network_mysqld_proto_get_stmt_execute_packet_stmt_id(%struct.TYPE_4__* %6, i32* %9)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i1 [ true, %1 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @G_STRLOC, align 4
  %31 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %36

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @lua_pushinteger(i32* %33, i32 %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @network_mysqld_proto_get_stmt_execute_packet_stmt_id(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
