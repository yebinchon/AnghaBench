; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, i64, i8*, i32, i32*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { float }

@scale_mod = common dso_local global i32* null, align 8
@XMB_SYSTEM_TAB_MAIN = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_FAVORITES = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_HISTORY = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_MUSIC = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_ADD = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_IMAGES = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_NETPLAY = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32)* @xmb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmb_init(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  %13 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %10, align 8
  %14 = call i64 @calloc(i32 1, i32 1)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load float, float* %18, align 8
  %20 = fmul float %19, 1.000000e+02
  store float %20, float* %12, align 4
  %21 = load float, float* %12, align 4
  %22 = fcmp olt float %21, 1.000000e+02
  br i1 %22, label %23, label %99

23:                                               ; preds = %2
  %24 = load float, float* %12, align 4
  %25 = fpext float %24 to double
  %26 = fmul double -3.000000e-02, %25
  %27 = fadd double %26, 4.083000e+00
  %28 = fptosi double %27 to i32
  %29 = load i32*, i32** @scale_mod, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load float, float* %12, align 4
  %32 = fpext float %31 to double
  %33 = fmul double -3.000000e-02, %32
  %34 = fadd double %33, 3.950000e+00
  %35 = fptosi double %34 to i32
  %36 = load i32*, i32** @scale_mod, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load float, float* %12, align 4
  %39 = fpext float %38 to double
  %40 = fmul double -2.000000e-02, %39
  %41 = fadd double %40, 3.033000e+00
  %42 = fptosi double %41 to i32
  %43 = load i32*, i32** @scale_mod, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %42, i32* %44, align 4
  %45 = load float, float* %12, align 4
  %46 = fpext float %45 to double
  %47 = fmul double -1.400000e-02, %46
  %48 = fadd double %47, 2.416000e+00
  %49 = fptosi double %48 to i32
  %50 = load i32*, i32** @scale_mod, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  %52 = load float, float* %12, align 4
  %53 = fpext float %52 to double
  %54 = fmul double -3.000000e-02, %53
  %55 = fadd double %54, 3.916000e+00
  %56 = fptosi double %55 to i32
  %57 = load i32*, i32** @scale_mod, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load float, float* %12, align 4
  %60 = fpext float %59 to double
  %61 = fmul double -6.000000e-02, %60
  %62 = fadd double %61, 6.933000e+00
  %63 = fptosi double %62 to i32
  %64 = load i32*, i32** @scale_mod, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %63, i32* %65, align 4
  %66 = load float, float* %12, align 4
  %67 = fpext float %66 to double
  %68 = fmul double -2.800000e-02, %67
  %69 = fadd double %68, 3.866000e+00
  %70 = fptosi double %69 to i32
  %71 = load i32*, i32** @scale_mod, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %70, i32* %72, align 4
  %73 = load float, float* %12, align 4
  %74 = call double @pow(float %73, double -1.077800e+00)
  %75 = fmul double 1.341790e+02, %74
  %76 = fptosi double %75 to i32
  %77 = load i32*, i32** @scale_mod, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %95, %23
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32*, i32** @scale_mod, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32*, i32** @scale_mod, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %79

98:                                               ; preds = %79
  br label %99

99:                                               ; preds = %98, %2
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i8* null, i8** %3, align 8
  br label %291

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @menu_display_init_first_driver(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @free(i8* %108)
  store i8* null, i8** %3, align 8
  br label %291

110:                                              ; preds = %103
  %111 = call i32 @video_driver_get_size(i32* %6, i32* %7)
  %112 = call i64 @calloc(i32 1, i32 96)
  %113 = inttoptr i64 %112 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %9, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @free(i8* %117)
  store i8* null, i8** %3, align 8
  br label %291

119:                                              ; preds = %110
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %121 = bitcast %struct.TYPE_10__* %120 to i8*
  %122 = load i8**, i8*** %4, align 8
  store i8* %121, i8** %122, align 8
  %123 = call i64 @calloc(i32 1, i32 1)
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %260

132:                                              ; preds = %119
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 12
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 11
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 10
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 9
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 8
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 7
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  store i64 0, i64* %150, align 8
  %151 = load i32, i32* @XMB_SYSTEM_TAB_MAIN, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %151, i32* %158, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %132
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %176, align 8
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  store i32 %171, i32* %179, align 4
  br label %180

180:                                              ; preds = %170, %164, %132
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %180
  %187 = load i32, i32* @XMB_SYSTEM_TAB_FAVORITES, align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 6
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %192, align 8
  %195 = getelementptr inbounds i32, i32* %190, i64 %194
  store i32 %187, i32* %195, align 4
  br label %196

196:                                              ; preds = %186, %180
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %196
  %203 = load i32, i32* @XMB_SYSTEM_TAB_HISTORY, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32 %203, i32* %211, align 4
  br label %212

212:                                              ; preds = %202, %196
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %212
  %219 = load i32, i32* @XMB_SYSTEM_TAB_MUSIC, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 6
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %224, align 8
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  store i32 %219, i32* %227, align 4
  br label %228

228:                                              ; preds = %218, %212
  %229 = load i32, i32* @RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, align 4
  %230 = call i32 @menu_driver_ctl(i32 %229, i32* null)
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @menu_display_set_width(i32 %231)
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @menu_display_set_height(i32 %233)
  %235 = call i32 (...) @menu_display_allocate_white_texture()
  %236 = call i64 @calloc(i32 1, i32 1)
  %237 = inttoptr i64 %236 to i8*
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 4
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %228
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %246 = call i32 @xmb_init_horizontal_list(%struct.TYPE_10__* %245)
  br label %247

247:                                              ; preds = %244, %228
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %249 = call i32 @xmb_init_ribbon(%struct.TYPE_10__* %248)
  %250 = call i32 (...) @menu_thumbnail_path_init()
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %247
  br label %260

258:                                              ; preds = %247
  %259 = load i8*, i8** %11, align 8
  store i8* %259, i8** %3, align 8
  br label %291

260:                                              ; preds = %257, %131
  %261 = load i8*, i8** %11, align 8
  %262 = call i32 @free(i8* %261)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @free(i8* %270)
  br label %272

272:                                              ; preds = %267, %260
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  store i8* null, i8** %274, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 4
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %288

279:                                              ; preds = %272
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 4
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @xmb_free_list_nodes(i8* %282, i32 0)
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 4
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @file_list_free(i8* %286)
  br label %288

288:                                              ; preds = %279, %272
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 4
  store i8* null, i8** %290, align 8
  store i8* null, i8** %3, align 8
  br label %291

291:                                              ; preds = %288, %258, %116, %107, %102
  %292 = load i8*, i8** %3, align 8
  ret i8* %292
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local double @pow(float, double) #1

declare dso_local i32 @menu_display_init_first_driver(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @menu_display_allocate_white_texture(...) #1

declare dso_local i32 @xmb_init_horizontal_list(%struct.TYPE_10__*) #1

declare dso_local i32 @xmb_init_ribbon(%struct.TYPE_10__*) #1

declare dso_local i32 @menu_thumbnail_path_init(...) #1

declare dso_local i32 @xmb_free_list_nodes(i8*, i32) #1

declare dso_local i32 @file_list_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
