; ModuleID = '/home/carl/AnghaBench/AppImageKit/src/extr_AppRun.c_main.c'
source_filename = "/home/carl/AnghaBench/AppImageKit/src/extr_AppRun.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not access /proc/self/exe\0A\00", align 1
@filter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"No .desktop files found\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not scan directory %s\0A\00", align 1
@LINE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Executable not found, make sure there is a line starting with 'Exec='\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Exec=\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"WARNING: Desktop file field code %%%c is not currently supported\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"WARNING: Invalid desktop file field code %%%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s/usr\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Could not cd into %s\0A\00", align 1
@new_pythonhome = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"PYTHONHOME=%s/usr/\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@new_path = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [64 x i8] c"PATH=%s/usr/bin/:%s/usr/sbin/:%s/usr/games/:%s/bin/:%s/sbin/:%s\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@new_ld_library_path = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [191 x i8] c"LD_LIBRARY_PATH=%s/usr/lib/:%s/usr/lib/i386-linux-gnu/:%s/usr/lib/x86_64-linux-gnu/:%s/usr/lib32/:%s/usr/lib64/:%s/lib/:%s/lib/i386-linux-gnu/:%s/lib/x86_64-linux-gnu/:%s/lib32/:%s/lib64/:%s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"PYTHONPATH\00", align 1
@new_pythonpath = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [37 x i8] c"PYTHONPATH=%s/usr/share/pyshared/:%s\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"XDG_DATA_DIRS\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"/usr/local/share/:/usr/share/\00", align 1
@new_xdg_data_dirs = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"XDG_DATA_DIRS=%s/usr/share/:%s\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"PERLLIB\00", align 1
@new_perllib = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [49 x i8] c"PERLLIB=%s/usr/share/perl5/:%s/usr/lib/perl5/:%s\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"GSETTINGS_SCHEMA_DIR\00", align 1
@new_gsettings_schema_dir = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [55 x i8] c"GSETTINGS_SCHEMA_DIR=%s/usr/share/glib-2.0/schemas/:%s\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"QT_PLUGIN_PATH\00", align 1
@new_qt_plugin_path = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [330 x i8] c"QT_PLUGIN_PATH=%s/usr/lib/qt4/plugins/:%s/usr/lib/i386-linux-gnu/qt4/plugins/:%s/usr/lib/x86_64-linux-gnu/qt4/plugins/:%s/usr/lib32/qt4/plugins/:%s/usr/lib64/qt4/plugins/:%s/usr/lib/qt5/plugins/:%s/usr/lib/i386-linux-gnu/qt5/plugins/:%s/usr/lib/x86_64-linux-gnu/qt5/plugins/:%s/usr/lib32/qt5/plugins/:%s/usr/lib64/qt5/plugins/:%s\00", align 1
@new_gspath = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [47 x i8] c"GST_PLUGIN_SYSTEM_PATH=%s/usr/lib/gstreamer:%s\00", align 1
@new_gspath1 = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [55 x i8] c"GST_PLUGIN_SYSTEM_PATH_1_0=%s/usr/lib/gstreamer-1.0:%s\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"PYTHONDONTWRITEBYTECODE=1\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [26 x i8] c"Error executing '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8**, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = call i32 @realpath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  %30 = call i8* @dirname(i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %2
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @filter, align 4
  %38 = call i32 @scandir(i8* %36, %struct.dirent*** %8, i32 %37, i32* null)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %50

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i64, i64* @LINE_SIZE, align 8
  %52 = call i8* @calloc(i64 %51, i32 1)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* @LINE_SIZE, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.dirent**, %struct.dirent*** %8, align 8
  %57 = getelementptr inbounds %struct.dirent*, %struct.dirent** %56, i64 0
  %58 = load %struct.dirent*, %struct.dirent** %57, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i32* @fopen(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %63, i32** %10, align 8
  %64 = load i64, i64* @LINE_SIZE, align 8
  %65 = call i8* @malloc(i64 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i64, i64* @LINE_SIZE, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %74, %50
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @getline(i8** %11, i64* %12, i32* %68)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %67, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  store i8* %82, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %83

83:                                               ; preds = %150, %78
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @LINE_SIZE, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %153

87:                                               ; preds = %83
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  br label %153

94:                                               ; preds = %87
  %95 = load i8*, i8** %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = load i8*, i8** %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 13
  br i1 %107, label %108, label %120

108:                                              ; preds = %101, %94
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %117, 2
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8 0, i8* %119, align 1
  br label %153

120:                                              ; preds = %101
  %121 = load i8*, i8** %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 34
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %14, align 4
  br label %147

132:                                              ; preds = %120
  %133 = load i8*, i8** %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %146

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %11, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 0, i8* %145, align 1
  br label %146

146:                                              ; preds = %142, %139, %132
  br label %147

147:                                              ; preds = %146, %127
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %12, align 8
  br label %83

153:                                              ; preds = %108, %93, %83
  %154 = load i8*, i8** %13, align 8
  store i8* %154, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %169, %153
  %156 = load i8*, i8** %15, align 8
  %157 = call i64 @strlen(i8* %156)
  %158 = add i64 %157, 1
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 %158
  store i8* %160, i8** %15, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load i8*, i8** %15, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %162, %155
  %168 = phi i1 [ false, %155 ], [ %166, %162 ]
  br i1 %168, label %169, label %172

169:                                              ; preds = %167
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %155

172:                                              ; preds = %167
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = call i8* @llvm.stacksave()
  store i8* %178, i8** %17, align 8
  %179 = alloca i8*, i64 %177, align 16
  store i64 %177, i64* %18, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 0
  store i8* %180, i8** %181, align 16
  store i32 1, i32* %19, align 4
  %182 = load i8*, i8** %13, align 8
  store i8* %182, i8** %15, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 1
  store i8** %186, i8*** %21, align 8
  br label %187

187:                                              ; preds = %277, %172
  %188 = load i8*, i8** %15, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = add i64 %189, 1
  %191 = load i8*, i8** %15, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %15, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i8*, i8** %15, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br label %199

199:                                              ; preds = %194, %187
  %200 = phi i1 [ false, %187 ], [ %198, %194 ]
  br i1 %200, label %201, label %278

201:                                              ; preds = %199
  %202 = load i8*, i8** %15, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 37
  br i1 %206, label %219, label %207

207:                                              ; preds = %201
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 34
  br i1 %212, label %213, label %271

213:                                              ; preds = %207
  %214 = load i8*, i8** %15, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 37
  br i1 %218, label %219, label %271

219:                                              ; preds = %213, %201
  %220 = load i8*, i8** %15, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 37
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %220, i64 %228
  %230 = load i8, i8* %229, align 1
  store i8 %230, i8* %22, align 1
  %231 = load i8, i8* %22, align 1
  %232 = sext i8 %231 to i32
  switch i32 %232, label %266 [
    i32 102, label %233
    i32 117, label %233
    i32 70, label %247
    i32 85, label %247
    i32 105, label %262
    i32 99, label %262
    i32 107, label %262
  ]

233:                                              ; preds = %219, %219
  %234 = load i32, i32* %20, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %233
  %237 = load i8**, i8*** %21, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i32 1
  store i8** %238, i8*** %21, align 8
  %239 = load i8*, i8** %237, align 8
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8*, i8** %179, i64 %242
  store i8* %239, i8** %243, align 8
  %244 = load i32, i32* %20, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %20, align 4
  br label %246

246:                                              ; preds = %236, %233
  br label %270

247:                                              ; preds = %219, %219
  br label %248

248:                                              ; preds = %251, %247
  %249 = load i32, i32* %20, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load i8**, i8*** %21, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i32 1
  store i8** %253, i8*** %21, align 8
  %254 = load i8*, i8** %252, align 8
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %19, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8*, i8** %179, i64 %257
  store i8* %254, i8** %258, align 8
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %20, align 4
  br label %248

261:                                              ; preds = %248
  br label %270

262:                                              ; preds = %219, %219, %219
  %263 = load i32, i32* @stderr, align 4
  %264 = load i8, i8* %22, align 1
  %265 = call i32 @fprintf(i32 %263, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i8 signext %264)
  br label %270

266:                                              ; preds = %219
  %267 = load i32, i32* @stderr, align 4
  %268 = load i8, i8* %22, align 1
  %269 = call i32 @fprintf(i32 %267, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8 signext %268)
  br label %270

270:                                              ; preds = %266, %262, %261, %246
  br label %277

271:                                              ; preds = %213, %207
  %272 = load i8*, i8** %15, align 8
  %273 = load i32, i32* %19, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %19, align 4
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i8*, i8** %179, i64 %275
  store i8* %272, i8** %276, align 8
  br label %277

277:                                              ; preds = %271, %270
  br label %187

278:                                              ; preds = %199
  br label %279

279:                                              ; preds = %282, %278
  %280 = load i32, i32* %20, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load i8**, i8*** %21, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i32 1
  store i8** %284, i8*** %21, align 8
  %285 = load i8*, i8** %283, align 8
  %286 = load i32, i32* %19, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %19, align 4
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8*, i8** %179, i64 %288
  store i8* %285, i8** %289, align 8
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %20, align 4
  br label %279

292:                                              ; preds = %279
  %293 = load i32, i32* %19, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8*, i8** %179, i64 %294
  store i8* null, i8** %295, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = call i64 @strlen(i8* %296)
  store i64 %297, i64* %23, align 8
  %298 = load i64, i64* %23, align 8
  %299 = add i64 %298, 5
  %300 = call i8* @malloc(i64 %299)
  store i8* %300, i8** %24, align 8
  %301 = load i8*, i8** %24, align 8
  %302 = load i64, i64* %23, align 8
  %303 = add i64 %302, 5
  %304 = load i8*, i8** %6, align 8
  %305 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %301, i64 %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %304)
  %306 = load i8*, i8** %24, align 8
  %307 = call i32 @chdir(i8* %306)
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* %7, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %292
  %311 = load i8*, i8** %24, align 8
  %312 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %311)
  br label %313

313:                                              ; preds = %310, %292
  %314 = load i8*, i8** @new_pythonhome, align 8
  %315 = load i64, i64* %23, align 8
  %316 = load i8*, i8** %6, align 8
  %317 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %314, i64 %315, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %316)
  %318 = call i64 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %313
  %321 = inttoptr i64 %318 to i8*
  br label %323

322:                                              ; preds = %313
  br label %323

323:                                              ; preds = %322, %320
  %324 = phi i8* [ %321, %320 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %322 ]
  store i8* %324, i8** %25, align 8
  %325 = load i8*, i8** @new_path, align 8
  %326 = load i64, i64* %23, align 8
  %327 = mul i64 %326, 5
  %328 = load i8*, i8** %25, align 8
  %329 = call i64 @strlen(i8* %328)
  %330 = add i64 %327, %329
  %331 = load i8*, i8** %6, align 8
  %332 = load i8*, i8** %6, align 8
  %333 = load i8*, i8** %6, align 8
  %334 = load i8*, i8** %6, align 8
  %335 = load i8*, i8** %6, align 8
  %336 = load i8*, i8** %25, align 8
  %337 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %325, i64 %330, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i64 0, i64 0), i8* %331, i8* %332, i8* %333, i8* %334, i8* %335, i8* %336)
  %338 = call i64 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %323
  %341 = inttoptr i64 %338 to i8*
  br label %343

342:                                              ; preds = %323
  br label %343

343:                                              ; preds = %342, %340
  %344 = phi i8* [ %341, %340 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %342 ]
  store i8* %344, i8** %25, align 8
  %345 = load i8*, i8** @new_ld_library_path, align 8
  %346 = load i64, i64* %23, align 8
  %347 = mul i64 %346, 10
  %348 = load i8*, i8** %25, align 8
  %349 = call i64 @strlen(i8* %348)
  %350 = add i64 %347, %349
  %351 = load i8*, i8** %6, align 8
  %352 = load i8*, i8** %6, align 8
  %353 = load i8*, i8** %6, align 8
  %354 = load i8*, i8** %6, align 8
  %355 = load i8*, i8** %6, align 8
  %356 = load i8*, i8** %6, align 8
  %357 = load i8*, i8** %6, align 8
  %358 = load i8*, i8** %6, align 8
  %359 = load i8*, i8** %6, align 8
  %360 = load i8*, i8** %6, align 8
  %361 = load i8*, i8** %25, align 8
  %362 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %345, i64 %350, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.17, i64 0, i64 0), i8* %351, i8* %352, i8* %353, i8* %354, i8* %355, i8* %356, i8* %357, i8* %358, i8* %359, i8* %360, i8* %361)
  %363 = call i64 @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %343
  %366 = inttoptr i64 %363 to i8*
  br label %368

367:                                              ; preds = %343
  br label %368

368:                                              ; preds = %367, %365
  %369 = phi i8* [ %366, %365 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %367 ]
  store i8* %369, i8** %25, align 8
  %370 = load i8*, i8** @new_pythonpath, align 8
  %371 = load i64, i64* %23, align 8
  %372 = load i8*, i8** %25, align 8
  %373 = call i64 @strlen(i8* %372)
  %374 = add i64 %371, %373
  %375 = load i8*, i8** %6, align 8
  %376 = load i8*, i8** %25, align 8
  %377 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %370, i64 %374, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* %375, i8* %376)
  %378 = call i64 @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %368
  %381 = inttoptr i64 %378 to i8*
  br label %383

382:                                              ; preds = %368
  br label %383

383:                                              ; preds = %382, %380
  %384 = phi i8* [ %381, %380 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), %382 ]
  store i8* %384, i8** %25, align 8
  %385 = load i8*, i8** @new_xdg_data_dirs, align 8
  %386 = load i64, i64* %23, align 8
  %387 = load i8*, i8** %25, align 8
  %388 = call i64 @strlen(i8* %387)
  %389 = add i64 %386, %388
  %390 = load i8*, i8** %6, align 8
  %391 = load i8*, i8** %25, align 8
  %392 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %385, i64 %389, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %390, i8* %391)
  %393 = call i64 @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %383
  %396 = inttoptr i64 %393 to i8*
  br label %398

397:                                              ; preds = %383
  br label %398

398:                                              ; preds = %397, %395
  %399 = phi i8* [ %396, %395 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %397 ]
  store i8* %399, i8** %25, align 8
  %400 = load i8*, i8** @new_perllib, align 8
  %401 = load i64, i64* %23, align 8
  %402 = mul i64 %401, 2
  %403 = load i8*, i8** %25, align 8
  %404 = call i64 @strlen(i8* %403)
  %405 = add i64 %402, %404
  %406 = load i8*, i8** %6, align 8
  %407 = load i8*, i8** %6, align 8
  %408 = load i8*, i8** %25, align 8
  %409 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %400, i64 %405, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i8* %406, i8* %407, i8* %408)
  %410 = call i64 @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %398
  %413 = inttoptr i64 %410 to i8*
  br label %415

414:                                              ; preds = %398
  br label %415

415:                                              ; preds = %414, %412
  %416 = phi i8* [ %413, %412 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %414 ]
  store i8* %416, i8** %25, align 8
  %417 = load i8*, i8** @new_gsettings_schema_dir, align 8
  %418 = load i64, i64* %23, align 8
  %419 = load i8*, i8** %25, align 8
  %420 = call i64 @strlen(i8* %419)
  %421 = add i64 %418, %420
  %422 = load i8*, i8** %6, align 8
  %423 = load i8*, i8** %25, align 8
  %424 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %417, i64 %421, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.26, i64 0, i64 0), i8* %422, i8* %423)
  %425 = call i64 @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %415
  %428 = inttoptr i64 %425 to i8*
  br label %430

429:                                              ; preds = %415
  br label %430

430:                                              ; preds = %429, %427
  %431 = phi i8* [ %428, %427 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %429 ]
  store i8* %431, i8** %25, align 8
  %432 = load i8*, i8** @new_qt_plugin_path, align 8
  %433 = load i64, i64* %23, align 8
  %434 = mul i64 %433, 10
  %435 = load i8*, i8** %25, align 8
  %436 = call i64 @strlen(i8* %435)
  %437 = add i64 %434, %436
  %438 = load i8*, i8** %6, align 8
  %439 = load i8*, i8** %6, align 8
  %440 = load i8*, i8** %6, align 8
  %441 = load i8*, i8** %6, align 8
  %442 = load i8*, i8** %6, align 8
  %443 = load i8*, i8** %6, align 8
  %444 = load i8*, i8** %6, align 8
  %445 = load i8*, i8** %6, align 8
  %446 = load i8*, i8** %6, align 8
  %447 = load i8*, i8** %6, align 8
  %448 = load i8*, i8** %25, align 8
  %449 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %432, i64 %437, i8* getelementptr inbounds ([330 x i8], [330 x i8]* @.str.28, i64 0, i64 0), i8* %438, i8* %439, i8* %440, i8* %441, i8* %442, i8* %443, i8* %444, i8* %445, i8* %446, i8* %447, i8* %448)
  %450 = load i8*, i8** @new_gspath, align 8
  %451 = load i64, i64* %23, align 8
  %452 = load i8*, i8** %25, align 8
  %453 = call i64 @strlen(i8* %452)
  %454 = add i64 %451, %453
  %455 = load i8*, i8** %6, align 8
  %456 = load i8*, i8** %25, align 8
  %457 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %450, i64 %454, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i8* %455, i8* %456)
  %458 = load i8*, i8** @new_gspath1, align 8
  %459 = load i64, i64* %23, align 8
  %460 = load i8*, i8** %25, align 8
  %461 = call i64 @strlen(i8* %460)
  %462 = add i64 %459, %461
  %463 = load i8*, i8** %6, align 8
  %464 = load i8*, i8** %25, align 8
  %465 = call i32 (i8*, i64, i8*, i8*, ...) @SET_NEW_ENV(i8* %458, i64 %462, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i64 0, i64 0), i8* %463, i8* %464)
  %466 = call i32 @putenv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  %467 = load i8*, i8** %13, align 8
  %468 = call i32 @execvp(i8* %467, i8** %179)
  store i32 %468, i32* %7, align 4
  %469 = load i32, i32* @errno, align 4
  store i32 %469, i32* %28, align 4
  %470 = load i32, i32* %7, align 4
  %471 = icmp eq i32 %470, -1
  br i1 %471, label %472, label %477

472:                                              ; preds = %430
  %473 = load i8*, i8** %13, align 8
  %474 = load i32, i32* %28, align 4
  %475 = call i32 @strerror(i32 %474)
  %476 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i8* %473, i32 %475)
  br label %477

477:                                              ; preds = %472, %430
  %478 = load i8*, i8** %11, align 8
  %479 = call i32 @free(i8* %478)
  %480 = load i8*, i8** %9, align 8
  %481 = call i32 @free(i8* %480)
  %482 = load i8*, i8** %24, align 8
  %483 = call i32 @free(i8* %482)
  %484 = load i8*, i8** @new_pythonhome, align 8
  %485 = call i32 @free(i8* %484)
  %486 = load i8*, i8** @new_path, align 8
  %487 = call i32 @free(i8* %486)
  %488 = load i8*, i8** @new_ld_library_path, align 8
  %489 = call i32 @free(i8* %488)
  %490 = load i8*, i8** @new_pythonpath, align 8
  %491 = call i32 @free(i8* %490)
  %492 = load i8*, i8** @new_xdg_data_dirs, align 8
  %493 = call i32 @free(i8* %492)
  %494 = load i8*, i8** @new_perllib, align 8
  %495 = call i32 @free(i8* %494)
  %496 = load i8*, i8** @new_gsettings_schema_dir, align 8
  %497 = call i32 @free(i8* %496)
  %498 = load i8*, i8** @new_qt_plugin_path, align 8
  %499 = call i32 @free(i8* %498)
  store i32 0, i32* %3, align 4
  %500 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %500)
  %501 = load i32, i32* %3, align 4
  ret i32 %501
}

declare dso_local i8* @dirname(i32) #1

declare dso_local i32 @realpath(i8*, i32*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @scandir(i8*, %struct.dirent***, i32, i32*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @SET_NEW_ENV(i8*, i64, i8*, i8*, ...) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
