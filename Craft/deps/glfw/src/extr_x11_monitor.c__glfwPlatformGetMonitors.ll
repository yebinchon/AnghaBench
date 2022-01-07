; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitors.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_monitor.c__glfwPlatformGetMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i32, i32 }
%struct.TYPE_33__ = type { i64, i64, i64, i64 }
%struct.TYPE_34__ = type { i32, i32, i32* }
%struct.TYPE_36__ = type { i32, i64*, i64, i64, i64, i64, i64 }
%struct.TYPE_35__ = type { i64, i32, i32, i8*, i32 }

@_glfw = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@RR_Connected = common dso_local global i64 0, align 8
@RR_Rotate_90 = common dso_local global i64 0, align 8
@RR_Rotate_270 = common dso_local global i64 0, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"X11: RandR monitor support seems broken\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Display\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_32__** @_glfwPlatformGetMonitors(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_32__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_32__*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_32__** null, %struct.TYPE_32__*** %7, align 8
  %17 = load i32*, i32** %2, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 2, i32 1), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %244

20:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %9, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 4), align 8
  %23 = call %struct.TYPE_34__* @XRRGetScreenResources(i32 %21, i32 %22)
  store %struct.TYPE_34__* %23, %struct.TYPE_34__** %10, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 4), align 8
  %26 = call i64 @XRRGetOutputPrimary(i32 %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_32__** @calloc(i32 %29, i32 8)
  store %struct.TYPE_32__** %30, %struct.TYPE_32__*** %7, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 3, i32 0), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %35 = call %struct.TYPE_33__* @XineramaQueryScreens(i32 %34, i32* %8)
  store %struct.TYPE_33__* %35, %struct.TYPE_33__** %9, align 8
  br label %36

36:                                               ; preds = %33, %20
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %223, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %226

43:                                               ; preds = %37
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_36__* @XRRGetCrtcInfo(i32 %44, %struct.TYPE_34__* %45, i32 %52)
  store %struct.TYPE_36__* %53, %struct.TYPE_36__** %12, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %217, %43
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %220

60:                                               ; preds = %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.TYPE_35__* @XRRGetOutputInfo(i32 %61, %struct.TYPE_34__* %62, i64 %69)
  store %struct.TYPE_35__* %70, %struct.TYPE_35__** %16, align 8
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RR_Connected, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %78 = call i32 @XRRFreeOutputInfo(%struct.TYPE_35__* %77)
  br label %217

79:                                               ; preds = %60
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RR_Rotate_90, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @RR_Rotate_270, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  br label %105

98:                                               ; preds = %85
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call %struct.TYPE_32__* @_glfwAllocMonitor(i8* %108, i32 %109, i32 %110)
  store %struct.TYPE_32__* %111, %struct.TYPE_32__** %15, align 8
  %112 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %182, %105
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %185

132:                                              ; preds = %128
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %181

143:                                              ; preds = %132
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %149, %152
  br i1 %153, label %154, label %181

154:                                              ; preds = %143
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %160, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %154
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %171, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %165
  %177 = load i32, i32* %5, align 4
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 8
  br label %185

181:                                              ; preds = %165, %154, %143, %132
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %128

185:                                              ; preds = %176, %128
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  %187 = call i32 @XRRFreeOutputInfo(%struct.TYPE_35__* %186)
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %15, align 8
  %191 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %191, i64 %194
  store %struct.TYPE_32__* %190, %struct.TYPE_32__** %195, align 8
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %11, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %185
  %206 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %206, i64 0
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %207, align 8
  %209 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %209, i64 %212
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %213, align 8
  %215 = call i32 @_GLFW_SWAP_POINTERS(%struct.TYPE_32__* %208, %struct.TYPE_32__* %214)
  br label %216

216:                                              ; preds = %205, %185
  br label %217

217:                                              ; preds = %216, %76
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  br label %54

220:                                              ; preds = %54
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %222 = call i32 @XRRFreeCrtcInfo(%struct.TYPE_36__* %221)
  br label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %3, align 4
  br label %37

226:                                              ; preds = %37
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %228 = call i32 @XRRFreeScreenResources(%struct.TYPE_34__* %227)
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %230 = icmp ne %struct.TYPE_33__* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %233 = call i32 @XFree(%struct.TYPE_33__* %232)
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i32, i32* %6, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %239 = call i32 @_glfwInputError(i32 %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %240 = load i32, i32* @GL_TRUE, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 2, i32 0), align 8
  %241 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %242 = call i32 @free(%struct.TYPE_32__** %241)
  store %struct.TYPE_32__** null, %struct.TYPE_32__*** %7, align 8
  br label %243

243:                                              ; preds = %237, %234
  br label %244

244:                                              ; preds = %243, %1
  %245 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %246 = icmp ne %struct.TYPE_32__** %245, null
  br i1 %246, label %258, label %247

247:                                              ; preds = %244
  %248 = call %struct.TYPE_32__** @calloc(i32 1, i32 8)
  store %struct.TYPE_32__** %248, %struct.TYPE_32__*** %7, align 8
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 0), align 8
  %251 = call i32 @DisplayWidthMM(i32 %249, i32 %250)
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 1), align 4
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @_glfw, i32 0, i32 0, i32 0), align 8
  %254 = call i32 @DisplayHeightMM(i32 %252, i32 %253)
  %255 = call %struct.TYPE_32__* @_glfwAllocMonitor(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %251, i32 %254)
  %256 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %256, i64 0
  store %struct.TYPE_32__* %255, %struct.TYPE_32__** %257, align 8
  store i32 1, i32* %6, align 4
  br label %258

258:                                              ; preds = %247, %244
  %259 = load i32, i32* %6, align 4
  %260 = load i32*, i32** %2, align 8
  store i32 %259, i32* %260, align 4
  %261 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  ret %struct.TYPE_32__** %261
}

declare dso_local %struct.TYPE_34__* @XRRGetScreenResources(i32, i32) #1

declare dso_local i64 @XRRGetOutputPrimary(i32, i32) #1

declare dso_local %struct.TYPE_32__** @calloc(i32, i32) #1

declare dso_local %struct.TYPE_33__* @XineramaQueryScreens(i32, i32*) #1

declare dso_local %struct.TYPE_36__* @XRRGetCrtcInfo(i32, %struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_35__* @XRRGetOutputInfo(i32, %struct.TYPE_34__*, i64) #1

declare dso_local i32 @XRRFreeOutputInfo(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_32__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local i32 @_GLFW_SWAP_POINTERS(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @XRRFreeCrtcInfo(%struct.TYPE_36__*) #1

declare dso_local i32 @XRRFreeScreenResources(%struct.TYPE_34__*) #1

declare dso_local i32 @XFree(%struct.TYPE_33__*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_32__**) #1

declare dso_local i32 @DisplayWidthMM(i32, i32) #1

declare dso_local i32 @DisplayHeightMM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
