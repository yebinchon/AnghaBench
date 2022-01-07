; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_events.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/tests/extr_events.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@error_callback = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Library initialized\0A\00", align 1
@monitor_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"hfn:\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@GLFW_REFRESH_RATE = common dso_local global i32 0, align 4
@GLFW_RED_BITS = common dso_local global i32 0, align 4
@GLFW_GREEN_BITS = common dso_local global i32 0, align 4
@GLFW_BLUE_BITS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Invalid user\0A\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Event Linter (Window %i)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Creating full screen window %i (%ix%i on %s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Creating windowed mode window %i (%ix%i)\0A\00", align 1
@window_pos_callback = common dso_local global i32 0, align 4
@window_size_callback = common dso_local global i32 0, align 4
@framebuffer_size_callback = common dso_local global i32 0, align 4
@window_close_callback = common dso_local global i32 0, align 4
@window_refresh_callback = common dso_local global i32 0, align 4
@window_focus_callback = common dso_local global i32 0, align 4
@window_iconify_callback = common dso_local global i32 0, align 4
@mouse_button_callback = common dso_local global i32 0, align 4
@cursor_position_callback = common dso_local global i32 0, align 4
@cursor_enter_callback = common dso_local global i32 0, align 4
@scroll_callback = common dso_local global i32 0, align 4
@key_callback = common dso_local global i32 0, align 4
@char_callback = common dso_local global i32 0, align 4
@char_mods_callback = common dso_local global i32 0, align 4
@drop_callback = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"Main loop starting\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 1, i32* %12, align 4
  %15 = load i32, i32* @LC_ALL, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @error_callback, align 4
  %18 = call i32 @glfwSetErrorCallback(i32 %17)
  %19 = call i32 (...) @glfwInit()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @monitor_callback, align 4
  %27 = call i32 @glfwSetMonitorCallback(i32 %26)
  br label %28

28:                                               ; preds = %49, %24
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %45 [
    i32 104, label %35
    i32 102, label %39
    i32 110, label %41
  ]

35:                                               ; preds = %33
  %36 = call i32 (...) @usage()
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %33
  %40 = call i32* (...) @glfwGetPrimaryMonitor()
  store i32* %40, i32** %7, align 8
  br label %49

41:                                               ; preds = %33
  %42 = load i32, i32* @optarg, align 4
  %43 = call i64 @strtol(i32 %42, i32* null, i32 10)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  br label %49

45:                                               ; preds = %33
  %46 = call i32 (...) @usage()
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %41, %39
  br label %28

50:                                               ; preds = %28
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_8__* @glfwGetVideoMode(i32* %54)
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %13, align 8
  %56 = load i32, i32* @GLFW_REFRESH_RATE, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @glfwWindowHint(i32 %56, i32 %59)
  %61 = load i32, i32* @GLFW_RED_BITS, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @glfwWindowHint(i32 %61, i32 %64)
  %66 = load i32, i32* @GLFW_GREEN_BITS, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @glfwWindowHint(i32 %66, i32 %69)
  %71 = load i32, i32* @GLFW_BLUE_BITS, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @glfwWindowHint(i32 %71, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %10, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %11, align 4
  br label %83

82:                                               ; preds = %50
  store i32 640, i32* %10, align 4
  store i32 480, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %53
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  %90 = call i32 @exit(i32 %89) #3
  unreachable

91:                                               ; preds = %83
  %92 = load i32, i32* %12, align 4
  %93 = call %struct.TYPE_7__* @calloc(i32 %92, i32 12)
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %308, %91
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %311

98:                                               ; preds = %94
  %99 = load i32, i32* @GL_TRUE, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 %106, i32* %111, align 4
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %98
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = call i8* @glfwGetMonitorName(i32* %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i8* %132)
  br label %144

134:                                              ; preds = %98
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %134, %122
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %148 = load i32*, i32** %7, align 8
  %149 = call i32 @glfwCreateWindow(i32 %145, i32 %146, i8* %147, i32* %148, i32* null)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  store i32 %149, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %144
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = call i32 @free(%struct.TYPE_7__* %163)
  %165 = call i32 (...) @glfwTerminate()
  %166 = load i32, i32* @EXIT_FAILURE, align 4
  %167 = call i32 @exit(i32 %166) #3
  unreachable

168:                                              ; preds = %144
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %177
  %179 = call i32 @glfwSetWindowUserPointer(i32 %174, %struct.TYPE_7__* %178)
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @window_pos_callback, align 4
  %187 = call i32 @glfwSetWindowPosCallback(i32 %185, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @window_size_callback, align 4
  %195 = call i32 @glfwSetWindowSizeCallback(i32 %193, i32 %194)
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @framebuffer_size_callback, align 4
  %203 = call i32 @glfwSetFramebufferSizeCallback(i32 %201, i32 %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @window_close_callback, align 4
  %211 = call i32 @glfwSetWindowCloseCallback(i32 %209, i32 %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @window_refresh_callback, align 4
  %219 = call i32 @glfwSetWindowRefreshCallback(i32 %217, i32 %218)
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @window_focus_callback, align 4
  %227 = call i32 @glfwSetWindowFocusCallback(i32 %225, i32 %226)
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @window_iconify_callback, align 4
  %235 = call i32 @glfwSetWindowIconifyCallback(i32 %233, i32 %234)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @mouse_button_callback, align 4
  %243 = call i32 @glfwSetMouseButtonCallback(i32 %241, i32 %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @cursor_position_callback, align 4
  %251 = call i32 @glfwSetCursorPosCallback(i32 %249, i32 %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @cursor_enter_callback, align 4
  %259 = call i32 @glfwSetCursorEnterCallback(i32 %257, i32 %258)
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @scroll_callback, align 4
  %267 = call i32 @glfwSetScrollCallback(i32 %265, i32 %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @key_callback, align 4
  %275 = call i32 @glfwSetKeyCallback(i32 %273, i32 %274)
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @char_callback, align 4
  %283 = call i32 @glfwSetCharCallback(i32 %281, i32 %282)
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @char_mods_callback, align 4
  %291 = call i32 @glfwSetCharModsCallback(i32 %289, i32 %290)
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @drop_callback, align 4
  %299 = call i32 @glfwSetDropCallback(i32 %297, i32 %298)
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @glfwMakeContextCurrent(i32 %305)
  %307 = call i32 @glfwSwapInterval(i32 1)
  br label %308

308:                                              ; preds = %168
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %94

311:                                              ; preds = %94
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %313

313:                                              ; preds = %337, %311
  store i32 0, i32* %9, align 4
  br label %314

314:                                              ; preds = %329, %313
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %12, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %332

318:                                              ; preds = %314
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i64 @glfwWindowShouldClose(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %318
  br label %332

328:                                              ; preds = %318
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %9, align 4
  br label %314

332:                                              ; preds = %327, %314
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %12, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  br label %341

337:                                              ; preds = %332
  %338 = call i32 (...) @glfwWaitEvents()
  %339 = load i32, i32* @stdout, align 4
  %340 = call i32 @fflush(i32 %339)
  br label %313

341:                                              ; preds = %336
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %343 = call i32 @free(%struct.TYPE_7__* %342)
  %344 = call i32 (...) @glfwTerminate()
  %345 = load i32, i32* @EXIT_SUCCESS, align 4
  %346 = call i32 @exit(i32 %345) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @glfwSetMonitorCallback(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @glfwGetPrimaryMonitor(...) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @glfwGetVideoMode(i32*) #1

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @glfwGetMonitorName(i32*) #1

declare dso_local i32 @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @glfwTerminate(...) #1

declare dso_local i32 @glfwSetWindowUserPointer(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @glfwSetWindowPosCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowSizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetFramebufferSizeCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowCloseCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowRefreshCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowFocusCallback(i32, i32) #1

declare dso_local i32 @glfwSetWindowIconifyCallback(i32, i32) #1

declare dso_local i32 @glfwSetMouseButtonCallback(i32, i32) #1

declare dso_local i32 @glfwSetCursorPosCallback(i32, i32) #1

declare dso_local i32 @glfwSetCursorEnterCallback(i32, i32) #1

declare dso_local i32 @glfwSetScrollCallback(i32, i32) #1

declare dso_local i32 @glfwSetKeyCallback(i32, i32) #1

declare dso_local i32 @glfwSetCharCallback(i32, i32) #1

declare dso_local i32 @glfwSetCharModsCallback(i32, i32) #1

declare dso_local i32 @glfwSetDropCallback(i32, i32) #1

declare dso_local i32 @glfwMakeContextCurrent(i32) #1

declare dso_local i32 @glfwSwapInterval(i32) #1

declare dso_local i64 @glfwWindowShouldClose(i32) #1

declare dso_local i32 @glfwWaitEvents(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
