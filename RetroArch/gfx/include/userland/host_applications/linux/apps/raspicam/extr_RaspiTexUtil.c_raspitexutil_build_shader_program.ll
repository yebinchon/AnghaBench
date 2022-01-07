; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_build_shader_program.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_build_shader_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8**, i32*, i8**, i32*, i8*, i8*, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Program info log %s\00", align 1
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to link shader program\00", align 1
@SHADER_MAX_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to get location for attribute %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Attribute for %s is %d\00", align 1
@SHADER_MAX_UNIFORMS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to get location for uniform %s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Uniform for %s is %d\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: Failed to build shader program\00", align 1
@VCOS_FUNCTION = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitexutil_build_shader_program(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = call i32 @vcos_assert(%struct.TYPE_5__* %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = call i32 @vcos_assert(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = call i32 @vcos_assert(%struct.TYPE_5__* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %1
  br label %274

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  store i8* null, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i8* null, i8** %35, align 8
  %36 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %37 = call i8* @glCreateShader(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  %45 = call i32 @glShaderSource(i8* %42, i32 1, %struct.TYPE_5__** %44, i32* null)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @glCompileShader(i8* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %54 = call i32 @glGetShaderiv(i8* %52, i32 %53, i32* %4)
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %31
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %62 = call i32 @glGetShaderInfoLog(i8* %60, i32 1024, i32* %7, i8* %61)
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %64 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %63)
  br label %274

65:                                               ; preds = %31
  %66 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %67 = call i8* @glCreateShader(i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = call i32 @glShaderSource(i8* %72, i32 1, %struct.TYPE_5__** %74, i32* null)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @glCompileShader(i8* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %84 = call i32 @glGetShaderiv(i8* %82, i32 %83, i32* %4)
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %65
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %92 = call i32 @glGetShaderInfoLog(i8* %90, i32 1024, i32* %7, i8* %91)
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %94 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %93)
  br label %274

95:                                               ; preds = %65
  %96 = call i32 (...) @glCreateProgram()
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @glAttachShader(i32 %101, i8* %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @glAttachShader(i32 %108, i8* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @glLinkProgram(i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @GL_LINK_STATUS, align 4
  %121 = call i32 @glGetProgramiv(i32 %119, i32 %120, i32* %4)
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %95
  %125 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %130 = call i32 @glGetProgramInfoLog(i32 %128, i32 1024, i32* %7, i8* %129)
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %132 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %131)
  br label %274

133:                                              ; preds = %95
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %200, %133
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @SHADER_MAX_ATTRIBUTES, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %203

138:                                              ; preds = %134
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %138
  br label %203

148:                                              ; preds = %138
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @glGetAttribLocation(i32 %151, i8* %158)
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %183

174:                                              ; preds = %148
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %181)
  br label %274

183:                                              ; preds = %148
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %190, i32 %197)
  br label %199

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %134

203:                                              ; preds = %147, %134
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %270, %203
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @SHADER_MAX_UNIFORMS, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %273

208:                                              ; preds = %204
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i8**, i8*** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %208
  br label %273

218:                                              ; preds = %208
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i8**, i8*** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @glGetUniformLocation(i32 %221, i8* %228)
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %253

244:                                              ; preds = %218
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %5, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %251)
  br label %274

253:                                              ; preds = %218
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = load i8**, i8*** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %260, i32 %267)
  br label %269

269:                                              ; preds = %253
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %5, align 4
  br label %204

273:                                              ; preds = %217, %204
  store i32 0, i32* %2, align 4
  br label %293

274:                                              ; preds = %244, %174, %124, %87, %57, %30
  %275 = load i8*, i8** @VCOS_FUNCTION, align 8
  %276 = call i32 (i8*, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %275)
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %278 = icmp ne %struct.TYPE_5__* %277, null
  br i1 %278, label %279, label %292

279:                                              ; preds = %274
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @glDeleteProgram(i32 %282)
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 5
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @glDeleteShader(i8* %286)
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 4
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @glDeleteShader(i8* %290)
  br label %292

292:                                              ; preds = %279, %274
  store i32 -1, i32* %2, align 4
  br label %293

293:                                              ; preds = %292, %273
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @vcos_assert(%struct.TYPE_5__*) #1

declare dso_local i8* @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i8*, i32, %struct.TYPE_5__**, i32*) #1

declare dso_local i32 @glCompileShader(i8*) #1

declare dso_local i32 @glGetShaderiv(i8*, i32, i32*) #1

declare dso_local i32 @glGetShaderInfoLog(i8*, i32, i32*, i8*) #1

declare dso_local i32 @vcos_log_error(i8*, ...) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @glAttachShader(i32, i8*) #1

declare dso_local i32 @glLinkProgram(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i32*) #1

declare dso_local i32 @glGetProgramInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @glGetAttribLocation(i32, i8*) #1

declare dso_local i32 @vcos_log_trace(i8*, i8*, i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @glDeleteShader(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
