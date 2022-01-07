; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetAccessList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetAccessList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"i_max_access_lists\00", align 1
@ERR_TOO_MANY_ACCESS_LIST = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"no_delay_jitter_packet_loss\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"no_access_list_include_file\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"no_change_access_list\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"max_accesslists\00", align 1
@ERR_VERSION_INVALID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"LA_SET_ACCESS_LIST\00", align 1
@ACCESS_LIST_INCLUDED_PREFIX = common dso_local global i32 0, align 4
@ACCESS_LIST_EXCLUDED_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StSetAccessList(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %6, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %32, i64* %3, align 8
  br label %345

33:                                               ; preds = %2
  %34 = load i32, i32* @CHECK_RIGHT, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = call i32 @GetServerCapsInt(%struct.TYPE_20__* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i64, i64* @ERR_TOO_MANY_ACCESS_LIST, align 8
  store i64 %44, i64* %3, align 8
  br label %345

45:                                               ; preds = %33
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @LockHubList(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_22__* @GetHub(i32* %48, i32 %51)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @UnlockHubList(i32* %53)
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %56 = icmp eq %struct.TYPE_22__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %58, i64* %3, align 8
  br label %345

59:                                               ; preds = %45
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %61 = call i32 @GetHubAdminOption(%struct.TYPE_22__* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = call i32 @GetHubAdminOption(%struct.TYPE_22__* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = call i32 @GetHubAdminOption(%struct.TYPE_22__* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %74 = call i32 @ReleaseHub(%struct.TYPE_22__* %73)
  %75 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %75, i64* %3, align 8
  br label %345

76:                                               ; preds = %68, %59
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = call i32 @GetHubAdminOption(%struct.TYPE_22__* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %90 = call i32 @GetHubAdminOption(%struct.TYPE_22__* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %94 = call i32 @ReleaseHub(%struct.TYPE_22__* %93)
  %95 = load i64, i64* @ERR_TOO_MANY_ACCESS_LIST, align 8
  store i64 %95, i64* %3, align 8
  br label %345

96:                                               ; preds = %85, %81, %76
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @LockList(i32 %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %182

105:                                              ; preds = %96
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 6560
  br i1 %109, label %110, label %150

110:                                              ; preds = %105
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %146, %110
  %112 = load i64, i64* %13, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @LIST_NUM(i32 %115)
  %117 = icmp slt i64 %112, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %111
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %13, align 8
  %123 = call %struct.TYPE_24__* @LIST_DATA(i32 %121, i64 %122)
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %14, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %118
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138, %133, %128, %118
  %144 = load i64, i64* @ERR_VERSION_INVALID, align 8
  store i64 %144, i64* %12, align 8
  br label %149

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %13, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %111

149:                                              ; preds = %143, %111
  br label %150

150:                                              ; preds = %149, %105
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %153, 8234
  br i1 %154, label %155, label %181

155:                                              ; preds = %150
  store i64 0, i64* %13, align 8
  br label %156

156:                                              ; preds = %177, %155
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @LIST_NUM(i32 %160)
  %162 = icmp slt i64 %157, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %156
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* %13, align 8
  %168 = call %struct.TYPE_24__* @LIST_DATA(i32 %166, i64 %167)
  store %struct.TYPE_24__* %168, %struct.TYPE_24__** %15, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @IsEmptyStr(i32 %171)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i64, i64* @ERR_VERSION_INVALID, align 8
  store i64 %175, i64* %12, align 8
  br label %180

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %13, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %13, align 8
  br label %156

180:                                              ; preds = %174, %156
  br label %181

181:                                              ; preds = %180, %150
  br label %182

182:                                              ; preds = %181, %96
  %183 = load i64, i64* %12, align 8
  %184 = load i64, i64* @ERR_NO_ERROR, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %210

186:                                              ; preds = %182
  store i64 0, i64* %13, align 8
  br label %187

187:                                              ; preds = %202, %186
  %188 = load i64, i64* %13, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @LIST_NUM(i32 %191)
  %193 = icmp slt i64 %188, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %187
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* %13, align 8
  %199 = call %struct.TYPE_24__* @LIST_DATA(i32 %197, i64 %198)
  store %struct.TYPE_24__* %199, %struct.TYPE_24__** %16, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %201 = call i32 @Free(%struct.TYPE_24__* %200)
  br label %202

202:                                              ; preds = %194
  %203 = load i64, i64* %13, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %13, align 8
  br label %187

205:                                              ; preds = %187
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @DeleteAll(i32 %208)
  br label %210

210:                                              ; preds = %205, %182
  %211 = load i64, i64* %12, align 8
  %212 = load i64, i64* @ERR_NO_ERROR, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %336

214:                                              ; preds = %210
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ALog(%struct.TYPE_23__* %215, %struct.TYPE_22__* %216, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  store i64 0, i64* %9, align 8
  br label %221

221:                                              ; preds = %320, %214
  %222 = load i64, i64* %9, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %222, %226
  br i1 %227, label %228, label %323

228:                                              ; preds = %221
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = load i64, i64* %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i64 %232
  store %struct.TYPE_24__* %233, %struct.TYPE_24__** %17, align 8
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %243

236:                                              ; preds = %228
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  store i64 0, i64* %238, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  store i64 0, i64* %242, align 8
  br label %243

243:                                              ; preds = %236, %228
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %285

246:                                              ; preds = %243
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %251 = call i64 @StartWith(i32 %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %246
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %258 = call i64 @StartWith(i32 %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253, %246
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @ClearStr(i32 %263, i32 4)
  br label %265

265:                                              ; preds = %260, %253
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %270 = call i64 @StartWith(i32 %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %265
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %277 = call i64 @StartWith(i32 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %272, %265
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @ClearStr(i32 %282, i32 4)
  br label %284

284:                                              ; preds = %279, %272
  br label %285

285:                                              ; preds = %284, %243
  %286 = load i64, i64* %9, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = icmp eq i64 %286, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %285
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @Sort(i32 %296)
  br label %298

298:                                              ; preds = %293, %285
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %301 = load i64, i64* %9, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = icmp ne i64 %301, %306
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 1, i32 0
  %310 = load i64, i64* %9, align 8
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = icmp ne i64 %310, %315
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 1, i32 0
  %319 = call i32 @AddAccessListEx(%struct.TYPE_22__* %299, %struct.TYPE_24__* %300, i32 %309, i32 %318)
  br label %320

320:                                              ; preds = %298
  %321 = load i64, i64* %9, align 8
  %322 = add nsw i64 %321, 1
  store i64 %322, i64* %9, align 8
  br label %221

323:                                              ; preds = %221
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @UnlockList(i32 %326)
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %329 = call i32 @IncrementServerConfigRevision(%struct.TYPE_20__* %328)
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %335 = call i32 @SiHubUpdateProc(%struct.TYPE_22__* %334)
  br label %341

336:                                              ; preds = %210
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @UnlockList(i32 %339)
  br label %341

341:                                              ; preds = %336, %323
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %343 = call i32 @ReleaseHub(%struct.TYPE_22__* %342)
  %344 = load i64, i64* %12, align 8
  store i64 %344, i64* %3, align 8
  br label %345

345:                                              ; preds = %341, %92, %72, %57, %43, %31
  %346 = load i64, i64* %3, align 8
  ret i64 %346
}

declare dso_local i32 @GetServerCapsInt(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_22__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @GetHubAdminOption(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_22__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_24__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @Free(%struct.TYPE_24__*) #1

declare dso_local i32 @DeleteAll(i32) #1

declare dso_local i32 @ALog(%struct.TYPE_23__*, %struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @StartWith(i32, i32) #1

declare dso_local i32 @ClearStr(i32, i32) #1

declare dso_local i32 @Sort(i32) #1

declare dso_local i32 @AddAccessListEx(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_20__*) #1

declare dso_local i32 @SiHubUpdateProc(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
