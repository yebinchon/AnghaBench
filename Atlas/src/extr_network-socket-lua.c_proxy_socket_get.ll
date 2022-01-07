; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-socket-lua.c_proxy_socket_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-socket-lua.c_proxy_socket_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"default_db\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"charset_client\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"charset_connection\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"charset_results\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c".address is deprecated. Use .src.name or .dst.name instead\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"scrambled_password\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"mysqld_version\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"thread_id\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"scramble_buffer\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"%s: sock->challenge: %p, sock->response: %p (looking for %s)\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_socket_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_socket_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @luaL_checkself(i32* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_14__**
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 2, i32* %5)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @C(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 @strleq(i8* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %19, i32 %24, i32 %29)
  store i32 1, i32* %2, align 4
  br label %229

31:                                               ; preds = %1
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @C(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i64 @strleq(i8* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %38, i32 %43, i32 %48)
  store i32 1, i32* %2, align 4
  br label %229

50:                                               ; preds = %31
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @C(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i64 @strleq(i8* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %57, i32 %62, i32 %67)
  store i32 1, i32* %2, align 4
  br label %229

69:                                               ; preds = %50
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @C(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i64 @strleq(i8* %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %76, i32 %81, i32 %86)
  store i32 1, i32* %2, align 4
  br label %229

88:                                               ; preds = %69
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @C(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i64 @strleq(i8* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @luaL_error(i32* %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  store i32 %96, i32* %2, align 4
  br label %229

97:                                               ; preds = %88
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @C(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i64 @strleq(i8* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @network_address_lua_push(i32* %104, i32 %107)
  store i32 %108, i32* %2, align 4
  br label %229

109:                                              ; preds = %97
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @C(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i64 @strleq(i8* %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32*, i32** %3, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @network_address_lua_push(i32* %116, i32 %119)
  store i32 %120, i32* %2, align 4
  br label %229

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = icmp ne %struct.TYPE_13__* %130, null
  br i1 %131, label %132, label %164

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %136 = call i64 @strleq(i8* %133, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load i32*, i32** %3, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @S(i32 %144)
  %146 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %139, i32 %145)
  store i32 1, i32* %2, align 4
  br label %229

147:                                              ; preds = %132
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @C(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %151 = call i64 @strleq(i8* %148, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @S(i32 %159)
  %161 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %154, i32 %160)
  store i32 1, i32* %2, align 4
  br label %229

162:                                              ; preds = %147
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %127
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = icmp ne %struct.TYPE_12__* %167, null
  br i1 %168, label %169, label %215

169:                                              ; preds = %164
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @C(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %173 = call i64 @strleq(i8* %170, i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load i32*, i32** %3, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @lua_pushinteger(i32* %176, i32 %181)
  store i32 1, i32* %2, align 4
  br label %229

183:                                              ; preds = %169
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %187 = call i64 @strleq(i8* %184, i32 %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load i32*, i32** %3, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @lua_pushinteger(i32* %190, i32 %195)
  store i32 1, i32* %2, align 4
  br label %229

197:                                              ; preds = %183
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @C(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %201 = call i64 @strleq(i8* %198, i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %197
  %204 = load i32*, i32** %3, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @S(i32 %209)
  %211 = call i32 (i32*, i32, ...) @lua_pushlstring(i32* %204, i32 %210)
  store i32 1, i32* %2, align 4
  br label %229

212:                                              ; preds = %197
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %164
  %216 = load i32, i32* @G_STRLOC, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %218, align 8
  %220 = bitcast %struct.TYPE_12__* %219 to i8*
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %222, align 8
  %224 = bitcast %struct.TYPE_13__* %223 to i8*
  %225 = load i8*, i8** %6, align 8
  %226 = call i32 @g_critical(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i32 %216, i8* %220, i8* %224, i8* %225)
  %227 = load i32*, i32** %3, align 8
  %228 = call i32 @lua_pushnil(i32* %227)
  store i32 1, i32* %2, align 4
  br label %229

229:                                              ; preds = %215, %203, %189, %175, %153, %138, %115, %103, %94, %75, %56, %37, %18
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, ...) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @network_address_lua_push(i32*, i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
