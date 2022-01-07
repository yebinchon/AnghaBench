; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-address-lua.c_proxy_address_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-address-lua.c_proxy_address_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_address_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_address_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @luaL_checkself(i32* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_12__**
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 2, i32* %4)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 @strleq(i8* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @lua_pushinteger(i32* %19, i32 %24)
  br label %120

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i64 @strleq(i8* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32*, i32** %2, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @S(i32 %36)
  %38 = call i32 @lua_pushlstring(i32* %33, i32 %37)
  br label %119

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @C(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i64 @strleq(i8* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  store i8* null, i8** %6, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %68 [
    i32 130, label %51
    i32 128, label %62
  ]

51:                                               ; preds = %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @inet_ntoa(i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %51
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %6, align 8
  br label %69

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68, %62, %61
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* null, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @lua_pushnil(i32* %73)
  br label %79

75:                                               ; preds = %69
  %76 = load i32*, i32** %2, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @lua_pushstring(i32* %76, i8* %77)
  br label %79

79:                                               ; preds = %75, %72
  br label %118

80:                                               ; preds = %39
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i64 @strleq(i8* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %110 [
    i32 130, label %92
    i32 129, label %101
  ]

92:                                               ; preds = %86
  %93 = load i32*, i32** %2, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ntohs(i32 %98)
  %100 = call i32 @lua_pushinteger(i32* %93, i32 %99)
  br label %113

101:                                              ; preds = %86
  %102 = load i32*, i32** %2, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ntohs(i32 %107)
  %109 = call i32 @lua_pushinteger(i32* %102, i32 %108)
  br label %113

110:                                              ; preds = %86
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @lua_pushnil(i32* %111)
  br label %113

113:                                              ; preds = %110, %101, %92
  br label %117

114:                                              ; preds = %80
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @lua_pushnil(i32* %115)
  br label %117

117:                                              ; preds = %114, %113
  br label %118

118:                                              ; preds = %117, %79
  br label %119

119:                                              ; preds = %118, %32
  br label %120

120:                                              ; preds = %119, %18
  ret i32 1
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
