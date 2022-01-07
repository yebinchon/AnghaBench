; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_set_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.video_viewport = type { i32, i32 }

@RGUI_UPSCALE_NONE = common dso_local global i32 0, align 4
@rgui_frame_buf = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@RGUI_UPSCALE_AUTO = common dso_local global i32 0, align 4
@rgui_upscale_buf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rgui_set_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_set_texture() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.video_viewport, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = call i32 (...) @menu_display_get_framebuffer_dirty_flag()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %177

18:                                               ; preds = %0
  %19 = call i32 @menu_display_get_fb_size(i32* %2, i32* %3, i64* %1)
  %20 = call i32 (...) @menu_display_unset_framebuffer_dirty_flag()
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RGUI_UPSCALE_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgui_frame_buf, i32 0, i32 0), align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @video_driver_set_texture_frame(i32* %28, i32 0, i32 %29, i32 %30, float 1.000000e+00)
  br label %177

32:                                               ; preds = %18
  %33 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %5)
  %34 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ule i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgui_frame_buf, i32 0, i32 0), align 8
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @video_driver_set_texture_frame(i32* %44, i32 0, i32 %45, i32 %46, float 1.000000e+00)
  br label %176

48:                                               ; preds = %38, %32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RGUI_UPSCALE_AUTO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %2, align 4
  %59 = udiv i32 %57, %58
  %60 = add i32 %59, 1
  %61 = load i32, i32* %2, align 4
  %62 = mul i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = udiv i32 %64, %65
  %67 = add i32 %66, 1
  %68 = load i32, i32* %3, align 4
  %69 = mul i32 %67, %68
  store i32 %69, i32* %7, align 4
  br label %83

70:                                               ; preds = %48
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %2, align 4
  %76 = mul i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %3, align 4
  %82 = mul i32 %80, %81
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %70, %55
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 0), align 8
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 1), align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %120, label %94

94:                                               ; preds = %91, %87, %83
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 0), align 8
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 1), align 4
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %101 = call i32 @free(i32* %100)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = mul i32 %103, %104
  %106 = call i64 @calloc(i32 %105, i32 4)
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @RGUI_UPSCALE_NONE, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgui_frame_buf, i32 0, i32 0), align 8
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @video_driver_set_texture_frame(i32* %115, i32 0, i32 %116, i32 %117, float 1.000000e+00)
  br label %177

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %91
  %121 = load i32, i32* %2, align 4
  %122 = shl i32 %121, 16
  %123 = load i32, i32* %6, align 4
  %124 = udiv i32 %122, %123
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %3, align 4
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %7, align 4
  %128 = udiv i32 %126, %127
  store i32 %128, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %168, %120
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %129
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %9, align 4
  %136 = mul i32 %134, %135
  %137 = lshr i32 %136, 16
  store i32 %137, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %164, %133
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %138
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %8, align 4
  %145 = mul i32 %143, %144
  %146 = lshr i32 %145, 16
  store i32 %146, i32* %10, align 4
  %147 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgui_frame_buf, i32 0, i32 0), align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %2, align 4
  %150 = mul i32 %148, %149
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %150, %151
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %147, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %6, align 4
  %159 = mul i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %159, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %156, i64 %162
  store i32 %155, i32* %163, align 4
  br label %164

164:                                              ; preds = %142
  %165 = load i32, i32* %12, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %12, align 4
  br label %138

167:                                              ; preds = %138
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %13, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %129

171:                                              ; preds = %129
  %172 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgui_upscale_buf, i32 0, i32 2), align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @video_driver_set_texture_frame(i32* %172, i32 0, i32 %173, i32 %174, float 1.000000e+00)
  br label %176

176:                                              ; preds = %171, %43
  br label %177

177:                                              ; preds = %17, %110, %176, %27
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_get_framebuffer_dirty_flag(...) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @menu_display_unset_framebuffer_dirty_flag(...) #1

declare dso_local i32 @video_driver_set_texture_frame(i32*, i32, i32, i32, float) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
