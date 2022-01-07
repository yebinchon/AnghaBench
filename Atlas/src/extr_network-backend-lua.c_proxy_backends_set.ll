; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backends_set.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backends_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"addslave\00", align 1
@BACKEND_TYPE_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"addmaster\00", align 1
@BACKEND_TYPE_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"removebackend\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"addclient\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"removeclient\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"saveconfig\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"proxy.global.backends.%s is not writable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_backends_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_backends_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @luaL_checkself(i32* %11)
  %13 = inttoptr i64 %12 to i32**
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checklstring(i32* %15, i32 2, i32* %5)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @strleq(i8* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_tostring(i32* %23, i32 -1)
  %25 = call i32* @g_strdup(i32 %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @BACKEND_TYPE_RO, align 4
  %29 = call i32 @network_backends_add(i32* %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @g_free(i32* %30)
  br label %107

32:                                               ; preds = %1
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i64 @strleq(i8* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_tostring(i32* %39, i32 -1)
  %41 = call i32* @g_strdup(i32 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @BACKEND_TYPE_RW, align 4
  %45 = call i32 @network_backends_add(i32* %42, i32* %43, i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @g_free(i32* %46)
  br label %106

48:                                               ; preds = %32
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @C(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i64 @strleq(i8* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_tointeger(i32* %56, i32 -1)
  %58 = call i32 @network_backends_remove(i32* %55, i32 %57)
  br label %105

59:                                               ; preds = %48
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i64 @strleq(i8* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_tostring(i32* %66, i32 -1)
  %68 = call i32* @g_strdup(i32 %67)
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @network_backends_addclient(i32* %69, i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @g_free(i32* %72)
  br label %104

74:                                               ; preds = %59
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @C(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i64 @strleq(i8* %75, i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @lua_tostring(i32* %81, i32 -1)
  %83 = call i32* @g_strdup(i32 %82)
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @network_backends_removeclient(i32* %84, i32* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @g_free(i32* %87)
  br label %103

89:                                               ; preds = %74
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @C(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i64 @strleq(i8* %90, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @network_backends_save(i32* %96)
  br label %102

98:                                               ; preds = %89
  %99 = load i32*, i32** %3, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @luaL_error(i32* %99, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %2, align 4
  br label %108

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %80
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105, %38
  br label %107

107:                                              ; preds = %106, %22
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %98
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32* @g_strdup(i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @network_backends_add(i32*, i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @network_backends_remove(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @network_backends_addclient(i32*, i32*) #1

declare dso_local i32 @network_backends_removeclient(i32*, i32*) #1

declare dso_local i32 @network_backends_save(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
