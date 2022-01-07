; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_query.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"failed, reason:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get result, reason:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"affected\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_query(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @lua_topointer(i32* %15, i32 1)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @lua_tostring(i32* %17, i32 2)
  store i8* %18, i8** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_newtable(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_gettop(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @taos_query(i32* %23, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @taos_errstr(i32* %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushnumber(i32* %31, double -1.000000e+00)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @lua_setfield(i32* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @taos_errstr(i32* %37)
  %39 = call i32 @lua_pushstring(i32* %36, i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @lua_setfield(i32* %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %235

43:                                               ; preds = %1
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @taos_use_result(i32* %44)
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @taos_errstr(i32* %49)
  %51 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pushnumber(i32* %52, double -2.000000e+00)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @lua_setfield(i32* %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @taos_errstr(i32* %58)
  %60 = call i32 @lua_pushstring(i32* %57, i8* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @lua_setfield(i32* %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %235

64:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @taos_field_count(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call %struct.TYPE_3__* @taos_fetch_fields(i32* %67)
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %11, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @taos_affected_rows(i32* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_pushnumber(i32* %71, double 0.000000e+00)
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @lua_setfield(i32* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %13, align 4
  %78 = trunc i32 %77 to i8
  %79 = call i32 @lua_pushinteger(i32* %76, i8 signext %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @lua_setfield(i32* %80, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @lua_newtable(i32* %83)
  br label %85

85:                                               ; preds = %225, %64
  %86 = load i32*, i32** %6, align 8
  %87 = call i32** @taos_fetch_row(i32* %86)
  store i32** %87, i32*** %8, align 8
  %88 = icmp ne i32** %87, null
  br i1 %88, label %89, label %228

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sitofp i32 %93 to double
  %95 = call i32 @lua_pushnumber(i32* %92, double %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @lua_newtable(i32* %96)
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %222, %89
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %225

102:                                              ; preds = %98
  %103 = load i32**, i32*** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %222

110:                                              ; preds = %102
  %111 = load i32*, i32** %3, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @lua_pushstring(i32* %111, i8* %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %216 [
    i32 128, label %125
    i32 130, label %135
    i32 132, label %146
    i32 137, label %156
    i32 133, label %166
    i32 134, label %177
    i32 136, label %187
    i32 131, label %187
    i32 129, label %196
    i32 135, label %206
  ]

125:                                              ; preds = %110
  %126 = load i32*, i32** %3, align 8
  %127 = load i32**, i32*** %8, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = bitcast i32* %131 to i8*
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @lua_pushinteger(i32* %126, i8 signext %133)
  br label %219

135:                                              ; preds = %110
  %136 = load i32*, i32** %3, align 8
  %137 = load i32**, i32*** %8, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to i16*
  %143 = load i16, i16* %142, align 2
  %144 = trunc i16 %143 to i8
  %145 = call i32 @lua_pushinteger(i32* %136, i8 signext %144)
  br label %219

146:                                              ; preds = %110
  %147 = load i32*, i32** %3, align 8
  %148 = load i32**, i32*** %8, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %152, align 4
  %154 = trunc i32 %153 to i8
  %155 = call i32 @lua_pushinteger(i32* %147, i8 signext %154)
  br label %219

156:                                              ; preds = %110
  %157 = load i32*, i32** %3, align 8
  %158 = load i32**, i32*** %8, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = bitcast i32* %162 to i8*
  %164 = load i8, i8* %163, align 1
  %165 = call i32 @lua_pushinteger(i32* %157, i8 signext %164)
  br label %219

166:                                              ; preds = %110
  %167 = load i32*, i32** %3, align 8
  %168 = load i32**, i32*** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = bitcast i32* %172 to float*
  %174 = load float, float* %173, align 4
  %175 = fpext float %174 to double
  %176 = call i32 @lua_pushnumber(i32* %167, double %175)
  br label %219

177:                                              ; preds = %110
  %178 = load i32*, i32** %3, align 8
  %179 = load i32**, i32*** %8, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = bitcast i32* %183 to double*
  %185 = load double, double* %184, align 8
  %186 = call i32 @lua_pushnumber(i32* %178, double %185)
  br label %219

187:                                              ; preds = %110, %110
  %188 = load i32*, i32** %3, align 8
  %189 = load i32**, i32*** %8, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = bitcast i32* %193 to i8*
  %195 = call i32 @lua_pushstring(i32* %188, i8* %194)
  br label %219

196:                                              ; preds = %110
  %197 = load i32*, i32** %3, align 8
  %198 = load i32**, i32*** %8, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @lua_pushinteger(i32* %197, i8 signext %204)
  br label %219

206:                                              ; preds = %110
  %207 = load i32*, i32** %3, align 8
  %208 = load i32**, i32*** %8, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = bitcast i32* %212 to i8*
  %214 = load i8, i8* %213, align 1
  %215 = call i32 @lua_pushinteger(i32* %207, i8 signext %214)
  br label %219

216:                                              ; preds = %110
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @lua_pushnil(i32* %217)
  br label %219

219:                                              ; preds = %216, %206, %196, %187, %177, %166, %156, %146, %135, %125
  %220 = load i32*, i32** %3, align 8
  %221 = call i32 @lua_settable(i32* %220, i32 -3)
  br label %222

222:                                              ; preds = %219, %109
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %98

225:                                              ; preds = %98
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @lua_settable(i32* %226, i32 -3)
  br label %85

228:                                              ; preds = %85
  %229 = load i32*, i32** %6, align 8
  %230 = call i32 @taos_free_result(i32* %229)
  br label %231

231:                                              ; preds = %228
  %232 = load i32*, i32** %3, align 8
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @lua_setfield(i32* %232, i32 %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %235

235:                                              ; preds = %231, %48, %27
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32* @lua_topointer(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @taos_query(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @taos_errstr(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, double) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32* @taos_use_result(i32*) #1

declare dso_local i32 @taos_field_count(i32*) #1

declare dso_local %struct.TYPE_3__* @taos_fetch_fields(i32*) #1

declare dso_local i32 @taos_affected_rows(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i8 signext) #1

declare dso_local i32** @taos_fetch_row(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @taos_free_result(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
