; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_context_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32, i8**, i8**, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i8*, i64, i8*, i64, i8*, i32 }
%struct.retro_hw_render_context_negotiation_interface_vulkan = type { i64, i64, %struct.TYPE_18__* (...)* }

@VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_APPLICATION_INFO = common dso_local global i32 0, align 4
@RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"[Vulkan]: Got HW context negotiation interface, but it's the wrong API.\0A\00", align 1
@RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"[Vulkan]: Got HW context negotiation interface, but it's the wrong interface version.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"VK_KHR_surface\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"VK_KHR_wayland_surface\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"VK_KHR_android_surface\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"VK_KHR_win32_surface\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"VK_KHR_xlib_surface\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"VK_KHR_xcb_surface\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"VK_KHR_mir_surface\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"VK_KHR_display\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"VK_MVK_macos_surface\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"VK_MVK_ios_surface\00", align 1
@vulkan_library = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"libvulkan.so\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"libvulkan.so.1\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"[Vulkan]: Failed to open Vulkan loader.\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Vulkan dynamic library loaded.\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"vkGetInstanceProcAddr\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"[Vulkan]: Failed to load vkGetInstanceProcAddr symbol, broken loader?\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"[Vulkan]: Failed to load global Vulkan symbols, broken loader?\0A\00", align 1
@MSG_PROGRAM = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"[Vulkan]: App: %s (version %u)\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"[Vulkan]: Engine: %s (version %u)\0A\00", align 1
@cached_instance_vk = common dso_local global i32* null, align 8
@VK_SUCCESS = common dso_local global i64 0, align 8
@VK_ERROR_INCOMPATIBLE_DRIVER = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to create Vulkan instance (%d).\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"[Vulkan]: Failed to load instance symbols.\0A\00", align 1
@VK_DEBUG_REPORT_ERROR_BIT_EXT = common dso_local global i32 0, align 4
@VK_DEBUG_REPORT_PERFORMANCE_WARNING_BIT_EXT = common dso_local global i32 0, align 4
@VK_DEBUG_REPORT_WARNING_BIT_EXT = common dso_local global i32 0, align 4
@VK_STRUCTURE_TYPE_DEBUG_REPORT_CREATE_INFO_EXT = common dso_local global i32 0, align 4
@vulkan_debug_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vulkan_context_init(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.retro_hw_render_context_negotiation_interface_vulkan*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %17 = load i32, i32* @VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO, align 4
  store i32 %17, i32* %16, align 8
  %18 = bitcast %struct.TYPE_18__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 48, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %20 = load i32, i32* @VK_STRUCTURE_TYPE_APPLICATION_INFO, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %19, align 8
  store i32 0, i32* %12, align 4
  %23 = call i64 (...) @video_driver_get_context_negotiation_interface()
  %24 = inttoptr i64 %23 to %struct.retro_hw_render_context_negotiation_interface_vulkan*
  store %struct.retro_hw_render_context_negotiation_interface_vulkan* %24, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %25 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %26 = icmp ne %struct.retro_hw_render_context_negotiation_interface_vulkan* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %29 = getelementptr inbounds %struct.retro_hw_render_context_negotiation_interface_vulkan, %struct.retro_hw_render_context_negotiation_interface_vulkan* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  store %struct.retro_hw_render_context_negotiation_interface_vulkan* null, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  br label %35

35:                                               ; preds = %33, %27, %2
  %36 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %37 = icmp ne %struct.retro_hw_render_context_negotiation_interface_vulkan* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %40 = getelementptr inbounds %struct.retro_hw_render_context_negotiation_interface_vulkan, %struct.retro_hw_render_context_negotiation_interface_vulkan* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RETRO_HW_RENDER_CONTEXT_NEGOTIATION_INTERFACE_VULKAN_VERSION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  store %struct.retro_hw_render_context_negotiation_interface_vulkan* null, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  br label %46

46:                                               ; preds = %44, %38, %35
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %49
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  switch i32 %51, label %98 [
    i32 131, label %52
    i32 137, label %57
    i32 130, label %62
    i32 128, label %67
    i32 129, label %72
    i32 135, label %77
    i32 136, label %82
    i32 133, label %87
    i32 134, label %92
    i32 132, label %97
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %55
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %56, align 8
  br label %99

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %60
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %61, align 8
  br label %99

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %65
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %66, align 8
  br label %99

67:                                               ; preds = %46
  %68 = load i32, i32* %12, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %70
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %71, align 8
  br label %99

72:                                               ; preds = %46
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %12, align 4
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %75
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %76, align 8
  br label %99

77:                                               ; preds = %46
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %80
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %81, align 8
  br label %99

82:                                               ; preds = %46
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %85
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8** %86, align 8
  br label %99

87:                                               ; preds = %46
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %90
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %91, align 8
  br label %99

92:                                               ; preds = %46
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %95
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %96, align 8
  br label %99

97:                                               ; preds = %46
  br label %98

98:                                               ; preds = %46, %97
  br label %99

99:                                               ; preds = %98, %92, %87, %82, %77, %72, %67, %62, %57, %52
  %100 = load i64, i64* @vulkan_library, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = call i64 @dylib_load(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i64 %103, i64* @vulkan_library, align 8
  %104 = load i64, i64* @vulkan_library, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = call i64 @dylib_load(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i64 %107, i64* @vulkan_library, align 8
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i64, i64* @vulkan_library, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %255

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %116 = load i64, i64* @vulkan_library, align 8
  %117 = call i64 @dylib_proc(i64 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  store i64 %117, i64* %8, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %255

122:                                              ; preds = %114
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @vulkan_symbol_wrapper_init(i64 %123)
  %125 = call i32 (...) @vulkan_symbol_wrapper_load_global_symbols()
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %255

129:                                              ; preds = %122
  %130 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @vulkan_find_instance_extensions(i8** %130, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @MSG_PROGRAM, align 4
  %134 = call i8* @msg_hash_to_str(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  store i8* %134, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load i32, i32* @MSG_PROGRAM, align 4
  %138 = call i8* @msg_hash_to_str(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i8* %138, i8** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = call i8* @VK_MAKE_VERSION(i32 1, i32 0, i32 18)
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %12, align 4
  br label %149

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 %150, i32* %151, align 8
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  br label %157

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i8** [ %155, %154 ], [ null, %156 ]
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i8** %158, i8*** %159, align 8
  %160 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %161 = icmp ne %struct.retro_hw_render_context_negotiation_interface_vulkan* %160, null
  br i1 %161, label %162, label %205

162:                                              ; preds = %157
  %163 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %164 = getelementptr inbounds %struct.retro_hw_render_context_negotiation_interface_vulkan, %struct.retro_hw_render_context_negotiation_interface_vulkan* %163, i32 0, i32 2
  %165 = load %struct.TYPE_18__* (...)*, %struct.TYPE_18__* (...)** %164, align 8
  %166 = icmp ne %struct.TYPE_18__* (...)* %165, null
  br i1 %166, label %167, label %205

167:                                              ; preds = %162
  %168 = load %struct.retro_hw_render_context_negotiation_interface_vulkan*, %struct.retro_hw_render_context_negotiation_interface_vulkan** %14, align 8
  %169 = getelementptr inbounds %struct.retro_hw_render_context_negotiation_interface_vulkan, %struct.retro_hw_render_context_negotiation_interface_vulkan* %168, i32 0, i32 2
  %170 = load %struct.TYPE_18__* (...)*, %struct.TYPE_18__* (...)** %169, align 8
  %171 = call %struct.TYPE_18__* (...) %170()
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** %172, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %188

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* %182, i64 %186)
  br label %188

188:                                              ; preds = %178, %167
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i64 0, i64 0), i8* %198, i64 %202)
  br label %204

204:                                              ; preds = %194, %188
  br label %205

205:                                              ; preds = %204, %162, %157
  %206 = load i32*, i32** @cached_instance_vk, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32*, i32** @cached_instance_vk, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  store i32* %209, i32** %212, align 8
  store i32* null, i32** @cached_instance_vk, align 8
  %213 = load i64, i64* @VK_SUCCESS, align 8
  store i64 %213, i64* %7, align 8
  br label %219

214:                                              ; preds = %205
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = call i64 @vkCreateInstance(%struct.TYPE_16__* %9, i32* null, i32** %217)
  store i64 %218, i64* %7, align 8
  br label %219

219:                                              ; preds = %214, %208
  store i32 1, i32* %6, align 4
  br label %220

220:                                              ; preds = %238, %219
  %221 = load i32, i32* %6, align 4
  %222 = icmp ult i32 %221, 4
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i64, i64* %7, align 8
  %225 = load i64, i64* @VK_ERROR_INCOMPATIBLE_DRIVER, align 8
  %226 = icmp eq i64 %224, %225
  br label %227

227:                                              ; preds = %223, %220
  %228 = phi i1 [ false, %220 ], [ %226, %223 ]
  br i1 %228, label %229, label %241

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %230, align 8
  %231 = load i32, i32* %6, align 4
  %232 = call i8* @VK_MAKE_VERSION(i32 1, i32 0, i32 %231)
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i8* %232, i8** %233, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = call i64 @vkCreateInstance(%struct.TYPE_16__* %9, i32* null, i32** %236)
  store i64 %237, i64* %7, align 8
  br label %238

238:                                              ; preds = %229
  %239 = load i32, i32* %6, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %220

241:                                              ; preds = %227
  %242 = load i64, i64* %7, align 8
  %243 = load i64, i64* @VK_SUCCESS, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i64, i64* %7, align 8
  %247 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i64 %246)
  store i32 0, i32* %3, align 4
  br label %255

248:                                              ; preds = %241
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %250 = call i32 @vulkan_load_instance_symbols(%struct.TYPE_15__* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %248
  %253 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %255

254:                                              ; preds = %248
  store i32 1, i32* %3, align 4
  br label %255

255:                                              ; preds = %254, %252, %245, %127, %120, %112
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @video_driver_get_context_negotiation_interface(...) #2

declare dso_local i32 @RARCH_WARN(i8*) #2

declare dso_local i64 @dylib_load(i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

declare dso_local i64 @dylib_proc(i64, i8*) #2

declare dso_local i32 @vulkan_symbol_wrapper_init(i64) #2

declare dso_local i32 @vulkan_symbol_wrapper_load_global_symbols(...) #2

declare dso_local i32 @vulkan_find_instance_extensions(i8**, i32) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i8* @VK_MAKE_VERSION(i32, i32, i32) #2

declare dso_local i64 @vkCreateInstance(%struct.TYPE_16__*, i32*, i32**) #2

declare dso_local i32 @vulkan_load_instance_symbols(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
