; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, i64, i8*, i32*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { float }

@stripes_scale_mod = common dso_local global i32* null, align 8
@STRIPES_SYSTEM_TAB_MAIN = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_FAVORITES = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_HISTORY = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_MUSIC = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_ADD = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_IMAGES = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_NETPLAY = common dso_local global i32 0, align 4
@STRIPES_SYSTEM_TAB_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i32)* @stripes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stripes_init(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %13 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %10, align 8
  %14 = call i64 @calloc(i32 1, i32 1)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
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
  %29 = load i32*, i32** @stripes_scale_mod, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load float, float* %12, align 4
  %32 = fpext float %31 to double
  %33 = fmul double -3.000000e-02, %32
  %34 = fadd double %33, 3.950000e+00
  %35 = fptosi double %34 to i32
  %36 = load i32*, i32** @stripes_scale_mod, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load float, float* %12, align 4
  %39 = fpext float %38 to double
  %40 = fmul double -2.000000e-02, %39
  %41 = fadd double %40, 3.033000e+00
  %42 = fptosi double %41 to i32
  %43 = load i32*, i32** @stripes_scale_mod, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %42, i32* %44, align 4
  %45 = load float, float* %12, align 4
  %46 = fpext float %45 to double
  %47 = fmul double -1.400000e-02, %46
  %48 = fadd double %47, 2.416000e+00
  %49 = fptosi double %48 to i32
  %50 = load i32*, i32** @stripes_scale_mod, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  %52 = load float, float* %12, align 4
  %53 = fpext float %52 to double
  %54 = fmul double -3.000000e-02, %53
  %55 = fadd double %54, 3.916000e+00
  %56 = fptosi double %55 to i32
  %57 = load i32*, i32** @stripes_scale_mod, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load float, float* %12, align 4
  %60 = fpext float %59 to double
  %61 = fmul double -6.000000e-02, %60
  %62 = fadd double %61, 6.933000e+00
  %63 = fptosi double %62 to i32
  %64 = load i32*, i32** @stripes_scale_mod, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %63, i32* %65, align 4
  %66 = load float, float* %12, align 4
  %67 = fpext float %66 to double
  %68 = fmul double -2.800000e-02, %67
  %69 = fadd double %68, 3.866000e+00
  %70 = fptosi double %69 to i32
  %71 = load i32*, i32** @stripes_scale_mod, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 %70, i32* %72, align 4
  %73 = load float, float* %12, align 4
  %74 = call double @pow(float %73, double -1.077800e+00)
  %75 = fmul double 1.341790e+02, %74
  %76 = fptosi double %75 to i32
  %77 = load i32*, i32** @stripes_scale_mod, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %95, %23
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32*, i32** @stripes_scale_mod, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32*, i32** @stripes_scale_mod, align 8
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
  br label %245

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @menu_display_init_first_driver(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %245

108:                                              ; preds = %103
  %109 = call i32 @video_driver_get_size(i32* %6, i32* %7)
  %110 = call i64 @calloc(i32 1, i32 88)
  %111 = inttoptr i64 %110 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %9, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = icmp ne %struct.TYPE_9__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %245

115:                                              ; preds = %108
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %117 = bitcast %struct.TYPE_9__* %116 to i8*
  %118 = load i8**, i8*** %4, align 8
  store i8* %117, i8** %118, align 8
  %119 = call i64 @calloc(i32 1, i32 1)
  %120 = inttoptr i64 %119 to i8*
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %115
  br label %245

128:                                              ; preds = %115
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 11
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 10
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 9
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 8
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 7
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 2
  store i32 1, i32* %142, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @STRIPES_SYSTEM_TAB_MAIN, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %147, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %128
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* @STRIPES_SYSTEM_TAB_SETTINGS, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %172, align 8
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %166, %160, %128
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 7
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load i32, i32* @STRIPES_SYSTEM_TAB_FAVORITES, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %188, align 8
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  store i32 %183, i32* %191, align 4
  br label %192

192:                                              ; preds = %182, %176
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load i32, i32* @STRIPES_SYSTEM_TAB_HISTORY, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32 %199, i32* %207, align 4
  br label %208

208:                                              ; preds = %198, %192
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load i32, i32* @STRIPES_SYSTEM_TAB_MUSIC, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %220, align 8
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  store i32 %215, i32* %223, align 4
  br label %224

224:                                              ; preds = %214, %208
  %225 = load i32, i32* @RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, align 4
  %226 = call i32 @menu_driver_ctl(i32 %225, i32* null)
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @menu_display_set_width(i32 %227)
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @menu_display_set_height(i32 %229)
  %231 = call i32 (...) @menu_display_allocate_white_texture()
  %232 = call i64 @calloc(i32 1, i32 1)
  %233 = inttoptr i64 %232 to i8*
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %224
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %242 = call i32 @stripes_init_horizontal_list(%struct.TYPE_9__* %241)
  br label %243

243:                                              ; preds = %240, %224
  %244 = load i8*, i8** %11, align 8
  store i8* %244, i8** %3, align 8
  br label %284

245:                                              ; preds = %127, %114, %107, %102
  %246 = load i8*, i8** %11, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 @free(i8* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %253 = icmp ne %struct.TYPE_9__* %252, null
  br i1 %253, label %254, label %283

254:                                              ; preds = %251
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %264

259:                                              ; preds = %254
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @free(i8* %262)
  br label %264

264:                                              ; preds = %259, %254
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  store i8* null, i8** %266, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %264
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @stripes_free_list_nodes(i8* %274, i32 0)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 4
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @file_list_free(i8* %278)
  br label %280

280:                                              ; preds = %271, %264
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 4
  store i8* null, i8** %282, align 8
  br label %283

283:                                              ; preds = %280, %251
  store i8* null, i8** %3, align 8
  br label %284

284:                                              ; preds = %283, %243
  %285 = load i8*, i8** %3, align 8
  ret i8* %285
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local double @pow(float, double) #1

declare dso_local i32 @menu_display_init_first_driver(i32) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @menu_driver_ctl(i32, i32*) #1

declare dso_local i32 @menu_display_set_width(i32) #1

declare dso_local i32 @menu_display_set_height(i32) #1

declare dso_local i32 @menu_display_allocate_white_texture(...) #1

declare dso_local i32 @stripes_init_horizontal_list(%struct.TYPE_9__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stripes_free_list_nodes(i8*, i32) #1

declare dso_local i32 @file_list_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
