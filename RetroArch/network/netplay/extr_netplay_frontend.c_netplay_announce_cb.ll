; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_announce_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_announce_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }
%struct.netplay_room = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.string_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"[netplay] announcing netplay game... \0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"mitm_ip\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"mitm_port\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"core_name\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"core_version\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"game_name\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"game_crc\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%08d\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"host_method\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"has_password\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"has_spectate_password\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"retroarch_version\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"country\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"[netplay] joining relay server: %s:%s\0A\00", align 1
@RARCH_NETPLAY_CTL_IS_DATA_INITED = common dso_local global i32 0, align 4
@CMD_EVENT_NETPLAY_DEINIT = common dso_local global i32 0, align 4
@is_mitm = common dso_local global i32 0, align 4
@NETPLAY_HOST_METHOD_MITM = common dso_local global i32 0, align 4
@RARCH_NETPLAY_CTL_ENABLE_CLIENT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED = common dso_local global i32 0, align 4
@CMD_EVENT_NETPLAY_INIT = common dso_local global i32 0, align 4
@CMD_EVENT_DISCORD_UPDATE = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_NETPLAY_HOSTING = common dso_local global i32 0, align 4
@discord_is_inited = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @netplay_announce_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_announce_cb(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.netplay_room*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.string_list*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %23 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %395

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %12, align 8
  %29 = call %struct.netplay_room* (...) @netplay_get_host_room()
  store %struct.netplay_room* %29, %struct.netplay_room** %13, align 8
  store %struct.string_list* null, %struct.string_list** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @free(i8* %35)
  br label %396

37:                                               ; preds = %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = call i64 @calloc(i32 1, i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i8* %45, i8* %48, i32 %52)
  %54 = load i8*, i8** %17, align 8
  %55 = call %struct.string_list* @string_split(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %55, %struct.string_list** %14, align 8
  %56 = load %struct.string_list*, %struct.string_list** %14, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %37
  %61 = load %struct.string_list*, %struct.string_list** %14, align 8
  %62 = call i32 @string_list_free(%struct.string_list* %61)
  %63 = load i8*, i8** %17, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @free(i8* %65)
  br label %396

67:                                               ; preds = %37
  %68 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %69 = call i32 @memset(%struct.netplay_room* %68, i32 0, i32 68)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %314, %67
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.string_list*, %struct.string_list** %14, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %317

76:                                               ; preds = %70
  %77 = load %struct.string_list*, %struct.string_list** %14, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %19, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = call i32 @string_is_empty(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %313, label %88

88:                                               ; preds = %76
  %89 = load i8*, i8** %19, align 8
  %90 = call %struct.string_list* @string_split(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct.string_list* %90, %struct.string_list** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %91 = load %struct.string_list*, %struct.string_list** %20, align 8
  %92 = icmp ne %struct.string_list* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %314

94:                                               ; preds = %88
  %95 = load %struct.string_list*, %struct.string_list** %20, align 8
  %96 = getelementptr inbounds %struct.string_list, %struct.string_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.string_list*, %struct.string_list** %20, align 8
  %101 = call i32 @string_list_free(%struct.string_list* %100)
  br label %314

102:                                              ; preds = %94
  %103 = load %struct.string_list*, %struct.string_list** %20, align 8
  %104 = getelementptr inbounds %struct.string_list, %struct.string_list* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %21, align 8
  %109 = load %struct.string_list*, %struct.string_list** %20, align 8
  %110 = getelementptr inbounds %struct.string_list, %struct.string_list* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %22, align 8
  %115 = load i8*, i8** %21, align 8
  %116 = call i64 @string_is_equal(i8* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %102
  %119 = load i8*, i8** %22, align 8
  %120 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %121 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %120, i32 0, i32 16
  %122 = call i32 @sscanf(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %121)
  br label %123

123:                                              ; preds = %118, %102
  %124 = load i8*, i8** %21, align 8
  %125 = call i64 @string_is_equal(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %129 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %128, i32 0, i32 15
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %22, align 8
  %132 = call i32 @strlcpy(i32 %130, i8* %131, i32 4)
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i8*, i8** %21, align 8
  %135 = call i64 @string_is_equal(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %139 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %138, i32 0, i32 14
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %22, align 8
  %142 = call i32 @strlcpy(i32 %140, i8* %141, i32 4)
  br label %143

143:                                              ; preds = %137, %133
  %144 = load i8*, i8** %21, align 8
  %145 = call i64 @string_is_equal(i8* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load i8*, i8** %22, align 8
  %149 = call i8* @strdup(i8* %148)
  store i8* %149, i8** %15, align 8
  %150 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %151 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %22, align 8
  %154 = call i32 @strlcpy(i32 %152, i8* %153, i32 4)
  br label %155

155:                                              ; preds = %147, %143
  %156 = load i8*, i8** %21, align 8
  %157 = call i64 @string_is_equal(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i8*, i8** %22, align 8
  %161 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %162 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %161, i32 0, i32 12
  %163 = call i32 @sscanf(i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %162)
  br label %164

164:                                              ; preds = %159, %155
  %165 = load i8*, i8** %21, align 8
  %166 = call i64 @string_is_equal(i8* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = load i8*, i8** %22, align 8
  %170 = call i8* @strdup(i8* %169)
  store i8* %170, i8** %16, align 8
  %171 = load i8*, i8** %16, align 8
  %172 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %173 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %172, i32 0, i32 11
  %174 = call i32 @sscanf(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %173)
  br label %175

175:                                              ; preds = %168, %164
  %176 = load i8*, i8** %21, align 8
  %177 = call i64 @string_is_equal(i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %181 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @strlcpy(i32 %182, i8* %183, i32 4)
  br label %185

185:                                              ; preds = %179, %175
  %186 = load i8*, i8** %21, align 8
  %187 = call i64 @string_is_equal(i8* %186, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %191 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load i8*, i8** %22, align 8
  %194 = call i32 @strlcpy(i32 %192, i8* %193, i32 4)
  br label %195

195:                                              ; preds = %189, %185
  %196 = load i8*, i8** %21, align 8
  %197 = call i64 @string_is_equal(i8* %196, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %201 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %22, align 8
  %204 = call i32 @strlcpy(i32 %202, i8* %203, i32 4)
  br label %205

205:                                              ; preds = %199, %195
  %206 = load i8*, i8** %21, align 8
  %207 = call i64 @string_is_equal(i8* %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %211 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = load i8*, i8** %22, align 8
  %214 = call i32 @strlcpy(i32 %212, i8* %213, i32 4)
  br label %215

215:                                              ; preds = %209, %205
  %216 = load i8*, i8** %21, align 8
  %217 = call i64 @string_is_equal(i8* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i8*, i8** %22, align 8
  %221 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %222 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %221, i32 0, i32 6
  %223 = call i32 @sscanf(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32* %222)
  br label %224

224:                                              ; preds = %219, %215
  %225 = load i8*, i8** %21, align 8
  %226 = call i64 @string_is_equal(i8* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %224
  %229 = load i8*, i8** %22, align 8
  %230 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %231 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %230, i32 0, i32 3
  %232 = call i32 @sscanf(i8* %229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %231)
  br label %233

233:                                              ; preds = %228, %224
  %234 = load i8*, i8** %21, align 8
  %235 = call i64 @string_is_equal(i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %252

237:                                              ; preds = %233
  %238 = load i8*, i8** %22, align 8
  %239 = call i64 @string_is_equal_noncase(i8* %238, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i8*, i8** %22, align 8
  %243 = call i64 @string_is_equal(i8* %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %241, %237
  %246 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %247 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %246, i32 0, i32 0
  store i32 1, i32* %247, align 4
  br label %251

248:                                              ; preds = %241
  %249 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %250 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %249, i32 0, i32 0
  store i32 0, i32* %250, align 4
  br label %251

251:                                              ; preds = %248, %245
  br label %252

252:                                              ; preds = %251, %233
  %253 = load i8*, i8** %21, align 8
  %254 = call i64 @string_is_equal(i8* %253, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %252
  %257 = load i8*, i8** %22, align 8
  %258 = call i64 @string_is_equal_noncase(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i8*, i8** %22, align 8
  %262 = call i64 @string_is_equal(i8* %261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260, %256
  %265 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %266 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %265, i32 0, i32 1
  store i32 1, i32* %266, align 4
  br label %270

267:                                              ; preds = %260
  %268 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %269 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %268, i32 0, i32 1
  store i32 0, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %252
  %272 = load i8*, i8** %21, align 8
  %273 = call i64 @string_is_equal(i8* %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %271
  %276 = load i8*, i8** %22, align 8
  %277 = call i64 @string_is_equal_noncase(i8* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load i8*, i8** %22, align 8
  %281 = call i64 @string_is_equal(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279, %275
  %284 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %285 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %284, i32 0, i32 2
  store i32 1, i32* %285, align 4
  br label %289

286:                                              ; preds = %279
  %287 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %288 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %287, i32 0, i32 2
  store i32 0, i32* %288, align 4
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %271
  %291 = load i8*, i8** %21, align 8
  %292 = call i64 @string_is_equal(i8* %291, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %296 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = load i8*, i8** %22, align 8
  %299 = call i32 @strlcpy(i32 %297, i8* %298, i32 4)
  br label %300

300:                                              ; preds = %294, %290
  %301 = load i8*, i8** %21, align 8
  %302 = call i64 @string_is_equal(i8* %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %306 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = load i8*, i8** %22, align 8
  %309 = call i32 @strlcpy(i32 %307, i8* %308, i32 4)
  br label %310

310:                                              ; preds = %304, %300
  %311 = load %struct.string_list*, %struct.string_list** %20, align 8
  %312 = call i32 @string_list_free(%struct.string_list* %311)
  br label %313

313:                                              ; preds = %310, %76
  br label %314

314:                                              ; preds = %313, %99, %93
  %315 = load i32, i32* %9, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %70

317:                                              ; preds = %70
  %318 = load i8*, i8** %15, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %376

320:                                              ; preds = %317
  %321 = load i8*, i8** %16, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %376

323:                                              ; preds = %320
  %324 = load i8*, i8** %15, align 8
  %325 = load i8*, i8** %16, align 8
  %326 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %324, i8* %325)
  %327 = load i8*, i8** %15, align 8
  %328 = call i64 @strlen(i8* %327)
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %10, align 4
  %330 = load i8*, i8** %16, align 8
  %331 = call i64 @strlen(i8* %330)
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %11, align 4
  %333 = load i32, i32* @RARCH_NETPLAY_CTL_IS_DATA_INITED, align 4
  %334 = call i64 @netplay_driver_ctl(i32 %333, i32* null)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %323
  %337 = load i32, i32* @CMD_EVENT_NETPLAY_DEINIT, align 4
  %338 = call i32 @command_event(i32 %337, i8* null)
  store i32 1, i32* @is_mitm, align 4
  %339 = load i32, i32* @NETPLAY_HOST_METHOD_MITM, align 4
  %340 = load %struct.netplay_room*, %struct.netplay_room** %13, align 8
  %341 = getelementptr inbounds %struct.netplay_room, %struct.netplay_room* %340, i32 0, i32 3
  store i32 %339, i32* %341, align 4
  br label %342

342:                                              ; preds = %336, %323
  %343 = load i32, i32* @RARCH_NETPLAY_CTL_ENABLE_CLIENT, align 4
  %344 = call i64 @netplay_driver_ctl(i32 %343, i32* null)
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %11, align 4
  %347 = add i32 %345, %346
  %348 = add i32 %347, 2
  %349 = call i64 @calloc(i32 1, i32 %348)
  %350 = inttoptr i64 %349 to i8*
  store i8* %350, i8** %18, align 8
  %351 = load i8*, i8** %18, align 8
  %352 = load i8*, i8** %15, align 8
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @memcpy(i8* %351, i8* %352, i32 %353)
  %355 = load i8*, i8** %18, align 8
  %356 = load i32, i32* %10, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = call i32 @memcpy(i8* %358, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 1)
  %360 = load i8*, i8** %18, align 8
  %361 = load i32, i32* %10, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %360, i64 %362
  %364 = getelementptr inbounds i8, i8* %363, i64 1
  %365 = load i8*, i8** %16, align 8
  %366 = load i32, i32* %11, align 4
  %367 = call i32 @memcpy(i8* %364, i8* %365, i32 %366)
  %368 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, align 4
  %369 = load i8*, i8** %18, align 8
  %370 = call i32 @command_event(i32 %368, i8* %369)
  %371 = load i32, i32* @CMD_EVENT_NETPLAY_INIT, align 4
  %372 = load i8*, i8** %18, align 8
  %373 = call i32 @command_event(i32 %371, i8* %372)
  %374 = load i8*, i8** %18, align 8
  %375 = call i32 @free(i8* %374)
  br label %376

376:                                              ; preds = %342, %320, %317
  %377 = load %struct.string_list*, %struct.string_list** %14, align 8
  %378 = call i32 @string_list_free(%struct.string_list* %377)
  %379 = load i8*, i8** %17, align 8
  %380 = call i32 @free(i8* %379)
  %381 = load i8*, i8** %6, align 8
  %382 = call i32 @free(i8* %381)
  %383 = load i8*, i8** %15, align 8
  %384 = icmp ne i8* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %376
  %386 = load i8*, i8** %15, align 8
  %387 = call i32 @free(i8* %386)
  br label %388

388:                                              ; preds = %385, %376
  %389 = load i8*, i8** %16, align 8
  %390 = icmp ne i8* %389, null
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i8*, i8** %16, align 8
  %393 = call i32 @free(i8* %392)
  br label %394

394:                                              ; preds = %391, %388
  br label %395

395:                                              ; preds = %394, %4
  br label %396

396:                                              ; preds = %395, %60, %34
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local %struct.netplay_room* @netplay_get_host_room(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @memset(%struct.netplay_room*, i32, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @string_is_equal_noncase(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @netplay_driver_ctl(i32, i32*) #1

declare dso_local i32 @command_event(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
