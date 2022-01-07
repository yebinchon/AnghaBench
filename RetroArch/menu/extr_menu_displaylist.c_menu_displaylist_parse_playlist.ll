; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.playlist_entry = type { i8*, i8*, i8* }

@PL_LABEL_SPACER_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ozone\00", align 1
@PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS = common dso_local global i64 0, align 8
@PLAYLIST_INLINE_CORE_DISPLAY_NEVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"rgui\00", align 1
@PL_LABEL_SPACER_RGUI = common dso_local global i8* null, align 8
@PL_LABEL_SPACER_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"images_history\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"music_history\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"video_history\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@MENU_ENUM_LABEL_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@FILE_TYPE_RPL_ENTRY = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i8*, i32)* @menu_displaylist_parse_playlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_playlist(%struct.TYPE_12__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (i8*)*, align 8
  %17 = alloca [15 x i8], align 1
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.playlist_entry*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* @PL_LABEL_SPACER_MAXLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @playlist_size(i32* %28)
  store i64 %29, i64* %13, align 8
  %30 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %14, align 8
  store i32 0, i32* %15, align 4
  %31 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %31, align 16
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %252

35:                                               ; preds = %4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @string_is_equal(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %81, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PLAYLIST_INLINE_CORE_DISPLAY_NEVER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %58, %48
  store i32 1, i32* %15, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @string_is_equal(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i8*, i8** @PL_LABEL_SPACER_RGUI, align 8
  %74 = trunc i64 %25 to i32
  %75 = call i32 @strlcpy(i8* %27, i8* %73, i32 %74)
  br label %80

76:                                               ; preds = %65
  %77 = load i8*, i8** @PL_LABEL_SPACER_DEFAULT, align 8
  %78 = trunc i64 %25 to i32
  %79 = call i32 @strlcpy(i8* %27, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %72
  br label %81

81:                                               ; preds = %80, %58, %55, %42, %35
  %82 = load i8*, i8** %8, align 8
  %83 = call i64 @string_is_equal(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @string_is_equal(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @string_is_equal(i8* %90, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = call i64 @string_is_equal(i8* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @string_is_equal(i8* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97, %93, %89, %85, %81
  %102 = getelementptr inbounds [15 x i8], [15 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %102, align 1
  %103 = getelementptr inbounds [15 x i8], [15 x i8]* %17, i64 0, i64 0
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strlcpy(i8* %103, i8* %104, i32 15)
  %106 = getelementptr inbounds [15 x i8], [15 x i8]* %17, i64 0, i64 0
  %107 = call i32 @menu_driver_set_thumbnail_system(i8* %106, i32 15)
  br label %129

108:                                              ; preds = %97
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @string_is_empty(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %116 = zext i32 %115 to i64
  %117 = call i8* @llvm.stacksave()
  store i8* %117, i8** %18, align 8
  %118 = alloca i8, i64 %116, align 16
  store i64 %116, i64* %19, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 0, i8* %119, align 16
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = trunc i64 %116 to i32
  %124 = call i32 @fill_pathname_base_noext(i8* %118, i8* %122, i32 %123)
  %125 = trunc i64 %116 to i32
  %126 = call i32 @menu_driver_set_thumbnail_system(i8* %118, i32 %125)
  %127 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %114, %108
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @file_list_reserve(i32 %132, i64 %133)
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @playlist_get_label_display_mode(i32* %135)
  switch i32 %136, label %143 [
    i32 129, label %137
    i32 130, label %138
    i32 128, label %139
    i32 133, label %140
    i32 132, label %141
    i32 131, label %142
  ]

137:                                              ; preds = %129
  store void (i8*)* @label_remove_parens, void (i8*)** %16, align 8
  br label %144

138:                                              ; preds = %129
  store void (i8*)* @label_remove_brackets, void (i8*)** %16, align 8
  br label %144

139:                                              ; preds = %129
  store void (i8*)* @label_remove_parens_and_brackets, void (i8*)** %16, align 8
  br label %144

140:                                              ; preds = %129
  store void (i8*)* @label_keep_disc, void (i8*)** %16, align 8
  br label %144

141:                                              ; preds = %129
  store void (i8*)* @label_keep_region, void (i8*)** %16, align 8
  br label %144

142:                                              ; preds = %129
  store void (i8*)* @label_keep_region_and_disc, void (i8*)** %16, align 8
  br label %144

143:                                              ; preds = %129
  store void (i8*)* null, void (i8*)** %16, align 8
  br label %144

144:                                              ; preds = %143, %142, %141, %140, %139, %138, %137
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %248, %144
  %146 = load i32, i32* %10, align 4
  %147 = zext i32 %146 to i64
  %148 = load i64, i64* %13, align 8
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %150, label %251

150:                                              ; preds = %145
  %151 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %152 = zext i32 %151 to i64
  %153 = call i8* @llvm.stacksave()
  store i8* %153, i8** %20, align 8
  %154 = alloca i8, i64 %152, align 16
  store i64 %152, i64* %21, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %22, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 0, i8* %155, align 16
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @playlist_get_index(i32* %156, i32 %157, %struct.playlist_entry** %22)
  %159 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %160 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @string_is_empty(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %222, label %164

164:                                              ; preds = %150
  %165 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %166 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @string_is_empty(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %172 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = trunc i64 %152 to i32
  %175 = call i32 @fill_short_pathname_representation(i8* %154, i8* %173, i32 %174)
  br label %182

176:                                              ; preds = %164
  %177 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %178 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = trunc i64 %152 to i32
  %181 = call i32 @strlcpy(i8* %154, i8* %179, i32 %180)
  br label %182

182:                                              ; preds = %176, %170
  %183 = load void (i8*)*, void (i8*)** %16, align 8
  %184 = icmp ne void (i8*)* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load void (i8*)*, void (i8*)** %16, align 8
  call void %186(i8* %154)
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %187
  %191 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %192 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @string_is_empty(i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %190
  %197 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %198 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @string_is_equal(i8* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %196
  %203 = trunc i64 %152 to i32
  %204 = call i32 @strlcat(i8* %154, i8* %27, i32 %203)
  %205 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %206 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = trunc i64 %152 to i32
  %209 = call i32 @strlcat(i8* %154, i8* %207, i32 %208)
  br label %210

210:                                              ; preds = %202, %196, %190
  br label %211

211:                                              ; preds = %210, %187
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %216 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_ENTRY, align 4
  %219 = load i32, i32* @FILE_TYPE_RPL_ENTRY, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @menu_entries_append_enum(i32 %214, i8* %154, i8* %217, i32 %218, i32 %219, i32 0, i32 %220)
  br label %242

222:                                              ; preds = %150
  %223 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %224 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load %struct.playlist_entry*, %struct.playlist_entry** %22, align 8
  %229 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %228, i32 0, i32 2
  %230 = load i8*, i8** %229, align 8
  %231 = trunc i64 %152 to i32
  %232 = call i32 @strlcpy(i8* %154, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_ENTRY, align 4
  %239 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @menu_entries_append_enum(i32 %236, i8* %154, i8* %237, i32 %238, i32 %239, i32 0, i32 %240)
  br label %242

242:                                              ; preds = %233, %211
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %247)
  br label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %10, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %10, align 4
  br label %145

251:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %255

252:                                              ; preds = %34
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  store i32 1, i32* %254, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %255

255:                                              ; preds = %252, %251
  %256 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @playlist_size(i32*) #2

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @menu_driver_set_thumbnail_system(i8*, i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @file_list_reserve(i32, i64) #2

declare dso_local i32 @playlist_get_label_display_mode(i32*) #2

declare dso_local void @label_remove_parens(i8*) #2

declare dso_local void @label_remove_brackets(i8*) #2

declare dso_local void @label_remove_parens_and_brackets(i8*) #2

declare dso_local void @label_keep_disc(i8*) #2

declare dso_local void @label_keep_region(i8*) #2

declare dso_local void @label_keep_region_and_disc(i8*) #2

declare dso_local i32 @playlist_get_index(i32*, i32, %struct.playlist_entry**) #2

declare dso_local i32 @fill_short_pathname_representation(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
