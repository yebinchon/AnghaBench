; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_proxy_connection_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_proxy_connection_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"default_db\00", align 1
@.str.1 = private unnamed_addr constant [128 x i8] c"proxy.connection.default_db is deprecated, use proxy.connection.client.default_db or proxy.connection.server.default_db instead\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"thread_id\00", align 1
@.str.3 = private unnamed_addr constant [88 x i8] c"proxy.connection.thread_id is deprecated, use proxy.connection.server.thread_id instead\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"mysqld_version\00", align 1
@.str.5 = private unnamed_addr constant [98 x i8] c"proxy.connection.mysqld_version is deprecated, use proxy.connection.server.mysqld_version instead\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"backend_ndx\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_connection_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_connection_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @luaL_checkself(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_4__**
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 2, i32* %6)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @C(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = call i64 @strleq(i8* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %110

26:                                               ; preds = %1
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i64 @strleq(i8* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %2, align 4
  br label %110

35:                                               ; preds = %26
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @C(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %39 = call i64 @strleq(i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @luaL_error(i32* %42, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.5, i64 0, i64 0))
  store i32 %43, i32* %2, align 4
  br label %110

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @C(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %48 = call i64 @strleq(i8* %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @lua_pushinteger(i32* %51, i64 %55)
  br label %106

57:                                               ; preds = %44
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @C(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %66 = call i64 @strleq(i8* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %102

73:                                               ; preds = %68
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @C(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %77 = call i64 @strleq(i8* %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %73, %62
  %80 = load i32*, i32** %3, align 8
  %81 = call i32** @lua_newuserdata(i32* %80, i32 4)
  store i32** %81, i32*** %8, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 115
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32**, i32*** %8, align 8
  store i32* %90, i32** %91, align 8
  br label %97

92:                                               ; preds = %79
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32**, i32*** %8, align 8
  store i32* %95, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @network_socket_lua_getmetatable(i32* %98)
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_setmetatable(i32* %100, i32 -2)
  br label %105

102:                                              ; preds = %73, %68
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_pushnil(i32* %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %50
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %41, %32, %23
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @network_socket_lua_getmetatable(i32*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
