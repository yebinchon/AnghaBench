; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, %struct.TYPE_17__, i64, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_18__ = type { i32 }

@RGUI_PARTICLE_EFFECT_NONE = common dso_local global i64 0, align 8
@RGUI_THEME_CUSTOM = common dso_local global i64 0, align 8
@RGUI_ASPECT_RATIO_LOCK_NONE = common dso_local global i64 0, align 8
@MENU_POINTER_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_21__*)* @rgui_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_frame(i8* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %5, align 8
  %9 = call %struct.TYPE_22__* (...) @config_get_ptr()
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %38, %29
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %58, %49
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %69
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @rgui_set_blit_functions(i64 %82, i64 %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %78, %69
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %98
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 6
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 6
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @RGUI_PARTICLE_EFFECT_NONE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %107
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %121 = call i32 @rgui_init_particle_effect(%struct.TYPE_23__* %120)
  br label %122

122:                                              ; preds = %119, %107
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %98
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @RGUI_PARTICLE_EFFECT_NONE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %125
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %134
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @rgui_set_blit_functions(i64 %147, i64 %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 7
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %143, %134
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = call i32 @prepare_rgui_colors(%struct.TYPE_23__* %171, %struct.TYPE_22__* %172)
  br label %197

174:                                              ; preds = %161
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @RGUI_THEME_CUSTOM, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %174
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 20
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @string_is_not_equal_fast(i32 %185, i32 %188, i32 4)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %181
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %194 = call i32 @prepare_rgui_colors(%struct.TYPE_23__* %192, %struct.TYPE_22__* %193)
  br label %195

195:                                              ; preds = %191, %181
  br label %196

196:                                              ; preds = %195, %174
  br label %197

197:                                              ; preds = %196, %170
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %201, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = call i32 @rgui_set_aspect_ratio(%struct.TYPE_23__* %207, i32 1)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 10
  store i32 0, i32* %210, align 8
  br label %211

211:                                              ; preds = %206, %197
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 11
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %248

220:                                              ; preds = %211
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 11
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @RGUI_ASPECT_RATIO_LOCK_NONE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 19
  %237 = call i32 @rgui_set_video_config(%struct.TYPE_23__* %234, i32* %236, i32 1)
  br label %247

238:                                              ; preds = %220
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %240 = call i32 @rgui_update_menu_viewport(%struct.TYPE_23__* %239)
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 18
  %244 = call i32 @rgui_set_video_config(%struct.TYPE_23__* %241, i32* %243, i32 1)
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 10
  store i32 0, i32* %246, align 8
  br label %247

247:                                              ; preds = %238, %233
  br label %248

248:                                              ; preds = %247, %211
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 12
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %251, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %248
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 13
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %259, %262
  br i1 %263, label %264, label %294

264:                                              ; preds = %256, %248
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @RGUI_ASPECT_RATIO_LOCK_NONE, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %264
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %271
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %278 = call i32 @rgui_update_menu_viewport(%struct.TYPE_23__* %277)
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 18
  %282 = call i32 @rgui_set_video_config(%struct.TYPE_23__* %279, i32* %281, i32 1)
  br label %283

283:                                              ; preds = %276, %271, %264
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 12
  store i64 %286, i64* %288, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 13
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %283, %256
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %295, i32 0, i32 17
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %328

299:                                              ; preds = %294
  %300 = call i32 (...) @cpu_features_get_time_usec()
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 14
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %300, %303
  %305 = sitofp i32 %304 to float
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = mul nsw i32 %309, 1000
  %311 = sitofp i32 %310 to float
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 16
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, float 1.500000e+00, float 1.000000e+00
  %318 = fmul float %311, %317
  %319 = fcmp oge float %305, %318
  br i1 %319, label %320, label %327

320:                                              ; preds = %299
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @rgui_load_current_thumbnails(%struct.TYPE_23__* %321, i32 %325)
  br label %327

327:                                              ; preds = %320, %299
  br label %328

328:                                              ; preds = %327, %294
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %340, label %334

334:                                              ; preds = %328
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 5
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %360

340:                                              ; preds = %334, %328
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 15
  %343 = call i32 @menu_input_get_pointer_state(%struct.TYPE_17__* %342)
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %359

350:                                              ; preds = %340
  %351 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 2
  store i32 1, i32* %358, align 4
  br label %359

359:                                              ; preds = %356, %350, %340
  br label %365

360:                                              ; preds = %334
  %361 = load i64, i64* @MENU_POINTER_DISABLED, align 8
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  store i64 %361, i64* %364, align 8
  br label %365

365:                                              ; preds = %360, %359
  ret void
}

declare dso_local %struct.TYPE_22__* @config_get_ptr(...) #1

declare dso_local i32 @rgui_set_blit_functions(i64, i64) #1

declare dso_local i32 @rgui_init_particle_effect(%struct.TYPE_23__*) #1

declare dso_local i32 @prepare_rgui_colors(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i64 @string_is_not_equal_fast(i32, i32, i32) #1

declare dso_local i32 @rgui_set_aspect_ratio(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @rgui_set_video_config(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @rgui_update_menu_viewport(%struct.TYPE_23__*) #1

declare dso_local i32 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @rgui_load_current_thumbnails(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @menu_input_get_pointer_state(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
