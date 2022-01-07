; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_draw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32 }

@vidtex_draw.frame_num = internal global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_DEPTH_BUFFER_BIT = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@EGL_NO_IMAGE_KHR = common dso_local global i8* null, align 8
@VIDTEX_OPT_Y_TEXTURE = common dso_local global i32 0, align 4
@EGL_IMAGE_BRCM_MULTIMEDIA_Y = common dso_local global i32 0, align 4
@VIDTEX_OPT_U_TEXTURE = common dso_local global i32 0, align 4
@EGL_IMAGE_BRCM_MULTIMEDIA_U = common dso_local global i32 0, align 4
@VIDTEX_OPT_V_TEXTURE = common dso_local global i32 0, align 4
@EGL_IMAGE_BRCM_MULTIMEDIA_V = common dso_local global i32 0, align 4
@EGL_IMAGE_BRCM_MULTIMEDIA = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EGL image conversion error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Created EGL image %p for buf %p\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Exceeded configured max number of EGL images\00", align 1
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@vt_vertices = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@vt_tex_coords = common dso_local global %struct.TYPE_10__* null, align 8
@GL_TRIANGLES = common dso_local global i32 0, align 4
@VIDTEX_OPT_IMG_PER_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @vidtex_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vidtex_draw(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @vcos_assert(i8* %10)
  %12 = call i32 @glClearColor(i32 0, i32 0, i32 0, i32 0)
  %13 = call i32 @glClearDepthf(i32 1)
  %14 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %15 = load i32, i32* @GL_DEPTH_BUFFER_BIT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @glClear(i32 %16)
  %18 = call i32 (...) @glLoadIdentity()
  %19 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @glBindTexture(i32 %19, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @VIDTEX_CHECK_GL(%struct.TYPE_9__* %24)
  %26 = load i8*, i8** @EGL_NO_IMAGE_KHR, align 8
  store i8* %26, i8** %5, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  br label %30

30:                                               ; preds = %128, %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = call i32 @vcos_countof(%struct.TYPE_10__* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %39
  %41 = icmp ult %struct.TYPE_10__* %31, %40
  br i1 %41, label %42, label %131

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @vcos_assert(i8* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %5, align 8
  br label %131

56:                                               ; preds = %42
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %127

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @vcos_assert(i8* %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @VIDTEX_OPT_Y_TEXTURE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* @EGL_IMAGE_BRCM_MULTIMEDIA_Y, align 4
  store i32 %77, i32* %7, align 4
  br label %100

78:                                               ; preds = %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @VIDTEX_OPT_U_TEXTURE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @EGL_IMAGE_BRCM_MULTIMEDIA_U, align 4
  store i32 %86, i32* %7, align 4
  br label %99

87:                                               ; preds = %78
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @VIDTEX_OPT_V_TEXTURE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @EGL_IMAGE_BRCM_MULTIMEDIA_V, align 4
  store i32 %95, i32* %7, align 4
  br label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @EGL_IMAGE_BRCM_MULTIMEDIA, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %76
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = call i8* @eglCreateImageKHR(i32 %103, i32 %104, i32 %105, i32 %107, i32* null)
  store i8* %108, i8** %5, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load i8*, i8** @EGL_NO_IMAGE_KHR, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = call i32 @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %124

114:                                              ; preds = %100
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i8*, i8** %4, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %114, %112
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = call i32 @VIDTEX_CHECK_GL(%struct.TYPE_9__* %125)
  br label %131

127:                                              ; preds = %56
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 1
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %6, align 8
  br label %30

131:                                              ; preds = %124, %48, %30
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = call i32 @vcos_countof(%struct.TYPE_10__* %138)
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %140
  %142 = icmp eq %struct.TYPE_10__* %132, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = call i32 @vcos_log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %131
  %146 = load i8*, i8** %5, align 8
  %147 = load i8*, i8** @EGL_NO_IMAGE_KHR, align 8
  %148 = icmp ne i8* %146, %147
  br i1 %148, label %149, label %203

149:                                              ; preds = %145
  store i32 450, i32* %8, align 4
  %150 = load i32, i32* @vidtex_draw.frame_num, align 4
  %151 = mul nsw i32 %150, 360
  %152 = load i32, i32* %8, align 4
  %153 = sdiv i32 %151, %152
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* @vidtex_draw.frame_num, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* %8, align 4
  %157 = srem i32 %155, %156
  store i32 %157, i32* @vidtex_draw.frame_num, align 4
  %158 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = call i32 @glEGLImageTargetTexture2DOES(i32 %158, i8* %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = call i32 @VIDTEX_CHECK_GL(%struct.TYPE_9__* %161)
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @glRotatef(i32 %163, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %165 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %166 = call i32 @glEnableClientState(i32 %165)
  %167 = load i32, i32* @GL_FLOAT, align 4
  %168 = load i32, i32* @vt_vertices, align 4
  %169 = call i32 @glVertexPointer(i32 3, i32 %167, i32 0, i32 %168)
  %170 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %171 = call i32 @glDisableClientState(i32 %170)
  %172 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %173 = call i32 @glEnableClientState(i32 %172)
  %174 = load i32, i32* @GL_FLOAT, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vt_tex_coords, align 8
  %176 = call i32 @glTexCoordPointer(i32 2, i32 %174, i32 0, %struct.TYPE_10__* %175)
  %177 = load i32, i32* @GL_TRIANGLES, align 4
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vt_tex_coords, align 8
  %179 = call i32 @vcos_countof(%struct.TYPE_10__* %178)
  %180 = sdiv i32 %179, 2
  %181 = call i32 @glDrawArrays(i32 %177, i32 0, i32 %180)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @eglSwapBuffers(i32 %184, i32 %187)
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @VIDTEX_OPT_IMG_PER_FRAME, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %149
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %197 = call i32 @vidtex_destroy_images(%struct.TYPE_9__* %196)
  br label %198

198:                                              ; preds = %195, %149
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %198, %145
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = call i32 @VIDTEX_CHECK_GL(%struct.TYPE_9__* %204)
  ret void
}

declare dso_local i32 @vcos_assert(i8*) #1

declare dso_local i32 @glClearColor(i32, i32, i32, i32) #1

declare dso_local i32 @glClearDepthf(i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @VIDTEX_CHECK_GL(%struct.TYPE_9__*) #1

declare dso_local i32 @vcos_countof(%struct.TYPE_10__*) #1

declare dso_local i8* @eglCreateImageKHR(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vcos_log_error(i8*) #1

declare dso_local i32 @vcos_log_trace(i8*, i8*, i8*) #1

declare dso_local i32 @glEGLImageTargetTexture2DOES(i32, i8*) #1

declare dso_local i32 @glRotatef(i32, double, double, double) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @glDisableClientState(i32) #1

declare dso_local i32 @glTexCoordPointer(i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local i32 @vidtex_destroy_images(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
