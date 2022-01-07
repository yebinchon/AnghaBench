; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_createWindow.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_createWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i64, i32, i64, %struct.TYPE_32__, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i64, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_39__ = type { i32, i32, i64, i32 }
%struct.anon = type { i64, i64, i64, i64, i64 }
%struct.TYPE_37__ = type { i32, i8*, i8*, i32, i32, i32, i32, i64, i64, i32 }

@_GLFW_X11_CONTEXT_VISUAL = common dso_local global %struct.TYPE_38__* null, align 8
@_glfw = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@AllocNone = common dso_local global i32 0, align 4
@CWBorderPixel = common dso_local global i64 0, align 8
@CWColormap = common dso_local global i64 0, align 8
@CWEventMask = common dso_local global i64 0, align 8
@StructureNotifyMask = common dso_local global i32 0, align 4
@KeyPressMask = common dso_local global i32 0, align 4
@KeyReleaseMask = common dso_local global i32 0, align 4
@PointerMotionMask = common dso_local global i32 0, align 4
@ButtonPressMask = common dso_local global i32 0, align 4
@ButtonReleaseMask = common dso_local global i32 0, align 4
@ExposureMask = common dso_local global i32 0, align 4
@FocusChangeMask = common dso_local global i32 0, align 4
@VisibilityChangeMask = common dso_local global i32 0, align 4
@EnterWindowMask = common dso_local global i32 0, align 4
@LeaveWindowMask = common dso_local global i32 0, align 4
@PropertyChangeMask = common dso_local global i32 0, align 4
@InputOutput = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"X11: Failed to create window\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@CWOverrideRedirect = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@_NET_WM_STATE_ADD = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i64 0, align 8
@GLFW_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"X11: Failed to allocate WM hints\00", align 1
@StateHint = common dso_local global i32 0, align 4
@NormalState = common dso_local global i32 0, align 4
@PPosition = common dso_local global i32 0, align 4
@PMinSize = common dso_local global i32 0, align 4
@PMaxSize = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i64 0, align 8
@RRScreenChangeNotifyMask = common dso_local global i32 0, align 4
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@XNFocusWindow = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@XI_Motion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_36__*, %struct.TYPE_35__*)* @createWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createWindow(%struct.TYPE_36__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_39__, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_39__, align 8
  %10 = alloca %struct.anon, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  %18 = load %struct.TYPE_38__*, %struct.TYPE_38__** @_GLFW_X11_CONTEXT_VISUAL, align 8
  store %struct.TYPE_38__* %18, %struct.TYPE_38__** %8, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 12), align 8
  %21 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AllocNone, align 4
  %25 = call i32 @XCreateColormap(i32 %19, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* @CWBorderPixel, align 8
  %30 = load i64, i64* @CWColormap, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @CWEventMask, align 8
  %33 = or i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @StructureNotifyMask, align 4
  %41 = load i32, i32* @KeyPressMask, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @KeyReleaseMask, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PointerMotionMask, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ButtonPressMask, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @ButtonReleaseMask, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ExposureMask, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FocusChangeMask, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VisibilityChangeMask, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @EnterWindowMask, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LeaveWindowMask, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @PropertyChangeMask, align 4
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = call i32 (...) @_glfwGrabXErrorHandler()
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 12), align 8
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @InputOutput, align 4
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @XCreateWindow(i32 %65, i32 %66, i32 0, i32 0, i32 %69, i32 %72, i32 0, i32 %75, i32 %76, i32 %79, i64 %80, %struct.TYPE_39__* %7)
  %82 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = call i32 (...) @_glfwReleaseXErrorHandler()
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %2
  %92 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %93 = call i32 @_glfwInputXError(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @GL_FALSE, align 4
  store i32 %94, i32* %3, align 4
  br label %395

95:                                               ; preds = %2
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 11), align 4
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %103 = ptrtoint %struct.TYPE_36__* %102 to i32
  %104 = call i32 @XSaveContext(i32 %96, i32 %100, i32 %101, i32 %103)
  %105 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %95
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 8), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 10), align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* @True, align 4
  %117 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %9, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CWOverrideRedirect, align 4
  %124 = call i32 @XChangeWindowAttributes(i32 %118, i32 %122, i32 %123, %struct.TYPE_39__* %9)
  br label %125

125:                                              ; preds = %115, %112
  br label %163

126:                                              ; preds = %95
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  store i64 2, i64* %132, align 8
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 9), align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 9), align 8
  %141 = load i32, i32* @PropModeReplace, align 4
  %142 = bitcast %struct.anon* %10 to i8*
  %143 = call i32 @XChangeProperty(i32 %134, i32 %138, i64 %139, i64 %140, i32 32, i32 %141, i8* %142, i32 5)
  br label %144

144:                                              ; preds = %131, %126
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 8), align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 7), align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 8), align 8
  %158 = load i32, i32* @_NET_WM_STATE_ADD, align 4
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 7), align 8
  %160 = call i32 @sendEventToWM(%struct.TYPE_36__* %156, i64 %157, i32 %158, i64 %159, i32 0, i32 1, i32 0)
  br label %161

161:                                              ; preds = %155, %152, %149
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %125
  store i32 0, i32* %11, align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 0), align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 0), align 8
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %163
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 1), align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 1), align 4
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %179
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* %11, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %186 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @XSetWMProtocols(i32 %185, i32 %189, i32* %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %181
  %194 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 6), align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = call i32 (...) @getpid()
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 6), align 8
  %204 = load i64, i64* @XA_CARDINAL, align 8
  %205 = load i32, i32* @PropModeReplace, align 4
  %206 = bitcast i32* %13 to i8*
  %207 = call i32 @XChangeProperty(i32 %198, i32 %202, i64 %203, i64 %204, i32 32, i32 %205, i8* %206, i32 1)
  br label %208

208:                                              ; preds = %196, %193
  %209 = call %struct.TYPE_37__* (...) @XAllocWMHints()
  store %struct.TYPE_37__* %209, %struct.TYPE_37__** %14, align 8
  %210 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %211 = icmp ne %struct.TYPE_37__* %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* @GLFW_OUT_OF_MEMORY, align 4
  %214 = call i32 @_glfwInputError(i32 %213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32, i32* @GL_FALSE, align 4
  store i32 %215, i32* %3, align 4
  br label %395

216:                                              ; preds = %208
  %217 = load i32, i32* @StateHint, align 4
  %218 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %219 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %218, i32 0, i32 0
  store i32 %217, i32* %219, align 8
  %220 = load i32, i32* @NormalState, align 4
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %221, i32 0, i32 9
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %229 = call i32 @XSetWMHints(i32 %223, i32 %227, %struct.TYPE_37__* %228)
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %231 = call i32 @XFree(%struct.TYPE_37__* %230)
  %232 = call %struct.TYPE_37__* (...) @XAllocSizeHints()
  store %struct.TYPE_37__* %232, %struct.TYPE_37__** %15, align 8
  %233 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %233, i32 0, i32 0
  store i32 0, i32* %234, align 8
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %216
  %240 = load i32, i32* @PPosition, align 4
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 8
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 7
  %252 = call i32 @_glfwPlatformGetMonitorPos(i64 %247, i64* %249, i64* %251)
  br label %263

253:                                              ; preds = %216
  %254 = load i32, i32* @PPosition, align 4
  %255 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 7
  store i64 0, i64* %260, align 8
  %261 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %261, i32 0, i32 8
  store i64 0, i64* %262, align 8
  br label %263

263:                                              ; preds = %253, %239
  %264 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %290, label %268

268:                                              ; preds = %263
  %269 = load i32, i32* @PMinSize, align 4
  %270 = load i32, i32* @PMaxSize, align 4
  %271 = or i32 %269, %270
  %272 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 5
  store i32 %278, i32* %280, align 8
  %281 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %281, i32 0, i32 6
  store i32 %278, i32* %282, align 4
  %283 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %289 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %288, i32 0, i32 4
  store i32 %285, i32* %289, align 4
  br label %290

290:                                              ; preds = %268, %263
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %292 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %297 = call i32 @XSetWMNormalHints(i32 %291, i32 %295, %struct.TYPE_37__* %296)
  %298 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %299 = call i32 @XFree(%struct.TYPE_37__* %298)
  %300 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @strlen(i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %328

305:                                              ; preds = %290
  %306 = call %struct.TYPE_37__* (...) @XAllocClassHint()
  store %struct.TYPE_37__* %306, %struct.TYPE_37__** %16, align 8
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to i8*
  %311 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %312 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %311, i32 0, i32 1
  store i8* %310, i8** %312, align 8
  %313 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = inttoptr i64 %315 to i8*
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %317, i32 0, i32 2
  store i8* %316, i8** %318, align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %325 = call i32 @XSetClassHint(i32 %319, i32 %323, %struct.TYPE_37__* %324)
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %327 = call i32 @XFree(%struct.TYPE_37__* %326)
  br label %328

328:                                              ; preds = %305, %290
  %329 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 4), align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %328
  store i32 5, i32* %17, align 4
  %332 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 4), align 8
  %338 = load i64, i64* @XA_ATOM, align 8
  %339 = load i32, i32* @PropModeReplace, align 4
  %340 = bitcast i32* %17 to i8*
  %341 = call i32 @XChangeProperty(i32 %332, i32 %336, i64 %337, i64 %338, i32 32, i32 %339, i8* %340, i32 1)
  br label %342

342:                                              ; preds = %331, %328
  %343 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %344 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_36__* %343, i64 %346)
  %348 = load i32, i32* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 3), align 8
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @RRScreenChangeNotifyMask, align 4
  %354 = call i32 @XRRSelectInput(i32 %348, i32 %352, i32 %353)
  %355 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 2), align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %377

357:                                              ; preds = %342
  %358 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @_glfw, i32 0, i32 0, i32 2), align 8
  %359 = load i32, i32* @XNInputStyle, align 4
  %360 = load i32, i32* @XIMPreeditNothing, align 4
  %361 = load i32, i32* @XIMStatusNothing, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* @XNClientWindow, align 4
  %364 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @XNFocusWindow, align 4
  %369 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @XCreateIC(i64 %358, i32 %359, i32 %362, i32 %363, i32 %367, i32 %368, i32 %372, i32* null)
  %374 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %375, i32 0, i32 5
  store i32 %373, i32* %376, align 4
  br label %377

377:                                              ; preds = %357, %342
  %378 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %379 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %380, i32 0, i32 3
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %383, i32 0, i32 2
  %385 = call i32 @_glfwPlatformGetWindowPos(%struct.TYPE_36__* %378, i32* %381, i32* %384)
  %386 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %387 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %391, i32 0, i32 0
  %393 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_36__* %386, i32* %389, i32* %392)
  %394 = load i32, i32* @GL_TRUE, align 4
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %377, %212, %91
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local i32 @XCreateColormap(i32, i32, i32, i32) #1

declare dso_local i32 @_glfwGrabXErrorHandler(...) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_39__*) #1

declare dso_local i32 @_glfwReleaseXErrorHandler(...) #1

declare dso_local i32 @_glfwInputXError(i32, i8*) #1

declare dso_local i32 @XSaveContext(i32, i32, i32, i32) #1

declare dso_local i32 @XChangeWindowAttributes(i32, i32, i32, %struct.TYPE_39__*) #1

declare dso_local i32 @XChangeProperty(i32, i32, i64, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @sendEventToWM(%struct.TYPE_36__*, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i32*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local %struct.TYPE_37__* @XAllocWMHints(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @XSetWMHints(i32, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @XFree(%struct.TYPE_37__*) #1

declare dso_local %struct.TYPE_37__* @XAllocSizeHints(...) #1

declare dso_local i32 @_glfwPlatformGetMonitorPos(i64, i64*, i64*) #1

declare dso_local i32 @XSetWMNormalHints(i32, i32, %struct.TYPE_37__*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local %struct.TYPE_37__* @XAllocClassHint(...) #1

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_37__*) #1

declare dso_local i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @XRRSelectInput(i32, i32, i32) #1

declare dso_local i32 @XCreateIC(i64, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowPos(%struct.TYPE_36__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_36__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
