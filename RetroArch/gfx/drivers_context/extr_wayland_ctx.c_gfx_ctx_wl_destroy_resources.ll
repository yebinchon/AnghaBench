; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_destroy_resources.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_gfx_ctx_wl_destroy_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32*, i32*, i32*, i32*, %struct.TYPE_6__, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32*, i64 }

@wl_api = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @gfx_ctx_wl_destroy_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_ctx_wl_destroy_resources(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = icmp ne %struct.TYPE_7__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %247

6:                                                ; preds = %1
  %7 = load i32, i32* @wl_api, align 4
  switch i32 %7, label %11 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %8
    i32 128, label %9
    i32 132, label %10
  ]

8:                                                ; preds = %6, %6, %6
  br label %12

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %6, %10
  br label %12

12:                                               ; preds = %11, %9, %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 21
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 21
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @wl_keyboard_destroy(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 20
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 20
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wl_pointer_destroy(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 19
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 19
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wl_touch_destroy(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 18
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wl_cursor_theme_destroy(i64 %52)
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 18
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 18
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @wl_surface_destroy(i32* %64)
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 17
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 17
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @wl_seat_destroy(i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 10
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 10
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @xdg_wm_base_destroy(i32* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 9
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @zxdg_shell_v6_destroy(i32* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 8
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 8
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @wl_compositor_destroy(i32* %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @wl_registry_destroy(i32* %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @xdg_surface_destroy(i32* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 16
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 16
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @zxdg_surface_v6_destroy(i64 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @wl_surface_destroy(i32* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @xdg_toplevel_destroy(i32* %154)
  br label %156

156:                                              ; preds = %151, %146
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @zxdg_toplevel_v6_destroy(i32* %164)
  br label %166

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 15
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 15
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @zwp_idle_inhibit_manager_v1_destroy(i64 %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 14
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 14
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @zxdg_toplevel_decoration_v1_destroy(i64 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 13
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 13
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @zxdg_decoration_manager_v1_destroy(i64 %194)
  br label %196

196:                                              ; preds = %191, %186
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 12
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @zwp_idle_inhibitor_v1_destroy(i64 %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @wl_display_flush(i32* %216)
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @wl_display_disconnect(i32* %221)
  br label %223

223:                                              ; preds = %212, %206
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 10
  store i32* null, i32** %225, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 9
  store i32* null, i32** %227, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 8
  store i32* null, i32** %229, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 7
  store i32* null, i32** %231, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32* null, i32** %234, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 5
  store i32* null, i32** %236, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  store i32* null, i32** %238, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 3
  store i32* null, i32** %240, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  store i32* null, i32** %242, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  store i64 0, i64* %246, align 8
  br label %247

247:                                              ; preds = %223, %5
  ret void
}

declare dso_local i32 @wl_keyboard_destroy(i64) #1

declare dso_local i32 @wl_pointer_destroy(i64) #1

declare dso_local i32 @wl_touch_destroy(i64) #1

declare dso_local i32 @wl_cursor_theme_destroy(i64) #1

declare dso_local i32 @wl_surface_destroy(i32*) #1

declare dso_local i32 @wl_seat_destroy(i64) #1

declare dso_local i32 @xdg_wm_base_destroy(i32*) #1

declare dso_local i32 @zxdg_shell_v6_destroy(i32*) #1

declare dso_local i32 @wl_compositor_destroy(i32*) #1

declare dso_local i32 @wl_registry_destroy(i32*) #1

declare dso_local i32 @xdg_surface_destroy(i32*) #1

declare dso_local i32 @zxdg_surface_v6_destroy(i64) #1

declare dso_local i32 @xdg_toplevel_destroy(i32*) #1

declare dso_local i32 @zxdg_toplevel_v6_destroy(i32*) #1

declare dso_local i32 @zwp_idle_inhibit_manager_v1_destroy(i64) #1

declare dso_local i32 @zxdg_toplevel_decoration_v1_destroy(i64) #1

declare dso_local i32 @zxdg_decoration_manager_v1_destroy(i64) #1

declare dso_local i32 @zwp_idle_inhibitor_v1_destroy(i64) #1

declare dso_local i32 @wl_display_flush(i32*) #1

declare dso_local i32 @wl_display_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
