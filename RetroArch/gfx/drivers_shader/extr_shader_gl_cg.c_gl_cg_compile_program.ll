; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_compile_program.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_compile_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_program_info = type { i32, i64 }
%struct.shader_program_cg = type { i8*, i8* }
%struct.TYPE_2__ = type { i8**, i32, i32, i32, %struct.shader_program_cg* }

@GFX_MAX_SHADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"-DPARAMETER_UNIFORM\00", align 1
@CG_SOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"main_fragment\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"main_vertex\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CG error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Fragment:\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Vertex:\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, %struct.shader_program_info*)* @gl_cg_compile_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_cg_compile_program(i8* %0, i32 %1, i8* %2, %struct.shader_program_info* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.shader_program_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.shader_program_cg*, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.shader_program_info* %3, %struct.shader_program_info** %8, align 8
  %19 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %20 = add nsw i32 2, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8*, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i32 1, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.shader_program_cg*
  store %struct.shader_program_cg* %25, %struct.shader_program_cg** %17, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %18, align 8
  %28 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %29 = icmp ne %struct.shader_program_cg* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  %33 = load %struct.shader_program_cg*, %struct.shader_program_cg** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %33, i64 %35
  store %struct.shader_program_cg* %36, %struct.shader_program_cg** %17, align 8
  br label %37

37:                                               ; preds = %30, %4
  %38 = load i32, i32* %16, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %16, align 4
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %23, i64 %40
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %69, %37
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %46
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %16, align 4
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i8*, i8** %23, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %56, %46
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %42

72:                                               ; preds = %42
  %73 = load i32, i32* %16, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %23, i64 %74
  store i8* null, i8** %75, align 8
  %76 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %77 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CG_SOURCE, align 4
  %85 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %86 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @cgCreateProgramFromFile(i32 %83, i32 %84, i32 %87, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %23)
  %92 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %93 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %108

94:                                               ; preds = %72
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CG_SOURCE, align 4
  %99 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %100 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @cgCreateProgram(i32 %97, i32 %98, i32 %101, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %23)
  %106 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %107 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %94, %80
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cgGetLastListing(i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i8*, i8** %11, align 8
  %117 = call i8* @strdup(i8* %116)
  store i8* %117, i8** %13, align 8
  br label %118

118:                                              ; preds = %115, %108
  store i8* null, i8** %11, align 8
  %119 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %120 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @CG_SOURCE, align 4
  %128 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %129 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @cgCreateProgramFromFile(i32 %126, i32 %127, i32 %130, i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %23)
  %135 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %136 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %151

137:                                              ; preds = %118
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CG_SOURCE, align 4
  %142 = load %struct.shader_program_info*, %struct.shader_program_info** %8, align 8
  %143 = getelementptr inbounds %struct.shader_program_info, %struct.shader_program_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cgCreateProgram(i32 %140, i32 %141, i32 %144, i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %23)
  %149 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %150 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %137, %123
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @cgGetLastListing(i32 %154)
  store i8* %155, i8** %11, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i8*, i8** %11, align 8
  %160 = call i8* @strdup(i8* %159)
  store i8* %160, i8** %14, align 8
  br label %161

161:                                              ; preds = %158, %151
  %162 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %163 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %168 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %188, label %171

171:                                              ; preds = %166, %161
  %172 = call i32 (...) @cgGetError()
  %173 = call i8* @cgGetErrorString(i32 %172)
  %174 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %173)
  %175 = load i8*, i8** %13, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %178)
  br label %187

180:                                              ; preds = %171
  %181 = load i8*, i8** %14, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %14, align 8
  %185 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %177
  store i32 0, i32* %12, align 4
  br label %197

188:                                              ; preds = %166
  %189 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %190 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @cgGLLoadProgram(i8* %191)
  %193 = load %struct.shader_program_cg*, %struct.shader_program_cg** %17, align 8
  %194 = getelementptr inbounds %struct.shader_program_cg, %struct.shader_program_cg* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @cgGLLoadProgram(i8* %195)
  br label %197

197:                                              ; preds = %188, %187
  %198 = load i8*, i8** %13, align 8
  %199 = call i32 @free(i8* %198)
  %200 = load i8*, i8** %14, align 8
  %201 = call i32 @free(i8* %200)
  %202 = load i32, i32* %12, align 4
  %203 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %203)
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @cgCreateProgramFromFile(i32, i32, i32, i32, i8*, i8**) #2

declare dso_local i8* @cgCreateProgram(i32, i32, i32, i32, i8*, i8**) #2

declare dso_local i8* @cgGetLastListing(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, i8*) #2

declare dso_local i8* @cgGetErrorString(i32) #2

declare dso_local i32 @cgGetError(...) #2

declare dso_local i32 @cgGLLoadProgram(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
