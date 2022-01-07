; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_proxy_connection_set.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_proxy_connection_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"backend_ndx\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"connection_close\00", align 1
@LUA_TBOOLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"proxy.connection.%s is not writable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_connection_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_connection_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checkself(i32* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_8__**
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i8* @luaL_checklstring(i32* %14, i32 2, i32* %6)
  store i8* %15, i8** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @C(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = call i64 @strleq(i8* %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @luaL_checkinteger(i32* %25, i32 3)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i32 @network_connection_pool_lua_add_connection(%struct.TYPE_8__* %31)
  br label %74

33:                                               ; preds = %24
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32* @network_connection_pool_lua_swap(%struct.TYPE_8__* %34, i32 %35, i32* null)
  store i32* %36, i32** %9, align 8
  %37 = icmp ne i32* null, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  br label %73

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -2
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %58, align 8
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @network_socket_free(i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %72

68:                                               ; preds = %42
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73, %30
  br label %92

75:                                               ; preds = %1
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i64 0, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @LUA_TBOOLEAN, align 4
  %82 = call i32 @luaL_checktype(i32* %80, i32 3, i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @lua_toboolean(i32* %83, i32 3)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %91

87:                                               ; preds = %75
  %88 = load i32*, i32** %3, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @luaL_error(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %2, align 4
  br label %93

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %74
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %87
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @network_connection_pool_lua_add_connection(%struct.TYPE_8__*) #1

declare dso_local i32* @network_connection_pool_lua_swap(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @network_socket_free(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
