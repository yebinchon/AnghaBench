; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_pmain.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@has_error = common dso_local global i32 0, align 4
@has_v = common dso_local global i32 0, align 4
@has_E = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@LUA_OK = common dso_local global i64 0, align 8
@has_i = common dso_local global i32 0, align 4
@has_e = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @lua_tointeger(i32* %8, i32 1)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_touserdata(i32* %11, i32 2)
  %13 = inttoptr i64 %12 to i8**
  store i8** %13, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @collectargs(i8** %14, i32* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_checkversion(i32* %16)
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** @progname, align 8
  br label %34

34:                                               ; preds = %30, %22, %1
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @has_error, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @print_usage(i8* %43)
  store i32 0, i32* %2, align 4
  br label %137

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @has_v, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @print_version()
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @has_E, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_pushboolean(i32* %58, i32 1)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %62 = call i32 @lua_setfield(i32* %60, i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @luaL_openlibs(i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @createargtable(i32* %66, i8** %67, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @has_E, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %63
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @handle_luainit(i32* %76)
  %78 = load i64, i64* @LUA_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %137

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i32*, i32** %3, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @runargs(i32* %83, i8** %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %137

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32*, i32** %3, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = call i64 @handle_script(i32* %94, i8** %98)
  %100 = load i64, i64* @LUA_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %137

103:                                              ; preds = %93, %89
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @has_i, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @doREPL(i32* %109)
  br label %134

111:                                              ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @has_e, align 4
  %118 = load i32, i32* @has_v, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %115
  %123 = call i64 (...) @lua_stdin_is_tty()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = call i32 (...) @print_version()
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @doREPL(i32* %127)
  br label %132

129:                                              ; preds = %122
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 @dofile(i32* %130, i32* null)
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %115, %111
  br label %134

134:                                              ; preds = %133, %108
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @lua_pushboolean(i32* %135, i32 1)
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %102, %88, %80, %38
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @collectargs(i8**, i32*) #1

declare dso_local i32 @luaL_checkversion(i32*) #1

declare dso_local i32 @print_usage(i8*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @createargtable(i32*, i8**, i32, i32) #1

declare dso_local i64 @handle_luainit(i32*) #1

declare dso_local i32 @runargs(i32*, i8**, i32) #1

declare dso_local i64 @handle_script(i32*, i8**) #1

declare dso_local i32 @doREPL(i32*) #1

declare dso_local i64 @lua_stdin_is_tty(...) #1

declare dso_local i32 @dofile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
