; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_icon_get_id.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_icon_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_9__ = type { i64 }

@STRIPES_TEXTURE_CORE_OPTIONS = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_ADD_FAVORITE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_RENAME = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_CHEAT_OPTIONS = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_DISK_OPTIONS = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_SHADER_OPTIONS = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_ACHIEVEMENT_LIST = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_SAVESTATE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_LOADSTATE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_UNDO = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_SCREENSHOT = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_CLOSE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_RELOAD = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_RESUME = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_FOLDER = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_RDB = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_FILE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_FAVORITE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_MUSIC = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_ZIP = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_IMAGE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_MOVIE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_CORE = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_CURSOR = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_RUN = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_CORE_INFO = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_SUBSETTING = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_SETTING = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_WIFI = common dso_local global i64 0, align 8
@MENU_SETTINGS_CHEEVOS_START = common dso_local global i32 0, align 4
@MENU_SETTINGS_NETPLAY_ROOMS_START = common dso_local global i32 0, align 4
@STRIPES_TEXTURE_ROOM = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_ROOM_LAN = common dso_local global i64 0, align 8
@STRIPES_TEXTURE_ROOM_MITM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32)* @stripes_icon_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stripes_icon_get_id(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %175 [
    i32 173, label %15
    i32 166, label %15
    i32 177, label %23
    i32 176, label %23
    i32 162, label %31
    i32 164, label %31
    i32 174, label %39
    i32 175, label %47
    i32 171, label %55
    i32 155, label %63
    i32 179, label %71
    i32 178, label %79
    i32 157, label %87
    i32 167, label %95
    i32 165, label %103
    i32 153, label %103
    i32 152, label %103
    i32 154, label %111
    i32 172, label %119
    i32 161, label %127
    i32 163, label %135
    i32 160, label %143
    i32 159, label %151
    i32 158, label %151
    i32 169, label %159
    i32 170, label %159
    i32 168, label %167
  ]

15:                                               ; preds = %6, %6
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @STRIPES_TEXTURE_CORE_OPTIONS, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  br label %445

23:                                               ; preds = %6, %6
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @STRIPES_TEXTURE_ADD_FAVORITE, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %445

31:                                               ; preds = %6, %6
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @STRIPES_TEXTURE_RENAME, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  br label %445

39:                                               ; preds = %6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  br label %445

47:                                               ; preds = %6
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @STRIPES_TEXTURE_CHEAT_OPTIONS, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %445

55:                                               ; preds = %6
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @STRIPES_TEXTURE_DISK_OPTIONS, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  br label %445

63:                                               ; preds = %6
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @STRIPES_TEXTURE_SHADER_OPTIONS, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  br label %445

71:                                               ; preds = %6
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @STRIPES_TEXTURE_ACHIEVEMENT_LIST, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %7, align 8
  br label %445

79:                                               ; preds = %6
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @STRIPES_TEXTURE_ACHIEVEMENT_LIST, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %7, align 8
  br label %445

87:                                               ; preds = %6
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* @STRIPES_TEXTURE_SAVESTATE, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  br label %445

95:                                               ; preds = %6
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @STRIPES_TEXTURE_LOADSTATE, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %7, align 8
  br label %445

103:                                              ; preds = %6, %6, %6
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @STRIPES_TEXTURE_UNDO, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %7, align 8
  br label %445

111:                                              ; preds = %6
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @STRIPES_TEXTURE_SCREENSHOT, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %7, align 8
  br label %445

119:                                              ; preds = %6
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @STRIPES_TEXTURE_CLOSE, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %7, align 8
  br label %445

127:                                              ; preds = %6
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @STRIPES_TEXTURE_RELOAD, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %7, align 8
  br label %445

135:                                              ; preds = %6
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @STRIPES_TEXTURE_RENAME, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %7, align 8
  br label %445

143:                                              ; preds = %6
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @STRIPES_TEXTURE_RESUME, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %7, align 8
  br label %445

151:                                              ; preds = %6, %6
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* @STRIPES_TEXTURE_SAVESTATE, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %7, align 8
  br label %445

159:                                              ; preds = %6, %6
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @STRIPES_TEXTURE_FOLDER, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %7, align 8
  br label %445

167:                                              ; preds = %6
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @STRIPES_TEXTURE_RDB, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %7, align 8
  br label %445

175:                                              ; preds = %6
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %12, align 4
  switch i32 %177, label %437 [
    i32 191, label %178
    i32 184, label %186
    i32 187, label %186
    i32 180, label %194
    i32 194, label %232
    i32 185, label %240
    i32 189, label %248
    i32 188, label %248
    i32 186, label %256
    i32 193, label %264
    i32 190, label %264
    i32 182, label %272
    i32 192, label %280
    i32 183, label %288
    i32 136, label %288
    i32 146, label %296
    i32 135, label %304
    i32 138, label %312
    i32 181, label %320
    i32 143, label %320
    i32 141, label %328
    i32 156, label %328
    i32 142, label %336
    i32 145, label %344
    i32 144, label %352
    i32 140, label %360
    i32 134, label %368
    i32 139, label %376
    i32 137, label %384
    i32 147, label %392
    i32 133, label %413
    i32 151, label %421
    i32 132, label %429
  ]

178:                                              ; preds = %176
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* @STRIPES_TEXTURE_FOLDER, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %7, align 8
  br label %445

186:                                              ; preds = %176, %176
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i64, i64* @STRIPES_TEXTURE_FILE, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %7, align 8
  br label %445

194:                                              ; preds = %176
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %196 = icmp ne %struct.TYPE_9__* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %7, align 8
  br label %445

201:                                              ; preds = %194
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @stripes_get_system_tab(%struct.TYPE_10__* %202, i32 %205)
  switch i32 %206, label %223 [
    i32 131, label %207
    i32 129, label %215
  ]

207:                                              ; preds = %201
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = load i64, i64* @STRIPES_TEXTURE_FAVORITE, align 8
  %213 = getelementptr inbounds i64, i64* %211, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %7, align 8
  br label %445

215:                                              ; preds = %201
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i64, i64* @STRIPES_TEXTURE_MUSIC, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  store i64 %222, i64* %7, align 8
  br label %445

223:                                              ; preds = %201
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* @STRIPES_TEXTURE_FILE, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %7, align 8
  br label %445

232:                                              ; preds = %176
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i64*, i64** %235, align 8
  %237 = load i64, i64* @STRIPES_TEXTURE_ZIP, align 8
  %238 = getelementptr inbounds i64, i64* %236, i64 %237
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %7, align 8
  br label %445

240:                                              ; preds = %176
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i64*, i64** %243, align 8
  %245 = load i64, i64* @STRIPES_TEXTURE_MUSIC, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %7, align 8
  br label %445

248:                                              ; preds = %176, %176
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load i64, i64* @STRIPES_TEXTURE_IMAGE, align 8
  %254 = getelementptr inbounds i64, i64* %252, i64 %253
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %7, align 8
  br label %445

256:                                              ; preds = %176
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* @STRIPES_TEXTURE_MOVIE, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %7, align 8
  br label %445

264:                                              ; preds = %176, %176
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = load i64, i64* @STRIPES_TEXTURE_CORE, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  store i64 %271, i64* %7, align 8
  br label %445

272:                                              ; preds = %176
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = load i64, i64* @STRIPES_TEXTURE_RDB, align 8
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %7, align 8
  br label %445

280:                                              ; preds = %176
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = load i64, i64* @STRIPES_TEXTURE_CURSOR, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %7, align 8
  br label %445

288:                                              ; preds = %176, %176
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = load i64, i64* @STRIPES_TEXTURE_RUN, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %7, align 8
  br label %445

296:                                              ; preds = %176
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = load i64, i64* @STRIPES_TEXTURE_CLOSE, align 8
  %302 = getelementptr inbounds i64, i64* %300, i64 %301
  %303 = load i64, i64* %302, align 8
  store i64 %303, i64* %7, align 8
  br label %445

304:                                              ; preds = %176
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = load i64, i64* @STRIPES_TEXTURE_SAVESTATE, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %7, align 8
  br label %445

312:                                              ; preds = %176
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  %316 = load i64*, i64** %315, align 8
  %317 = load i64, i64* @STRIPES_TEXTURE_LOADSTATE, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %7, align 8
  br label %445

320:                                              ; preds = %176, %176
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i64*, i64** %323, align 8
  %325 = load i64, i64* @STRIPES_TEXTURE_CORE_INFO, align 8
  %326 = getelementptr inbounds i64, i64* %324, i64 %325
  %327 = load i64, i64* %326, align 8
  store i64 %327, i64* %7, align 8
  br label %445

328:                                              ; preds = %176, %176
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = load i64*, i64** %331, align 8
  %333 = load i64, i64* @STRIPES_TEXTURE_CORE_OPTIONS, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %7, align 8
  br label %445

336:                                              ; preds = %176
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load i64*, i64** %339, align 8
  %341 = load i64, i64* @STRIPES_TEXTURE_INPUT_REMAPPING_OPTIONS, align 8
  %342 = getelementptr inbounds i64, i64* %340, i64 %341
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %7, align 8
  br label %445

344:                                              ; preds = %176
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = load i64, i64* @STRIPES_TEXTURE_CHEAT_OPTIONS, align 8
  %350 = getelementptr inbounds i64, i64* %348, i64 %349
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %7, align 8
  br label %445

352:                                              ; preds = %176
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i64*, i64** %355, align 8
  %357 = load i64, i64* @STRIPES_TEXTURE_DISK_OPTIONS, align 8
  %358 = getelementptr inbounds i64, i64* %356, i64 %357
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %7, align 8
  br label %445

360:                                              ; preds = %176
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i64*, i64** %363, align 8
  %365 = load i64, i64* @STRIPES_TEXTURE_SHADER_OPTIONS, align 8
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %7, align 8
  br label %445

368:                                              ; preds = %176
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = load i64, i64* @STRIPES_TEXTURE_SCREENSHOT, align 8
  %374 = getelementptr inbounds i64, i64* %372, i64 %373
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %7, align 8
  br label %445

376:                                              ; preds = %176
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i64*, i64** %379, align 8
  %381 = load i64, i64* @STRIPES_TEXTURE_CLOSE, align 8
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %7, align 8
  br label %445

384:                                              ; preds = %176
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i64*, i64** %387, align 8
  %389 = load i64, i64* @STRIPES_TEXTURE_RELOAD, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %7, align 8
  br label %445

392:                                              ; preds = %176
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = icmp eq i32 %395, 3
  br i1 %396, label %397, label %405

397:                                              ; preds = %392
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  %401 = load i64*, i64** %400, align 8
  %402 = load i64, i64* @STRIPES_TEXTURE_SUBSETTING, align 8
  %403 = getelementptr inbounds i64, i64* %401, i64 %402
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %7, align 8
  br label %445

405:                                              ; preds = %392
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = load i64*, i64** %408, align 8
  %410 = load i64, i64* @STRIPES_TEXTURE_SETTING, align 8
  %411 = getelementptr inbounds i64, i64* %409, i64 %410
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %7, align 8
  br label %445

413:                                              ; preds = %176
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = load i64, i64* @STRIPES_TEXTURE_SETTING, align 8
  %419 = getelementptr inbounds i64, i64* %417, i64 %418
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %7, align 8
  br label %445

421:                                              ; preds = %176
  %422 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i64*, i64** %424, align 8
  %426 = load i64, i64* @STRIPES_TEXTURE_CORE_INFO, align 8
  %427 = getelementptr inbounds i64, i64* %425, i64 %426
  %428 = load i64, i64* %427, align 8
  store i64 %428, i64* %7, align 8
  br label %445

429:                                              ; preds = %176
  %430 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 0
  %433 = load i64*, i64** %432, align 8
  %434 = load i64, i64* @STRIPES_TEXTURE_WIFI, align 8
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %7, align 8
  br label %445

437:                                              ; preds = %176
  %438 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 0
  %441 = load i64*, i64** %440, align 8
  %442 = load i64, i64* @STRIPES_TEXTURE_SUBSETTING, align 8
  %443 = getelementptr inbounds i64, i64* %441, i64 %442
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %7, align 8
  br label %445

445:                                              ; preds = %437, %429, %421, %413, %405, %397, %384, %376, %368, %360, %352, %344, %336, %328, %320, %312, %304, %296, %288, %280, %272, %264, %256, %248, %240, %232, %224, %215, %207, %197, %186, %178, %167, %159, %151, %143, %135, %127, %119, %111, %103, %95, %87, %79, %71, %63, %55, %47, %39, %31, %23, %15
  %446 = load i64, i64* %7, align 8
  ret i64 %446
}

declare dso_local i32 @stripes_get_system_tab(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
