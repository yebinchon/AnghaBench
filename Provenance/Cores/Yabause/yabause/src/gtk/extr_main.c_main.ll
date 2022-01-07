; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i8* }

@DEBUG_STDERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"yabause\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gtk\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"yabause.ini\00", align 1
@inifile = common dso_local global i32* null, align 8
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@keyfile = common dso_local global i32 0, align 4
@yui = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"Gtk\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@biospath = common dso_local global i8* null, align 8
@yinit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"--bios=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@cdpath = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"--iso=\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"--cdrom=\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"-ns\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--nosound\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"--autoload\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"--autostart\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"--fullscreen\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"--autoframeskip=\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"--binary=\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%[^:]:%x\00", align 1
@G_KEY_FILE_NONE = common dso_local global i32 0, align 4
@YTSDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = call i32 (...) @LogStart()
  %17 = load i32, i32* @DEBUG_STDERR, align 4
  %18 = call i32 @LogChangeOutput(i32 %17, i32* null)
  %19 = call i32 (...) @g_get_user_config_dir()
  %20 = call i32* (i32, i8*, i8*, ...) @g_build_filename(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %20, i32** @inifile, align 8
  %21 = load i32*, i32** @inifile, align 8
  %22 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %23 = call i64 @g_file_test(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %2
  %26 = call i32 (...) @g_get_user_config_dir()
  %27 = call i32* (i32, i8*, i8*, ...) @g_build_filename(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32* %27, i32** %8, align 8
  %28 = call i32 (...) @g_get_user_config_dir()
  %29 = call i32* (i32, i8*, i8*, ...) @g_build_filename(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* null)
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %32 = call i64 @g_file_test(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @g_mkdir_with_parents(i32* %35, i32 493)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @g_free(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %42 = call i64 @g_file_test(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @g_file_get_contents(i32* %45, i32** %10, i32* null, i32* null)
  %47 = load i32*, i32** @inifile, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @g_file_set_contents(i32* %47, i32* %48, i32 -1, i32* null)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @g_free(i32* %51)
  br label %53

53:                                               ; preds = %50, %2
  %54 = call i32 (...) @g_key_file_new()
  store i32 %54, i32* @keyfile, align 4
  %55 = call i32 @gtk_init(i32* %4, i8*** %5)
  %56 = call i32 (...) @yui_settings_init()
  %57 = call i32 (...) @yui_new()
  store i32 %57, i32* @yui, align 4
  %58 = call i32 (...) @yui_settings_load()
  %59 = load i32, i32* @yui, align 4
  %60 = call i32 @GTK_WINDOW(i32 %59)
  %61 = load i32, i32* @keyfile, align 4
  %62 = call i32 @g_key_file_get_integer(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %63 = load i32, i32* @keyfile, align 4
  %64 = call i32 @g_key_file_get_integer(i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %65 = call i32 @gtk_window_move(i32 %60, i32 %62, i32 %64)
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %380, %53
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %383

70:                                               ; preds = %66
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %379

77:                                               ; preds = %70
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp eq i64 0, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %77
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp eq i64 0, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %100 = icmp eq i64 0, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93, %85, %77
  %102 = load i8**, i8*** %5, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @print_usage(i8* %104)
  store i32 0, i32* %3, align 4
  br label %394

106:                                              ; preds = %93
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp eq i64 0, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load i8*, i8** @biospath, align 8
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @g_strlcpy(i8* %123, i8* %129, i32 256)
  %131 = load i8*, i8** @biospath, align 8
  store i8* %131, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 2), align 8
  br label %378

132:                                              ; preds = %114, %106
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strstr(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %132
  %141 = load i8*, i8** @biospath, align 8
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = call i32 @g_strlcpy(i8* %141, i8* %149, i32 256)
  %151 = load i8*, i8** @biospath, align 8
  store i8* %151, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 2), align 8
  br label %377

152:                                              ; preds = %132
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %159 = icmp eq i64 0, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %152
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %160
  %169 = load i8*, i8** @cdpath, align 8
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @g_strlcpy(i8* %169, i8* %175, i32 256)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 0), align 8
  br label %376

177:                                              ; preds = %160, %152
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @strstr(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %177
  %186 = load i8*, i8** @cdpath, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = call i32 @g_strlcpy(i8* %186, i8* %194, i32 256)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 0), align 8
  br label %375

196:                                              ; preds = %177
  %197 = load i8**, i8*** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %203 = icmp eq i64 0, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %196
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %221

212:                                              ; preds = %204
  %213 = load i8*, i8** @cdpath, align 8
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %214, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @g_strlcpy(i8* %213, i8* %219, i32 256)
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 0), align 8
  br label %374

221:                                              ; preds = %204, %196
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strstr(i8* %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %221
  %230 = load i8*, i8** @cdpath, align 8
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  %239 = call i32 @g_strlcpy(i8* %230, i8* %238, i32 256)
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 0), align 8
  br label %373

240:                                              ; preds = %221
  %241 = load i8**, i8*** %5, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %240
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @strcmp(i8* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %248, %240
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yinit, i32 0, i32 1), align 8
  br label %372

257:                                              ; preds = %248
  %258 = load i8**, i8*** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8*, i8** %258, i64 %260
  %262 = load i8*, i8** %261, align 8
  %263 = call i64 @strcmp(i8* %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load i32, i32* @yui, align 4
  %267 = call i32 @YUI_WINDOW(i32 %266)
  %268 = call i32 @yui_window_start(i32 %267)
  %269 = call i32 (...) @YuiLoadState()
  store i32 1, i32* %7, align 4
  br label %371

270:                                              ; preds = %257
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @strcmp(i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %286, label %278

278:                                              ; preds = %270
  %279 = load i8**, i8*** %5, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i64 @strcmp(i8* %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %278, %270
  store i32 1, i32* %7, align 4
  br label %370

287:                                              ; preds = %278
  %288 = load i8**, i8*** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %287
  %296 = load i8**, i8*** %5, align 8
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8*, i8** %296, i64 %298
  %300 = load i8*, i8** %299, align 8
  %301 = call i64 @strcmp(i8* %300, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %295, %287
  %304 = load i32, i32* @yui, align 4
  %305 = call i32 @YUI_WINDOW(i32 %304)
  %306 = load i32, i32* @TRUE, align 4
  %307 = call i32 @yui_window_set_fullscreen(i32 %305, i32 %306)
  br label %369

308:                                              ; preds = %295
  %309 = load i8**, i8*** %5, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = call i64 @strstr(i8* %313, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %334

316:                                              ; preds = %308
  %317 = load i8**, i8*** %5, align 8
  %318 = load i32, i32* %6, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %317, i64 %319
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = call i32 (i8*, i8*, ...) @sscanf(i8* %324, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32* %12)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %316
  %329 = load i32, i32* @yui, align 4
  %330 = call i32 @YUI_WINDOW(i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @yui_window_set_frameskip(i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %328, %316
  br label %368

334:                                              ; preds = %308
  %335 = load i8**, i8*** %5, align 8
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %335, i64 %337
  %339 = load i8*, i8** %338, align 8
  %340 = call i64 @strstr(i8* %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %367

342:                                              ; preds = %334
  %343 = load i8**, i8*** %5, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8*, i8** %343, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  %351 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %352 = call i32 (i8*, i8*, ...) @sscanf(i8* %350, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* %351, i32* %14)
  store i32 %352, i32* %15, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %342
  %356 = load i32, i32* %15, align 4
  %357 = icmp slt i32 %356, 2
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  store i32 100679680, i32* %14, align 4
  br label %359

359:                                              ; preds = %358, %355
  %360 = load i32, i32* @yui, align 4
  %361 = call i32 @YUI_WINDOW(i32 %360)
  %362 = call i32 @yui_window_run(i32 %361)
  %363 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %364 = load i32, i32* %14, align 4
  %365 = call i32 @MappedMemoryLoadExec(i8* %363, i32 %364)
  br label %366

366:                                              ; preds = %359, %342
  br label %367

367:                                              ; preds = %366, %334
  br label %368

368:                                              ; preds = %367, %333
  br label %369

369:                                              ; preds = %368, %303
  br label %370

370:                                              ; preds = %369, %286
  br label %371

371:                                              ; preds = %370, %265
  br label %372

372:                                              ; preds = %371, %256
  br label %373

373:                                              ; preds = %372, %229
  br label %374

374:                                              ; preds = %373, %212
  br label %375

375:                                              ; preds = %374, %185
  br label %376

376:                                              ; preds = %375, %168
  br label %377

377:                                              ; preds = %376, %140
  br label %378

378:                                              ; preds = %377, %122
  br label %379

379:                                              ; preds = %378, %70
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %66

383:                                              ; preds = %66
  %384 = load i32, i32* %7, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i32, i32* @yui, align 4
  %388 = call i32 @YUI_WINDOW(i32 %387)
  %389 = call i32 @yui_window_run(i32 %388)
  br label %390

390:                                              ; preds = %386, %383
  %391 = call i32 (...) @gtk_main()
  %392 = call i32 (...) @YabauseDeInit()
  %393 = call i32 (...) @LogStop()
  store i32 0, i32* %3, align 4
  br label %394

394:                                              ; preds = %390, %101
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

declare dso_local i32 @LogStart(...) #1

declare dso_local i32 @LogChangeOutput(i32, i32*) #1

declare dso_local i32* @g_build_filename(i32, i8*, i8*, ...) #1

declare dso_local i32 @g_get_user_config_dir(...) #1

declare dso_local i64 @g_file_test(i32*, i32) #1

declare dso_local i32 @g_mkdir_with_parents(i32*, i32) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_file_get_contents(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @g_file_set_contents(i32*, i32*, i32, i32*) #1

declare dso_local i32 @g_key_file_new(...) #1

declare dso_local i32 @gtk_init(i32*, i8***) #1

declare dso_local i32 @yui_settings_init(...) #1

declare dso_local i32 @yui_new(...) #1

declare dso_local i32 @yui_settings_load(...) #1

declare dso_local i32 @gtk_window_move(i32, i32, i32) #1

declare dso_local i32 @GTK_WINDOW(i32) #1

declare dso_local i32 @g_key_file_get_integer(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_usage(i8*) #1

declare dso_local i32 @g_strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @yui_window_start(i32) #1

declare dso_local i32 @YUI_WINDOW(i32) #1

declare dso_local i32 @YuiLoadState(...) #1

declare dso_local i32 @yui_window_set_fullscreen(i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @yui_window_set_frameskip(i32, i32) #1

declare dso_local i32 @yui_window_run(i32) #1

declare dso_local i32 @MappedMemoryLoadExec(i8*, i32) #1

declare dso_local i32 @gtk_main(...) #1

declare dso_local i32 @YabauseDeInit(...) #1

declare dso_local i32 @LogStop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
