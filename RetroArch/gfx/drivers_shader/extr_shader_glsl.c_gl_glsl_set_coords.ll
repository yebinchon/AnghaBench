; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_coords.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_set_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_coords = type { i32, i32, i32, i32, i32 }
%struct.glsl_attrib = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.shader_uniforms* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.shader_uniforms = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.video_coords*)* @gl_glsl_set_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_glsl_set_coords(i8* %0, %struct.video_coords* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.video_coords*, align 8
  %6 = alloca [40 x i32], align 16
  %7 = alloca [4 x %struct.glsl_attrib], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.shader_uniforms*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.video_coords* %1, %struct.video_coords** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  store i32* %14, i32** %10, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.shader_uniforms*, %struct.shader_uniforms** %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %22, i64 %25
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi %struct.shader_uniforms* [ %26, %19 ], [ null, %27 ]
  store %struct.shader_uniforms* %29, %struct.shader_uniforms** %12, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %41 = icmp ne %struct.video_coords* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39, %32, %28
  %43 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %44 = icmp ne %struct.video_coords* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %218

46:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %218

47:                                               ; preds = %39
  %48 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %49 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  store i64 0, i64* %13, align 8
  %53 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %54 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %13, align 8
  %62 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %63 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %13, align 8
  %71 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %72 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %13, align 8
  %80 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %81 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp sge i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = mul nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %13, align 8
  %89 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %90 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = load i64, i64* %13, align 8
  %95 = mul i64 %94, %93
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i64 @malloc(i64 %96)
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %10, align 8
  br label %99

99:                                               ; preds = %52, %47
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %218

103:                                              ; preds = %99
  %104 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %105 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = getelementptr inbounds [4 x %struct.glsl_attrib], [4 x %struct.glsl_attrib]* %7, i64 0, i64 0
  %110 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %111 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %114 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @gl_glsl_set_coord_array(%struct.glsl_attrib* %109, i64 %112, i32 %115, %struct.video_coords* %116, i64 %117, i32 2)
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %108, %103
  %122 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %123 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = getelementptr inbounds [4 x %struct.glsl_attrib], [4 x %struct.glsl_attrib]* %7, i64 0, i64 0
  %128 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %129 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %132 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @gl_glsl_set_coord_array(%struct.glsl_attrib* %127, i64 %130, i32 %133, %struct.video_coords* %134, i64 %135, i32 2)
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %8, align 8
  br label %139

139:                                              ; preds = %126, %121
  %140 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %141 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = getelementptr inbounds [4 x %struct.glsl_attrib], [4 x %struct.glsl_attrib]* %7, i64 0, i64 0
  %146 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %147 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %150 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @gl_glsl_set_coord_array(%struct.glsl_attrib* %145, i64 %148, i32 %151, %struct.video_coords* %152, i64 %153, i32 4)
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %144, %139
  %158 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %159 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %157
  %163 = getelementptr inbounds [4 x %struct.glsl_attrib], [4 x %struct.glsl_attrib]* %7, i64 0, i64 0
  %164 = load %struct.shader_uniforms*, %struct.shader_uniforms** %12, align 8
  %165 = getelementptr inbounds %struct.shader_uniforms, %struct.shader_uniforms* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %168 = getelementptr inbounds %struct.video_coords, %struct.video_coords* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.video_coords*, %struct.video_coords** %5, align 8
  %171 = load i64, i64* %9, align 8
  %172 = call i32 @gl_glsl_set_coord_array(%struct.glsl_attrib* %163, i64 %166, i32 %169, %struct.video_coords* %170, i64 %171, i32 2)
  %173 = load i64, i64* %8, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %8, align 8
  br label %175

175:                                              ; preds = %162, %157
  %176 = load i64, i64* %9, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %175
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32*, i32** %10, align 8
  %206 = load i64, i64* %9, align 8
  %207 = getelementptr inbounds [4 x %struct.glsl_attrib], [4 x %struct.glsl_attrib]* %7, i64 0, i64 0
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @gl_glsl_set_attribs(%struct.TYPE_7__* %179, i32 %188, i32* %196, i32* %204, i32* %205, i64 %206, %struct.glsl_attrib* %207, i64 %208)
  br label %210

210:                                              ; preds = %178, %175
  %211 = load i32*, i32** %10, align 8
  %212 = getelementptr inbounds [40 x i32], [40 x i32]* %6, i64 0, i64 0
  %213 = icmp ne i32* %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @free(i32* %215)
  br label %217

217:                                              ; preds = %214, %210
  store i32 1, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %102, %46, %45
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @gl_glsl_set_coord_array(%struct.glsl_attrib*, i64, i32, %struct.video_coords*, i64, i32) #1

declare dso_local i32 @gl_glsl_set_attribs(%struct.TYPE_7__*, i32, i32*, i32*, i32*, i64, %struct.glsl_attrib*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
