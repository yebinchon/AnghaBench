; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_add.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_dtoverlay_main.c_dtoverlay_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8** }

@.str = private unnamed_addr constant [8 x i8] c"dtparam\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@work_dir = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"base.dtb\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"dtc -I fs -O dtb -o '%s' /proc/device-tree 1>/dev/null 2>&1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to read active DTB\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".dtbo\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%s/%s.dtbo\00", align 1
@overlay_src_dir = common dso_local global i32 0, align 4
@dry_run = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"dry_run\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d_%s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Failed to read '%s'\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Unknown parameter '%s'\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Failed to set %s=%s\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%s %s=%s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%8x\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@error_file = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i8**)* @dtoverlay_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_add(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %14, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sub nsw i32 %35, 5
  store i32 %36, i32* %18, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %4
  %44 = load i32, i32* @work_dir, align 4
  %45 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i64 @run_cmd(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  br label %273

51:                                               ; preds = %43
  br label %83

52:                                               ; preds = %4
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @strrchr(i8* %64, i8 signext 47)
  store i8* %65, i8** %20, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i8*, i8** %20, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sub nsw i32 %72, 5
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* %18, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %75, i8* %76)
  store i8* %77, i8** %7, align 8
  br label %82

78:                                               ; preds = %55, %52
  %79 = load i32, i32* @overlay_src_dir, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %79, i8* %80)
  store i8* %81, i8** %11, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %51
  %84 = load i64, i64* @dry_run, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %7, align 8
  %92 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %90, i8* %91)
  store i8* %92, i8** %10, align 8
  br label %93

93:                                               ; preds = %87, %86
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @DTOVERLAY_PADDING(i32 4096)
  %96 = call i32* @dtoverlay_load_dtb(i8* %94, i32 %95)
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %100)
  store i32 %101, i32* %5, align 4
  br label %273

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %15, align 8
  store i32* %106, i32** %14, align 8
  %107 = call i32 @string_vec_init(%struct.TYPE_6__* %16)
  br label %108

108:                                              ; preds = %105, %102
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %184, %108
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %187

113:                                              ; preds = %109
  %114 = load i8**, i8*** %9, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %21, align 8
  %119 = load i8*, i8** %21, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 61)
  store i8* %120, i8** %22, align 8
  store i8* null, i8** %25, align 8
  %121 = load i8*, i8** %22, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %113
  %124 = load i8*, i8** %22, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %27, align 4
  %130 = load i32, i32* %27, align 4
  %131 = load i8*, i8** %21, align 8
  %132 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %130, i8* %131)
  store i8* %132, i8** %25, align 8
  %133 = load i8*, i8** %25, align 8
  store i8* %133, i8** %23, align 8
  %134 = load i8*, i8** %22, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %22, align 8
  br label %138

136:                                              ; preds = %113
  %137 = load i8*, i8** %21, align 8
  store i8* %137, i8** %23, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %22, align 8
  br label %138

138:                                              ; preds = %136, %123
  %139 = load i32*, i32** %15, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = call i8* @dtoverlay_find_override(i32* %139, i8* %140, i32* %26)
  store i8* %141, i8** %24, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %23, align 8
  %146 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %145)
  store i32 %146, i32* %5, align 4
  br label %273

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = load i32*, i32** %15, align 8
  %152 = load i8*, i8** %23, align 8
  %153 = load i8*, i8** %24, align 8
  %154 = load i32, i32* %26, align 4
  %155 = load i8*, i8** %22, align 8
  %156 = call i32 @dtparam_apply(i32* %151, i8* %152, i8* %153, i32 %154, i8* %155, %struct.TYPE_6__* %16)
  store i32 %156, i32* %17, align 4
  br label %164

157:                                              ; preds = %147
  %158 = load i32*, i32** %15, align 8
  %159 = load i8*, i8** %23, align 8
  %160 = load i8*, i8** %24, align 8
  %161 = load i32, i32* %26, align 4
  %162 = load i8*, i8** %22, align 8
  %163 = call i32 @dtoverlay_apply_override(i32* %158, i8* %159, i8* %160, i32 %161, i8* %162)
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %157, %150
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i8*, i8** %23, align 8
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %168, i8* %169)
  store i32 %170, i32* %5, align 4
  br label %273

171:                                              ; preds = %164
  %172 = load i8*, i8** %12, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i8*, i8** %12, align 8
  br label %177

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i8* [ %175, %174 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %176 ]
  %179 = load i8*, i8** %23, align 8
  %180 = load i8*, i8** %22, align 8
  %181 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %178, i8* %179, i8* %180)
  store i8* %181, i8** %12, align 8
  %182 = load i8*, i8** %25, align 8
  %183 = call i32 @free_string(i8* %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  br label %109

187:                                              ; preds = %109
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %232

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 256, %192
  %194 = add nsw i32 2048, %193
  %195 = call i32* @dtoverlay_create_dtb(i32 %194)
  store i32* %195, i32** %15, align 8
  store i32 0, i32* %19, align 4
  br label %196

196:                                              ; preds = %226, %190
  %197 = load i32, i32* %19, align 4
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %31, align 8
  %208 = load i8*, i8** %31, align 8
  %209 = call i32 @sscanf(i8* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* %28)
  %210 = load i8*, i8** %31, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 8
  store i8* %211, i8** %32, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %28, align 4
  %214 = call i32 @dtoverlay_find_phandle(i32* %212, i32 %213)
  store i32 %214, i32* %29, align 4
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %29, align 4
  %217 = load i8*, i8** %32, align 8
  %218 = call i8* @dtoverlay_get_property(i32* %215, i32 %216, i8* %217, i32* %30)
  store i8* %218, i8** %33, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %28, align 4
  %222 = load i8*, i8** %32, align 8
  %223 = load i8*, i8** %33, align 8
  %224 = load i32, i32* %30, align 4
  %225 = call i32 @dtoverlay_create_prop_fragment(i32* %219, i32 %220, i32 %221, i8* %222, i8* %223, i32 %224)
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %201
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %196

229:                                              ; preds = %196
  %230 = load i32*, i32** %14, align 8
  %231 = call i32 @dtoverlay_free_dtb(i32* %230)
  br label %232

232:                                              ; preds = %229, %187
  %233 = load i32*, i32** %15, align 8
  %234 = call i32 @dtoverlay_delete_node(i32* %233, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %235 = load i8*, i8** %12, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %244

237:                                              ; preds = %232
  %238 = load i32*, i32** %15, align 8
  %239 = load i8*, i8** %12, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = call i32 @strlen(i8* %240)
  %242 = add nsw i32 %241, 1
  %243 = call i32 @dtoverlay_dtb_set_trailer(i32* %238, i8* %239, i32 %242)
  br label %244

244:                                              ; preds = %237, %232
  %245 = load i32, i32* @work_dir, align 4
  %246 = load i8*, i8** %10, align 8
  %247 = call i8* (i8*, ...) @sprintf_dup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %245, i8* %246)
  store i8* %247, i8** %11, align 8
  %248 = load i32*, i32** %15, align 8
  %249 = call i32 @dtoverlay_pack_dtb(i32* %248)
  %250 = load i32*, i32** %15, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call i32 @dtoverlay_save_dtb(i32* %250, i8* %251)
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @dtoverlay_free_dtb(i32* %253)
  %255 = load i64, i64* @dry_run, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %244
  %258 = load i8*, i8** %11, align 8
  %259 = load i8*, i8** %10, align 8
  %260 = call i32 @apply_overlay(i8* %258, i8* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %257
  %263 = load i8*, i8** @error_file, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load i8*, i8** %11, align 8
  %267 = load i8*, i8** @error_file, align 8
  %268 = call i32 @rename(i8* %266, i8* %267)
  %269 = load i8*, i8** @error_file, align 8
  %270 = call i32 @free_string(i8* %269)
  br label %271

271:                                              ; preds = %265, %262
  store i32 1, i32* %5, align 4
  br label %273

272:                                              ; preds = %257, %244
  store i32 0, i32* %5, align 4
  br label %273

273:                                              ; preds = %272, %271, %167, %144, %99, %49
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sprintf_dup(i8*, ...) #1

declare dso_local i64 @run_cmd(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @dtoverlay_load_dtb(i8*, i32) #1

declare dso_local i32 @DTOVERLAY_PADDING(i32) #1

declare dso_local i32 @string_vec_init(%struct.TYPE_6__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @dtoverlay_find_override(i32*, i8*, i32*) #1

declare dso_local i32 @dtparam_apply(i32*, i8*, i8*, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @dtoverlay_apply_override(i32*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @free_string(i8*) #1

declare dso_local i32* @dtoverlay_create_dtb(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dtoverlay_find_phandle(i32*, i32) #1

declare dso_local i8* @dtoverlay_get_property(i32*, i32, i8*, i32*) #1

declare dso_local i32 @dtoverlay_create_prop_fragment(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @dtoverlay_free_dtb(i32*) #1

declare dso_local i32 @dtoverlay_delete_node(i32*, i8*, i32) #1

declare dso_local i32 @dtoverlay_dtb_set_trailer(i32*, i8*, i32) #1

declare dso_local i32 @dtoverlay_pack_dtb(i32*) #1

declare dso_local i32 @dtoverlay_save_dtb(i32*, i8*) #1

declare dso_local i32 @apply_overlay(i8*, i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
