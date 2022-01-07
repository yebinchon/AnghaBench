; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init_block.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@fft_vertex_program_heightmap = common dso_local global i32 0, align 4
@fft_fragment_program_heightmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sHeight\00", align 1
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STATIC_DRAW = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @fft_init_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_init_block(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = load i32, i32* @fft_vertex_program_heightmap, align 4
  %16 = load i32, i32* @fft_fragment_program_heightmap, align 4
  %17 = call i32 @fft_compile_program(%struct.TYPE_6__* %14, i32 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @glUseProgram(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @glGetUniformLocation(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @glUniform1i(i32 %30, i32 0)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 2, %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @calloc(i32 %40, i32 4)
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %9, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %87, %1
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %83, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %86

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %59, %62
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %63, %64
  %66 = mul i32 2, %65
  %67 = add i32 %66, 0
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %58, i64 %68
  store i32 %57, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul i32 %72, %75
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %76, %77
  %79 = mul i32 2, %78
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %71, i64 %81
  store i32 %70, i32* %82, align 4
  br label %83

83:                                               ; preds = %56
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %50

86:                                               ; preds = %50
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %43

90:                                               ; preds = %43
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = call i32 @glGenBuffers(i32 1, i32* %93)
  %95 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @glBindBuffer(i32 %95, i32 %99)
  %101 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* @GL_STATIC_DRAW, align 4
  %109 = call i32 @glBufferData(i32 %101, i32 %105, i32* %107, i32 %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 2, %112
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, 1
  %119 = mul nsw i32 %114, %118
  %120 = add nsw i32 %119, 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @calloc(i32 %128, i32 4)
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %10, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32* %132, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %181, %90
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %137, 1
  %139 = icmp ult i32 %134, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %133
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 0, %143
  %145 = load i32, i32* %4, align 4
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 -1, i32 1
  %150 = add nsw i32 %144, %149
  store i32 %150, i32* %12, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %154

154:                                              ; preds = %177, %140
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 2, %158
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %155, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %154
  %163 = load i32, i32* %7, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, i32* %12, align 4
  br label %173

171:                                              ; preds = %162
  %172 = load i32, i32* %13, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %154

180:                                              ; preds = %154
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %4, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %4, align 4
  br label %133

184:                                              ; preds = %133
  %185 = load i32, i32* %7, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = call i32 @glGenVertexArrays(i32 1, i32* %190)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @glBindVertexArray(i32 %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = call i32 @glGenBuffers(i32 1, i32* %199)
  %201 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @glBindBuffer(i32 %201, i32 %205)
  %207 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %208 = load i32, i32* %6, align 4
  %209 = zext i32 %208 to i64
  %210 = mul i64 %209, 4
  %211 = trunc i64 %210 to i32
  %212 = load i32*, i32** %10, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* @GL_STATIC_DRAW, align 4
  %215 = call i32 @glBufferData(i32 %207, i32 %211, i32* %213, i32 %214)
  %216 = call i32 @glEnableVertexAttribArray(i32 0)
  %217 = load i32, i32* @GL_UNSIGNED_SHORT, align 4
  %218 = load i32, i32* @GL_FALSE, align 4
  %219 = call i32 @glVertexAttribPointer(i32 0, i32 2, i32 %217, i32 %218, i32 0, i32 0)
  %220 = call i32 @glBindVertexArray(i32 0)
  %221 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %222 = call i32 @glBindBuffer(i32 %221, i32 0)
  %223 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  %224 = call i32 @glBindBuffer(i32 %223, i32 0)
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @free(i32* %225)
  %227 = load i32*, i32** %10, align 8
  %228 = call i32 @free(i32* %227)
  ret void
}

declare dso_local i32 @fft_compile_program(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @glUseProgram(i32) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @glGetUniformLocation(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32*, i32) #1

declare dso_local i32 @glGenVertexArrays(i32, i32*) #1

declare dso_local i32 @glBindVertexArray(i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
