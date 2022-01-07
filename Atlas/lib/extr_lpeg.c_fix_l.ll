; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_fix_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_fix_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid field in grammar\00", align 1
@MAXPATTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"grammar too large\00", align 1
@LUA_MINSTACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"grammar has too many rules\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"empty grammar\00", align 1
@IJmp = common dso_local global i64 0, align 8
@IRet = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"initial rule not defined in given grammar\00", align 1
@ICall = common dso_local global i64 0, align 8
@IOpenCall = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, i32)* @fix_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @fix_l(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_newtable(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pushinteger(i32* %17, i32 1)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  br label %21

21:                                               ; preds = %58, %34, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @lua_next(i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_tonumber(i32* %27, i32 -2)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @lua_isstring(i32* %31, i32 -1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32 @lua_replace(i32* %35, i32 %37)
  br label %21

39:                                               ; preds = %30, %26
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @testpattern(i32* %40, i32 -1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @luaL_error(i32* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @pattsize(i32* %47, i32 -1)
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MAXPATTSIZE, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @luaL_error(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %46
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @LUA_MINSTACK, align 4
  %61 = call i32 @luaL_checkstack(i32* %59, i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_insert(i32* %62, i32 -2)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @lua_pushvalue(i32* %64, i32 -1)
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_pushvalue(i32* %66, i32 -1)
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @lua_pushinteger(i32* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @lua_settable(i32* %71, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %21

80:                                               ; preds = %21
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @luaL_argcheck(i32* %81, i32 %84, i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call %struct.TYPE_12__* @newpatt(i32* %87, i32 %88)
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %5, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 1
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %5, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 1
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %5, align 8
  %94 = load i64, i64* @IJmp, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @setinst(%struct.TYPE_12__* %92, i64 %94, i32 %96)
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %118, %80
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i32*, i32** %3, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %106, %108
  %110 = call i32 @addpatt(i32* %103, %struct.TYPE_12__* %104, i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %112
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %5, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 1
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %5, align 8
  %116 = load i64, i64* @IRet, align 8
  %117 = call i32 @setinst(%struct.TYPE_12__* %114, i64 %116, i32 0)
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %98

121:                                              ; preds = %98
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = sext i32 %122 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %5, align 8
  store i32 2, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %127

127:                                              ; preds = %157, %121
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %127
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* %6, align 4
  %136 = mul nsw i32 %135, 2
  %137 = add nsw i32 %134, %136
  %138 = call i32 @pattsize(i32* %132, i32 %137)
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  %140 = load i32*, i32** %3, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 2
  %150 = load i32, i32* %6, align 4
  %151 = mul nsw i32 %150, 2
  %152 = add nsw i32 %149, %151
  %153 = call i32 @checkrule(i32* %140, %struct.TYPE_12__* %141, i32 %142, i32 %145, i32 %147, i32 %152)
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %131
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %127

160:                                              ; preds = %127
  %161 = load i32*, i32** %3, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 2
  %164 = call i32 @lua_pushvalue(i32* %161, i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i32 @lua_gettable(i32* %165, i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @lua_tonumber(i32* %169, i32 -1)
  store i32 %170, i32* %6, align 4
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @lua_pop(i32* %171, i32 1)
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %160
  %176 = load i32*, i32** %3, align 8
  %177 = call i32 @luaL_error(i32* %176, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %160
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = load i64, i64* @ICall, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @setinst(%struct.TYPE_12__* %179, i64 %180, i32 %181)
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %242, %178
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %252

187:                                              ; preds = %183
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IOpenCall, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %241

197:                                              ; preds = %187
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @getposition(i32* %198, i32 %200, i32 %207)
  store i32 %208, i32* %12, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %211 = load i32, i32* %6, align 4
  %212 = add nsw i32 %211, 1
  %213 = call i64 @target(%struct.TYPE_12__* %210, i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @IRet, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %197
  %221 = load i64, i64* @IJmp, align 8
  br label %224

222:                                              ; preds = %197
  %223 = load i64, i64* @ICall, align 8
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i64 [ %221, %220 ], [ %223, %222 ]
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  store i64 %225, i64* %231, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %6, align 4
  %234 = sub nsw i32 %232, %233
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  store i32 %234, i32* %240, align 8
  br label %241

241:                                              ; preds = %224, %187
  br label %242

242:                                              ; preds = %241
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 %245
  %247 = call i64 @sizei(%struct.TYPE_12__* %246)
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = add nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %6, align 4
  br label %183

252:                                              ; preds = %183
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %254 = call i32 @optimizejumps(%struct.TYPE_12__* %253)
  %255 = load i32*, i32** %3, align 8
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @lua_replace(i32* %255, i32 %256)
  %258 = load i32*, i32** %3, align 8
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @lua_settop(i32* %258, i32 %259)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %261
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

declare dso_local i32 @testpattern(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @pattsize(i32*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_12__* @newpatt(i32*, i32) #1

declare dso_local i32 @setinst(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @addpatt(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @checkrule(i32*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @getposition(i32*, i32, i32) #1

declare dso_local i64 @target(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @sizei(%struct.TYPE_12__*) #1

declare dso_local i32 @optimizejumps(%struct.TYPE_12__*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
