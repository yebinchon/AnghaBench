; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_createNativeWindow.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_x11_window.c_createNativeWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.anon = type { i64, i64, i64, i64, i64 }
%struct.TYPE_26__ = type { i8*, i8*, i32, i32 }

@_glfw = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
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
@GLFW_FALSE = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@XA_ATOM = common dso_local global i64 0, align 8
@XA_CARDINAL = common dso_local global i64 0, align 8
@GLFW_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"X11: Failed to allocate WM hints\00", align 1
@StateHint = common dso_local global i32 0, align 4
@NormalState = common dso_local global i32 0, align 4
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@XNFocusWindow = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i32*, i32)* @createNativeWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createNativeWindow(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.anon, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 14), align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @AllocNone, align 4
  %25 = call i32 @XCreateColormap(i32 %21, i32 %22, i32* %23, i32 %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* @CWBorderPixel, align 8
  %30 = load i64, i64* @CWColormap, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @CWEventMask, align 8
  %33 = or i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 1
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
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = call i32 (...) @_glfwGrabErrorHandlerX11()
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 14), align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @InputOutput, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @XCreateWindow(i32 %65, i32 %66, i32 0, i32 0, i32 %69, i32 %72, i32 0, i32 %73, i32 %74, i32* %75, i64 %76, %struct.TYPE_27__* %10)
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = call i32 (...) @_glfwReleaseErrorHandlerX11()
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %4
  %88 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %89 = call i32 @_glfwInputErrorX11(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %90, i32* %5, align 4
  br label %340

91:                                               ; preds = %4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 13), align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %99 = ptrtoint %struct.TYPE_25__* %98 to i32
  %100 = call i32 @XSaveContext(i32 %92, i32 %96, i32 %97, i32 %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i64 2, i64* %106, align 8
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 12), align 8
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 12), align 8
  %115 = load i32, i32* @PropModeReplace, align 4
  %116 = bitcast %struct.anon* %12 to i8*
  %117 = call i32 @XChangeProperty(i32 %108, i32 %112, i64 %113, i64 %114, i32 32, i32 %115, i8* %116, i32 5)
  br label %118

118:                                              ; preds = %105, %91
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 11), align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %180

121:                                              ; preds = %118
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %180, label %126

126:                                              ; preds = %121
  store i32 0, i32* %14, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 0), align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 0), align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %138
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %134, %131
  br label %141

141:                                              ; preds = %140, %126
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 1), align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 2), align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 1), align 4
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %156
  store i32 %153, i32* %157, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 2), align 8
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %161
  store i32 %158, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %149, %146
  br label %164

164:                                              ; preds = %163, %141
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 11), align 8
  %174 = load i64, i64* @XA_ATOM, align 8
  %175 = load i32, i32* @PropModeReplace, align 4
  %176 = bitcast [3 x i32]* %13 to i8*
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @XChangeProperty(i32 %168, i32 %172, i64 %173, i64 %174, i32 32, i32 %175, i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %167, %164
  br label %180

180:                                              ; preds = %179, %121, %118
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 3), align 4
  store i32 %182, i32* %181, align 4
  %183 = getelementptr inbounds i32, i32* %181, i64 1
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 4), align 8
  store i32 %184, i32* %183, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %191 = call i32 @XSetWMProtocols(i32 %185, i32 %189, i32* %190, i32 2)
  %192 = call i32 (...) @getpid()
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 10), align 8
  %199 = load i64, i64* @XA_CARDINAL, align 8
  %200 = load i32, i32* @PropModeReplace, align 4
  %201 = bitcast i32* %16 to i8*
  %202 = call i32 @XChangeProperty(i32 %193, i32 %197, i64 %198, i64 %199, i32 32, i32 %200, i8* %201, i32 1)
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 9), align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %180
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 5), align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %205
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 5), align 4
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 9), align 8
  %216 = load i64, i64* @XA_ATOM, align 8
  %217 = load i32, i32* @PropModeReplace, align 4
  %218 = bitcast i32* %17 to i8*
  %219 = call i32 @XChangeProperty(i32 %210, i32 %214, i64 %215, i64 %216, i32 32, i32 %217, i8* %218, i32 1)
  br label %220

220:                                              ; preds = %208, %205, %180
  %221 = call %struct.TYPE_26__* (...) @XAllocWMHints()
  store %struct.TYPE_26__* %221, %struct.TYPE_26__** %18, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %223 = icmp ne %struct.TYPE_26__* %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i32, i32* @GLFW_OUT_OF_MEMORY, align 4
  %226 = call i32 @_glfwInputError(i32 %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %227 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %227, i32* %5, align 4
  br label %340

228:                                              ; preds = %220
  %229 = load i32, i32* @StateHint, align 4
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @NormalState, align 4
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %241 = call i32 @XSetWMHints(i32 %235, i32 %239, %struct.TYPE_26__* %240)
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %243 = call i32 @XFree(%struct.TYPE_26__* %242)
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @updateNormalHints(%struct.TYPE_25__* %244, i32 %247, i32 %250)
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @strlen(i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %280

257:                                              ; preds = %228
  %258 = call %struct.TYPE_26__* (...) @XAllocClassHint()
  store %struct.TYPE_26__* %258, %struct.TYPE_26__** %19, align 8
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to i8*
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8*
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %277 = call i32 @XSetClassHint(i32 %271, i32 %275, %struct.TYPE_26__* %276)
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %279 = call i32 @XFree(%struct.TYPE_26__* %278)
  br label %280

280:                                              ; preds = %257, %228
  %281 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 7), align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %280
  store i32 5, i32* %20, align 4
  %284 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 8), align 8
  %285 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 7), align 8
  %290 = load i64, i64* @XA_ATOM, align 8
  %291 = load i32, i32* @PropModeReplace, align 4
  %292 = bitcast i32* %20 to i8*
  %293 = call i32 @XChangeProperty(i32 %284, i32 %288, i64 %289, i64 %290, i32 32, i32 %291, i8* %292, i32 1)
  br label %294

294:                                              ; preds = %283, %280
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_25__* %295, i64 %298)
  %300 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 6), align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %322

302:                                              ; preds = %294
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @_glfw, i32 0, i32 0, i32 6), align 8
  %304 = load i32, i32* @XNInputStyle, align 4
  %305 = load i32, i32* @XIMPreeditNothing, align 4
  %306 = load i32, i32* @XIMStatusNothing, align 4
  %307 = or i32 %305, %306
  %308 = load i32, i32* @XNClientWindow, align 4
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @XNFocusWindow, align 4
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @XCreateIC(i64 %303, i32 %304, i32 %307, i32 %308, i32 %312, i32 %313, i32 %317, i32* null)
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 5
  store i32 %318, i32* %321, align 4
  br label %322

322:                                              ; preds = %302, %294
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 2
  %330 = call i32 @_glfwPlatformGetWindowPos(%struct.TYPE_25__* %323, i32* %326, i32* %329)
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %336, i32 0, i32 0
  %338 = call i32 @_glfwPlatformGetWindowSize(%struct.TYPE_25__* %331, i32* %334, i32* %337)
  %339 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %339, i32* %5, align 4
  br label %340

340:                                              ; preds = %322, %224, %87
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

declare dso_local i32 @XCreateColormap(i32, i32, i32*, i32) #1

declare dso_local i32 @_glfwGrabErrorHandlerX11(...) #1

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_27__*) #1

declare dso_local i32 @_glfwReleaseErrorHandlerX11(...) #1

declare dso_local i32 @_glfwInputErrorX11(i32, i8*) #1

declare dso_local i32 @XSaveContext(i32, i32, i32, i32) #1

declare dso_local i32 @XChangeProperty(i32, i32, i64, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @XSetWMProtocols(i32, i32, i32*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local %struct.TYPE_26__* @XAllocWMHints(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @XSetWMHints(i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @XFree(%struct.TYPE_26__*) #1

declare dso_local i32 @updateNormalHints(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local %struct.TYPE_26__* @XAllocClassHint(...) #1

declare dso_local i32 @XSetClassHint(i32, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @_glfwPlatformSetWindowTitle(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @XCreateIC(i64, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowPos(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @_glfwPlatformGetWindowSize(%struct.TYPE_25__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
