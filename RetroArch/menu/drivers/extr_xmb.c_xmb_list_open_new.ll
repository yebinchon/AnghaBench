; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_open_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_open_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, float, float, float, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { float, float, i32, float, i32 }
%struct.TYPE_14__ = type { float, float*, i64, i32*, i32, i32 }

@XMB_DELAY = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_START = common dso_local global i32 0, align 4
@XMB_SYSTEM_TAB_SETTINGS = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, i32, i64)* @xmb_list_open_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_list_open_new(%struct.TYPE_13__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 10
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @file_list_get_size(i32* %23)
  store i64 %24, i64* %14, align 8
  %25 = call i32 @video_driver_get_size(i32* null, i32* %10)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %153, %4
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %14, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %156

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @file_list_get_userdata_at_offset(i32* %32, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %17, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %153

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store float 0.000000e+00, float* %44, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store float 0.000000e+00, float* %46, align 4
  br label %62

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store float 0.000000e+00, float* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store float 0.000000e+00, float* %60, align 4
  br label %61

61:                                               ; preds = %58, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call float @xmb_item_y(%struct.TYPE_13__* %71, i32 %72, i64 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  store float %74, float* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load float, float* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = fadd float %84, %87
  store float %88, float* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %8, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %62
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 8
  store float %101, float* %15, align 4
  br label %106

102:                                              ; preds = %62
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load float, float* %104, align 4
  store float %105, float* %15, align 4
  br label %106

106:                                              ; preds = %102, %93
  %107 = load float, float* %16, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 0, %108
  %110 = sitofp i32 %109 to float
  %111 = fcmp olt float %107, %110
  br i1 %111, label %119, label %112

112:                                              ; preds = %106
  %113 = load float, float* %16, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %114, %115
  %117 = uitofp i32 %116 to float
  %118 = fcmp ogt float %113, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %112, %106
  %120 = load float, float* %15, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store float %120, float* %122, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  store float %120, float* %124, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  br label %152

127:                                              ; preds = %112
  %128 = load i32, i32* @XMB_DELAY, align 4
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 5
  store i32 %128, i32* %129, align 4
  %130 = load float, float* %15, align 4
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store float %130, float* %131, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store float* %133, float** %134, align 8
  %135 = load i32, i32* @EASING_OUT_QUAD, align 4
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  store i32 %135, i32* %136, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = ptrtoint i32* %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  store i32* null, i32** %140, align 8
  %141 = call i32 @menu_animation_push(%struct.TYPE_14__* %18)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store float* %143, float** %144, align 8
  %145 = call i32 @menu_animation_push(%struct.TYPE_14__* %18)
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  store float 0.000000e+00, float* %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = bitcast i32* %148 to float*
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store float* %149, float** %150, align 8
  %151 = call i32 @menu_animation_push(%struct.TYPE_14__* %18)
  br label %152

152:                                              ; preds = %127, %119
  br label %153

153:                                              ; preds = %152, %38
  %154 = load i32, i32* %9, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %26

156:                                              ; preds = %26
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @MENU_ENTRIES_CTL_SET_START, align 4
  %163 = call i32 @menu_entries_ctl(i32 %162, i64* %12)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 9
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @xmb_get_system_tab(%struct.TYPE_13__* %164, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @XMB_SYSTEM_TAB_SETTINGS, align 4
  %172 = icmp ule i32 %170, %171
  br i1 %172, label %173, label %232

173:                                              ; preds = %156
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %178 = call i64 @menu_thumbnail_is_enabled(i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %185 = call i64 @menu_thumbnail_is_enabled(i32 %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %231

187:                                              ; preds = %180, %173
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 5
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %194 = call i32 @xmb_unload_thumbnail_textures(%struct.TYPE_13__* %193)
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 7
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %200, %195
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %207 = call i32 @xmb_set_thumbnail_content(%struct.TYPE_13__* %206, i32* null)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %212 = call i64 @menu_thumbnail_is_enabled(i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %216 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_13__* %215, i32 0, i8 signext 82)
  br label %217

217:                                              ; preds = %214, %205
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %222 = call i64 @menu_thumbnail_is_enabled(i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %226 = call i32 @xmb_update_thumbnail_path(%struct.TYPE_13__* %225, i32 0, i8 signext 76)
  br label %227

227:                                              ; preds = %224, %217
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = call i32 @xmb_update_thumbnail_image(%struct.TYPE_13__* %228)
  br label %230

230:                                              ; preds = %227, %200
  br label %231

231:                                              ; preds = %230, %180
  br label %232

232:                                              ; preds = %231, %156
  ret void
}

declare dso_local i64 @file_list_get_size(i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local float @xmb_item_y(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_14__*) #1

declare dso_local i32 @menu_entries_ctl(i32, i64*) #1

declare dso_local i32 @xmb_get_system_tab(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @menu_thumbnail_is_enabled(i32, i32) #1

declare dso_local i32 @xmb_unload_thumbnail_textures(%struct.TYPE_13__*) #1

declare dso_local i32 @xmb_set_thumbnail_content(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @xmb_update_thumbnail_path(%struct.TYPE_13__*, i32, i8 signext) #1

declare dso_local i32 @xmb_update_thumbnail_image(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
