; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_17__, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i64, i32* }
%struct.string_list = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32* }
%struct.retro_system_info = type { i32, i32, i32 }

@temporary_content = common dso_local global i8* null, align 8
@RARCH_CTL_IS_PATCH_BLOCKED = common dso_local global i32 0, align 4
@RARCH_CTL_IS_IPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_BPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_IS_UPS_PREF = common dso_local global i32 0, align 4
@_content_is_inited = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @content_init() #0 {
  %1 = alloca %struct.TYPE_22__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.retro_system_info*, align 8
  store i32 1, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store %struct.string_list* null, %struct.string_list** %4, align 8
  %9 = call %struct.TYPE_21__* (...) @global_get_ptr()
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %5, align 8
  %10 = call %struct.TYPE_19__* (...) @config_get_ptr()
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %6, align 8
  %11 = call %struct.TYPE_20__* (...) @runloop_get_system_info()
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %7, align 8
  %12 = call i8* (...) @string_list_new()
  store i8* %12, i8** @temporary_content, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 15
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @RARCH_CTL_IS_PATCH_BLOCKED, align 4
  %19 = call i8* @rarch_ctl(i32 %18, i32* null)
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 14
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @RARCH_CTL_IS_IPS_PREF, align 4
  %22 = call i8* @rarch_ctl(i32 %21, i32* null)
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 13
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @RARCH_CTL_IS_BPS_PREF, align 4
  %25 = call i8* @rarch_ctl(i32 %24, i32* null)
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 12
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @RARCH_CTL_IS_UPS_PREF, align 4
  %28 = call i8* @rarch_ctl(i32 %27, i32* null)
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 11
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** @temporary_content, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 10
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  store i8* null, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  store i8* null, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  store i8* null, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 5
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 6
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 7
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 8
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 9
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %90

47:                                               ; preds = %0
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @string_is_empty(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @strdup(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @string_is_empty(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @strdup(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %61
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @string_is_empty(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @strdup(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %0
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %92 = icmp ne %struct.TYPE_20__* %91, null
  br i1 %92, label %93, label %160

93:                                               ; preds = %90
  %94 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %94, %struct.retro_system_info** %8, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 8
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @string_is_empty(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %93
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @strdup(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  br label %113

113:                                              ; preds = %106, %93
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @string_is_empty(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @strdup(i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %120, %113
  %128 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %129 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @string_is_empty(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %135 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @strdup(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 5
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %141 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 6
  store i32 %142, i32* %143, align 8
  %144 = load %struct.retro_system_info*, %struct.retro_system_info** %8, align 8
  %145 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 7
  store i32 %146, i32* %147, align 4
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %139, %90
  store i32 1, i32* @_content_is_inited, align 4
  %161 = call i8* (...) @string_list_new()
  %162 = bitcast i8* %161 to %struct.string_list*
  store %struct.string_list* %162, %struct.string_list** %4, align 8
  %163 = load i8*, i8** @temporary_content, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.string_list*, %struct.string_list** %4, align 8
  %167 = call i32 @content_file_init(%struct.TYPE_22__* %1, %struct.string_list* %166, i8** %3)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165, %160
  %170 = call i32 (...) @content_deinit()
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = load %struct.string_list*, %struct.string_list** %4, align 8
  %173 = call i32 @string_list_free(%struct.string_list* %172)
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @free(i8* %179)
  br label %181

181:                                              ; preds = %177, %171
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @free(i8* %187)
  br label %189

189:                                              ; preds = %185, %181
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @free(i8* %195)
  br label %197

197:                                              ; preds = %193, %189
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @free(i8* %203)
  br label %205

205:                                              ; preds = %201, %197
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @free(i8* %211)
  br label %213

213:                                              ; preds = %209, %205
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 5
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 5
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @free(i8* %219)
  br label %221

221:                                              ; preds = %217, %213
  %222 = load i8*, i8** %3, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %244

224:                                              ; preds = %221
  %225 = load i32, i32* %2, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i8*, i8** %3, align 8
  %229 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %228)
  br label %233

230:                                              ; preds = %224
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i8*, i8** %3, align 8
  %235 = load i32, i32* %2, align 4
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 1, i32 180
  %239 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %240 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %241 = call i32 @runloop_msg_queue_push(i8* %234, i32 2, i32 %238, i32 1, i32* null, i32 %239, i32 %240)
  %242 = load i8*, i8** %3, align 8
  %243 = call i32 @free(i8* %242)
  br label %244

244:                                              ; preds = %233, %221
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.TYPE_21__* @global_get_ptr(...) #1

declare dso_local %struct.TYPE_19__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_20__* @runloop_get_system_info(...) #1

declare dso_local i8* @string_list_new(...) #1

declare dso_local i8* @rarch_ctl(i32, i32*) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i32 @content_file_init(%struct.TYPE_22__*, %struct.string_list*, i8**) #1

declare dso_local i32 @content_deinit(...) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
