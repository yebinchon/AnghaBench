; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_load_content_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_load_content_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_22__, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32* }
%struct.retro_system_info = type { i32, i32, i32 }

@RARCH_CTL_IS_IPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_BPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_UPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_PATCH_BLOCKED = common dso_local global i32 0, align 4
@RARCH_CTL_IS_MISSING_BIOS = common dso_local global i32 0, align 4
@menu_content_environment_get = common dso_local global i64 0, align 8
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CMD_EVENT_DISCORD_UPDATE = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_MENU = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED = common dso_local global i32 0, align 4
@discord_is_inited = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32)* @task_load_content_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_load_content_callback(%struct.TYPE_20__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.retro_system_info*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %15 = call %struct.TYPE_28__* (...) @global_get_ptr()
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %11, align 8
  %16 = call %struct.TYPE_26__* (...) @config_get_ptr()
  store %struct.TYPE_26__* %16, %struct.TYPE_26__** %12, align 8
  %17 = call %struct.TYPE_27__* (...) @runloop_get_system_info()
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %13, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 15
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @RARCH_CTL_IS_IPS_PREF, align 4
  %24 = call i8* @rarch_ctl(i32 %23, i32* null)
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 14
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @RARCH_CTL_IS_BPS_PREF, align 4
  %27 = call i8* @rarch_ctl(i32 %26, i32* null)
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 13
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* @RARCH_CTL_IS_UPS_PREF, align 4
  %30 = call i8* @rarch_ctl(i32 %29, i32* null)
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 12
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @RARCH_CTL_IS_PATCH_BLOCKED, align 4
  %33 = call i8* @rarch_ctl(i32 %32, i32* null)
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 11
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @RARCH_CTL_IS_MISSING_BIOS, align 4
  %36 = call i8* @rarch_ctl(i32 %35, i32* null)
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 10
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i8* null, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i8* null, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  store i8* null, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 7
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 8
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %52 = icmp ne %struct.TYPE_27__* %51, null
  br i1 %52, label %53, label %120

53:                                               ; preds = %3
  %54 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %54, %struct.retro_system_info** %14, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 8
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @string_is_empty(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %53
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @strdup(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %66, %53
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @string_is_empty(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @strdup(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %89 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @string_is_empty(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %95 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @strdup(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %93, %87
  %100 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %101 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 6
  store i32 %102, i32* %103, align 8
  %104 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %105 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 7
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 9
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %99, %3
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %122 = icmp ne %struct.TYPE_28__* %121, null
  br i1 %122, label %123, label %166

123:                                              ; preds = %120
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @string_is_empty(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @strdup(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  store i8* %135, i8** %136, align 8
  br label %137

137:                                              ; preds = %130, %123
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @string_is_empty(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @strdup(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i8* %149, i8** %150, align 8
  br label %151

151:                                              ; preds = %144, %137
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @string_is_empty(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @strdup(i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  store i8* %163, i8** %164, align 8
  br label %165

165:                                              ; preds = %158, %151
  br label %166

166:                                              ; preds = %165, %120
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @string_is_empty(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @strdup(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  store i8* %178, i8** %179, align 8
  br label %180

180:                                              ; preds = %173, %166
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = load i64, i64* @menu_content_environment_get, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %180
  %190 = call i64 @firmware_update_status(%struct.TYPE_19__* %8)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %202

193:                                              ; preds = %189
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %195 = call i32 @content_load(%struct.TYPE_20__* %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @task_push_to_history_list(i32 1, i32 %199)
  br label %201

201:                                              ; preds = %198, %193
  br label %202

202:                                              ; preds = %201, %192
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @free(i8* %208)
  br label %210

210:                                              ; preds = %206, %202
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @free(i8* %216)
  br label %218

218:                                              ; preds = %214, %210
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %222, %218
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @free(i8* %232)
  br label %234

234:                                              ; preds = %230, %226
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @free(i8* %240)
  br label %242

242:                                              ; preds = %238, %234
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 5
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @free(i8* %248)
  br label %250

250:                                              ; preds = %246, %242
  %251 = load i32, i32* %9, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %266, label %253

253:                                              ; preds = %250
  %254 = load i8*, i8** %10, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %265

256:                                              ; preds = %253
  %257 = load i8*, i8** %10, align 8
  %258 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %259 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %260 = call i32 @runloop_msg_queue_push(i8* %257, i32 2, i32 90, i32 1, i32* null, i32 %258, i32 %259)
  %261 = load i8*, i8** %10, align 8
  %262 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %261)
  %263 = load i8*, i8** %10, align 8
  %264 = call i32 @free(i8* %263)
  br label %265

265:                                              ; preds = %256, %253
  store i32 0, i32* %4, align 4
  br label %267

266:                                              ; preds = %250
  store i32 1, i32* %4, align 4
  br label %267

267:                                              ; preds = %266, %265
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_28__* @global_get_ptr(...) #1

declare dso_local %struct.TYPE_26__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_27__* @runloop_get_system_info(...) #1

declare dso_local i8* @rarch_ctl(i32, i32*) #1

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i64 @firmware_update_status(%struct.TYPE_19__*) #1

declare dso_local i32 @content_load(%struct.TYPE_20__*) #1

declare dso_local i32 @task_push_to_history_list(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
