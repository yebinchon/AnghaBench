; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_stream_cb.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_stream_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_param = type { i32, i32* }
%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [87 x i8] c"\0A\0D-----------------------------------------------------------------------------------\0A\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"-----------------------------------------------------------------------------------\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stream_cb(i8* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.cb_param*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.cb_param*
  store %struct.cb_param* %13, %struct.cb_param** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_3__* @taos_fetch_fields(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @taos_num_fields(i32* %16)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cb_param*, %struct.cb_param** %7, align 8
  %20 = getelementptr inbounds %struct.cb_param, %struct.cb_param* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %24 = load %struct.cb_param*, %struct.cb_param** %7, align 8
  %25 = getelementptr inbounds %struct.cb_param, %struct.cb_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @lua_rawgeti(i32* %22, i32 %23, i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @lua_newtable(i32* %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %154, %3
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %157

34:                                               ; preds = %30
  %35 = load i32**, i32*** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %154

42:                                               ; preds = %34
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @lua_pushstring(i32* %43, i8* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %148 [
    i32 128, label %57
    i32 130, label %67
    i32 132, label %78
    i32 137, label %88
    i32 133, label %98
    i32 134, label %109
    i32 136, label %119
    i32 131, label %119
    i32 129, label %128
    i32 135, label %138
  ]

57:                                               ; preds = %42
  %58 = load i32*, i32** %10, align 8
  %59 = load i32**, i32*** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @lua_pushinteger(i32* %58, i8 signext %65)
  br label %151

67:                                               ; preds = %42
  %68 = load i32*, i32** %10, align 8
  %69 = load i32**, i32*** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i16*
  %75 = load i16, i16* %74, align 2
  %76 = trunc i16 %75 to i8
  %77 = call i32 @lua_pushinteger(i32* %68, i8 signext %76)
  br label %151

78:                                               ; preds = %42
  %79 = load i32*, i32** %10, align 8
  %80 = load i32**, i32*** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %84, align 4
  %86 = trunc i32 %85 to i8
  %87 = call i32 @lua_pushinteger(i32* %79, i8 signext %86)
  br label %151

88:                                               ; preds = %42
  %89 = load i32*, i32** %10, align 8
  %90 = load i32**, i32*** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @lua_pushinteger(i32* %89, i8 signext %96)
  br label %151

98:                                               ; preds = %42
  %99 = load i32*, i32** %10, align 8
  %100 = load i32**, i32*** %6, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = bitcast i32* %104 to float*
  %106 = load float, float* %105, align 4
  %107 = fpext float %106 to double
  %108 = call i32 @lua_pushnumber(i32* %99, double %107)
  br label %151

109:                                              ; preds = %42
  %110 = load i32*, i32** %10, align 8
  %111 = load i32**, i32*** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast i32* %115 to double*
  %117 = load double, double* %116, align 8
  %118 = call i32 @lua_pushnumber(i32* %110, double %117)
  br label %151

119:                                              ; preds = %42, %42
  %120 = load i32*, i32** %10, align 8
  %121 = load i32**, i32*** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = call i32 @lua_pushstring(i32* %120, i8* %126)
  br label %151

128:                                              ; preds = %42
  %129 = load i32*, i32** %10, align 8
  %130 = load i32**, i32*** %6, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @lua_pushinteger(i32* %129, i8 signext %136)
  br label %151

138:                                              ; preds = %42
  %139 = load i32*, i32** %10, align 8
  %140 = load i32**, i32*** %6, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @lua_pushinteger(i32* %139, i8 signext %146)
  br label %151

148:                                              ; preds = %42
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @lua_pushnil(i32* %149)
  br label %151

151:                                              ; preds = %148, %138, %128, %119, %109, %98, %88, %78, %67, %57
  %152 = load i32*, i32** %10, align 8
  %153 = call i32 @lua_settable(i32* %152, i32 -3)
  br label %154

154:                                              ; preds = %151, %41
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %30

157:                                              ; preds = %30
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @lua_call(i32* %158, i32 1, i32 0)
  %160 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_3__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @taos_num_fields(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i8 signext) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
