; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32 }

@fft_init.unity = internal constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@fft_vertex_program = common dso_local global i32 0, align 4
@fft_fragment_program_real = common dso_local global i32 0, align 4
@fft_fragment_program_complex = common dso_local global i32 0, align 4
@fft_fragment_program_resolve = common dso_local global i32 0, align 4
@fft_fragment_program_blur = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sTexture\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sParameterTexture\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sWindow\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"uOffsetScale\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"sFFT\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sHeight\00", align 1
@GL_R16UI = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@KAISER_BETA = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RED_INTEGER = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@GL_RG16I = common dso_local global i32 0, align 4
@GL_RG32UI = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@GL_RG_INTEGER = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT = common dso_local global i32 0, align 4
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@GL_DYNAMIC_DRAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @fft_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = load i32, i32* @fft_vertex_program, align 4
  %11 = load i32, i32* @fft_fragment_program_real, align 4
  %12 = call i8* @fft_compile_program(%struct.TYPE_9__* %9, i32 %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 13
  store i8* %12, i8** %14, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i32, i32* @fft_vertex_program, align 4
  %17 = load i32, i32* @fft_fragment_program_complex, align 4
  %18 = call i8* @fft_compile_program(%struct.TYPE_9__* %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 12
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @fft_vertex_program, align 4
  %23 = load i32, i32* @fft_fragment_program_resolve, align 4
  %24 = call i8* @fft_compile_program(%struct.TYPE_9__* %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 11
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load i32, i32* @fft_vertex_program, align 4
  %29 = load i32, i32* @fft_fragment_program_blur, align 4
  %30 = call i8* @fft_compile_program(%struct.TYPE_9__* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 10
  store i8* %30, i8** %32, align 8
  %33 = call i32 (...) @GL_CHECK_ERROR()
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 13
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @glUseProgram(i8* %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 13
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @glGetUniformLocation(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @glUniform1i(i32 %41, i32 0)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 13
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @glGetUniformLocation(i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @glUniform1i(i32 %46, i32 1)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 13
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @glGetUniformLocation(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @glUniform1i(i32 %51, i32 2)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 13
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @glGetUniformLocation(i8* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %57 = call i32 @glUniform4fv(i32 %56, i32 1, float* getelementptr inbounds ([4 x float], [4 x float]* @fft_init.unity, i64 0, i64 0))
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 12
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @glUseProgram(i8* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 12
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @glGetUniformLocation(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @glUniform1i(i32 %65, i32 0)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 12
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @glGetUniformLocation(i8* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @glUniform1i(i32 %70, i32 1)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 12
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @glGetUniformLocation(i8* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %76 = call i32 @glUniform4fv(i32 %75, i32 1, float* getelementptr inbounds ([4 x float], [4 x float]* @fft_init.unity, i64 0, i64 0))
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 11
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @glUseProgram(i8* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 11
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @glGetUniformLocation(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %85 = call i32 @glUniform1i(i32 %84, i32 0)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 11
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @glGetUniformLocation(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @glUniform4fv(i32 %89, i32 1, float* getelementptr inbounds ([4 x float], [4 x float]* @fft_init.unity, i64 0, i64 0))
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 10
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @glUseProgram(i8* %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 10
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @glGetUniformLocation(i8* %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %99 = call i32 @glUniform1i(i32 %98, i32 0)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 10
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @glGetUniformLocation(i8* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %104 = call i32 @glUniform4fv(i32 %103, i32 1, float* getelementptr inbounds ([4 x float], [4 x float]* @fft_init.unity, i64 0, i64 0))
  %105 = call i32 (...) @GL_CHECK_ERROR()
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 9
  %109 = load i32, i32* @GL_R16UI, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @GL_NEAREST, align 4
  %114 = load i32, i32* @GL_NEAREST, align 4
  %115 = call i32 @fft_init_texture(%struct.TYPE_9__* %106, i32* %108, i32 %109, i32 %112, i32 1, i32 1, i32 %113, i32 %114)
  %116 = call i32 (...) @GL_CHECK_ERROR()
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @calloc(i32 %119, i32 4)
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %5, align 8
  %122 = load i32, i32* @KAISER_BETA, align 4
  %123 = call double @kaiser_window_function(double 0.000000e+00, i32 %122)
  %124 = fdiv double 1.000000e+00, %123
  store double %124, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %158, %1
  %126 = load i32, i32* %3, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %161

131:                                              ; preds = %125
  %132 = load i32, i32* %3, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %135, 2
  %137 = sub i32 %132, %136
  %138 = uitofp i32 %137 to double
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 2
  %143 = sitofp i32 %142 to double
  %144 = fdiv double %138, %143
  store double %144, double* %6, align 8
  %145 = load double, double* %6, align 8
  %146 = load i32, i32* @KAISER_BETA, align 4
  %147 = call double @kaiser_window_function(double %145, i32 %146)
  store double %147, double* %7, align 8
  %148 = load double, double* %7, align 8
  %149 = fmul double 6.553500e+04, %148
  %150 = load double, double* %4, align 8
  %151 = fmul double %149, %150
  %152 = fptosi double %151 to i32
  %153 = call i32 @round(i32 %152)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %3, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %131
  %159 = load i32, i32* %3, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %125

161:                                              ; preds = %125
  %162 = load i32, i32* @GL_TEXTURE_2D, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @glBindTexture(i32 %162, i32 %165)
  %167 = load i32, i32* @GL_TEXTURE_2D, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @GL_RED_INTEGER, align 4
  %172 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = call i32 @glTexSubImage2D(i32 %167, i32 0, i32 0, i32 0, i32 %170, i32 1, i32 %171, i32 %172, i32* %174)
  %176 = load i32, i32* @GL_TEXTURE_2D, align 4
  %177 = call i32 @glBindTexture(i32 %176, i32 0)
  %178 = call i32 (...) @GL_CHECK_ERROR()
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 8
  %182 = load i32, i32* @GL_RG16I, align 4
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @GL_NEAREST, align 4
  %187 = load i32, i32* @GL_NEAREST, align 4
  %188 = call i32 @fft_init_texture(%struct.TYPE_9__* %179, i32* %181, i32 %182, i32 %185, i32 1, i32 1, i32 %186, i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 7
  %192 = load i32, i32* @GL_RG32UI, align 4
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @GL_NEAREST, align 4
  %200 = load i32, i32* @GL_NEAREST, align 4
  %201 = call i32 @fft_init_target(%struct.TYPE_9__* %189, i32* %191, i32 %192, i32 %195, i32 %198, i32 1, i32 %199, i32 %200)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 6
  %205 = load i32, i32* @GL_RGBA8, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @GL_NEAREST, align 4
  %213 = load i32, i32* @GL_NEAREST, align 4
  %214 = call i32 @fft_init_target(%struct.TYPE_9__* %202, i32* %204, i32 %205, i32 %208, i32 %211, i32 1, i32 %212, i32 %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  %218 = load i32, i32* @GL_RGBA8, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @MAX(i32 %227, i32 %230)
  %232 = call i32 @log2i(i32 %231)
  %233 = add nsw i32 %232, 1
  %234 = load i32, i32* @GL_NEAREST, align 4
  %235 = load i32, i32* @GL_LINEAR_MIPMAP_LINEAR, align 4
  %236 = call i32 @fft_init_target(%struct.TYPE_9__* %215, i32* %217, i32 %218, i32 %221, i32 %224, i32 %233, i32 %234, i32 %235)
  %237 = call i32 (...) @GL_CHECK_ERROR()
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %312, %161
  %239 = load i32, i32* %3, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp ult i32 %239, %242
  br i1 %243, label %244, label %315

244:                                              ; preds = %238
  store i32* null, i32** %8, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i32, i32* @GL_RG32UI, align 4
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @GL_NEAREST, align 4
  %258 = load i32, i32* @GL_NEAREST, align 4
  %259 = call i32 @fft_init_target(%struct.TYPE_9__* %245, i32* %252, i32 %253, i32 %256, i32 1, i32 1, i32 %257, i32 %258)
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = load i32, i32* %3, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i32, i32* @GL_RG32UI, align 4
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @GL_NEAREST, align 4
  %273 = load i32, i32* @GL_NEAREST, align 4
  %274 = call i32 @fft_init_texture(%struct.TYPE_9__* %260, i32* %267, i32 %268, i32 %271, i32 1, i32 1, i32 %272, i32 %273)
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = mul nsw i32 2, %277
  %279 = call i64 @calloc(i32 %278, i32 4)
  %280 = inttoptr i64 %279 to i32*
  store i32* %280, i32** %8, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %282 = load i32*, i32** %8, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @fft_build_params(%struct.TYPE_9__* %281, i32* %283, i32 %284, i32 %287)
  %289 = load i32, i32* @GL_TEXTURE_2D, align 4
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @glBindTexture(i32 %289, i32 %297)
  %299 = load i32, i32* @GL_TEXTURE_2D, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @GL_RG_INTEGER, align 4
  %304 = load i32, i32* @GL_UNSIGNED_INT, align 4
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = call i32 @glTexSubImage2D(i32 %299, i32 0, i32 0, i32 0, i32 %302, i32 1, i32 %303, i32 %304, i32* %306)
  %308 = load i32, i32* @GL_TEXTURE_2D, align 4
  %309 = call i32 @glBindTexture(i32 %308, i32 0)
  %310 = load i32*, i32** %8, align 8
  %311 = call i32 @free(i32* %310)
  br label %312

312:                                              ; preds = %244
  %313 = load i32, i32* %3, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %3, align 4
  br label %238

315:                                              ; preds = %238
  %316 = call i32 (...) @GL_CHECK_ERROR()
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 3
  %319 = call i32 @glGenBuffers(i32 1, i32* %318)
  %320 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @glBindBuffer(i32 %320, i32 %323)
  %325 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = mul i64 %330, 4
  %332 = trunc i64 %331 to i32
  %333 = load i32, i32* @GL_DYNAMIC_DRAW, align 4
  %334 = call i32 @glBufferData(i32 %325, i32 %332, i32 0, i32 %333)
  %335 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %336 = call i32 @glBindBuffer(i32 %335, i32 0)
  %337 = load i32*, i32** %5, align 8
  %338 = call i32 @free(i32* %337)
  ret void
}

declare dso_local i8* @fft_compile_program(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @GL_CHECK_ERROR(...) #1

declare dso_local i32 @glUseProgram(i8*) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @glGetUniformLocation(i8*, i8*) #1

declare dso_local i32 @glUniform4fv(i32, i32, float*) #1

declare dso_local i32 @fft_init_texture(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local double @kaiser_window_function(double, i32) #1

declare dso_local i32 @round(i32) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fft_init_target(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log2i(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @fft_build_params(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
