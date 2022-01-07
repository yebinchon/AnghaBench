; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_recompute_pass_sizes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_renderchain_recompute_pass_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.video_fbo_rect* }
%struct.video_fbo_rect = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.gfx_fbo_scale*, i64 }
%struct.gfx_fbo_scale = type { i32, i32, i32, i32, i32, i32 }

@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"FBO textures exceeded maximum size of GPU (%dx%d). Resizing to fit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32, i32, i32)* @gl2_renderchain_recompute_pass_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl2_renderchain_recompute_pass_sizes(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.video_fbo_rect*, align 8
  %21 = alloca %struct.gfx_fbo_scale*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %31 = call i32 @glGetIntegerv(i32 %30, i8** %15)
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %230, %6
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %233

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %42, i64 %44
  store %struct.video_fbo_rect* %45, %struct.video_fbo_rect** %20, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %48, i64 %50
  store %struct.gfx_fbo_scale* %51, %struct.gfx_fbo_scale** %21, align 8
  %52 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %53 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %105 [
    i32 129, label %55
    i32 130, label %70
    i32 128, label %78
  ]

55:                                               ; preds = %39
  %56 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %57 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = mul i32 %58, %59
  %61 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %62 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %65 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul i32 %63, %66
  %68 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %69 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %105

70:                                               ; preds = %39
  %71 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %72 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %75 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %77 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  br label %105

78:                                               ; preds = %39
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = srem i32 %81, 180
  %83 = icmp eq i32 %82, 90
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %86 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = mul i32 %87, %88
  %90 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %91 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %93 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  br label %104

94:                                               ; preds = %78
  %95 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %96 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = mul i32 %97, %98
  %100 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %101 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %103 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %84
  br label %105

105:                                              ; preds = %39, %104, %70, %55
  %106 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %107 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %162 [
    i32 129, label %109
    i32 130, label %124
    i32 128, label %135
  ]

109:                                              ; preds = %105
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %112 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = mul i32 %110, %113
  %115 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %116 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %119 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = mul i32 %117, %120
  %122 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %123 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  br label %162

124:                                              ; preds = %105
  %125 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %126 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %129 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %131 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %134 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %162

135:                                              ; preds = %105
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = srem i32 %138, 180
  %140 = icmp eq i32 %139, 90
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %143 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %11, align 4
  %146 = mul i32 %144, %145
  %147 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %148 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %150 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %149, i32 0, i32 2
  store i32 %146, i32* %150, align 4
  br label %161

151:                                              ; preds = %135
  %152 = load %struct.gfx_fbo_scale*, %struct.gfx_fbo_scale** %21, align 8
  %153 = getelementptr inbounds %struct.gfx_fbo_scale, %struct.gfx_fbo_scale* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %12, align 4
  %156 = mul i32 %154, %155
  %157 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %158 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %160 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %151, %141
  br label %162

162:                                              ; preds = %105, %161, %124, %109
  %163 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %164 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %15, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = icmp ugt i32 %165, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  store i32 1, i32* %14, align 4
  %170 = load i8*, i8** %15, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %173 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %176 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %15, align 8
  %179 = ptrtoint i8* %178 to i32
  %180 = icmp ugt i32 %177, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  store i32 1, i32* %14, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %185 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %181, %174
  %187 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %188 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i8*, i8** %15, align 8
  %191 = ptrtoint i8* %190 to i32
  %192 = icmp ugt i32 %189, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  store i32 1, i32* %14, align 4
  %194 = load i8*, i8** %15, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %197 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %186
  %199 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %200 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i8*, i8** %15, align 8
  %203 = ptrtoint i8* %202 to i32
  %204 = icmp ugt i32 %201, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  store i32 1, i32* %14, align 4
  %206 = load i8*, i8** %15, align 8
  %207 = ptrtoint i8* %206 to i32
  %208 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %209 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %205, %198
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i8*, i8** %15, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %214, i8* %215)
  br label %217

217:                                              ; preds = %213, %210
  %218 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %219 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %16, align 4
  %221 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %222 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %17, align 4
  %224 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %225 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %18, align 4
  %227 = load %struct.video_fbo_rect*, %struct.video_fbo_rect** %20, align 8
  %228 = getelementptr inbounds %struct.video_fbo_rect, %struct.video_fbo_rect* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %217
  %231 = load i32, i32* %13, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %13, align 4
  br label %32

233:                                              ; preds = %32
  ret void
}

declare dso_local i32 @glGetIntegerv(i32, i8**) #1

declare dso_local i32 @RARCH_WARN(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
