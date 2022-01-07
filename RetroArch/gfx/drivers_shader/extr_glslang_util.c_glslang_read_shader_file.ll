; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_glslang_util.c_glslang_read_shader_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_glslang_util.c_glslang_read_shader_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%union.string_list_elem_attr = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to open shader file: \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"#version \00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"First line of the shader must contain a valid #version string.\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"#extension GL_GOOGLE_cpp_style_line_directive : require\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"#line %u \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"#include \00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Invalid include statement \22%s\22.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"#pragma\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glslang_read_shader_file(i8* %0, %struct.string_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.string_list_elem_attr, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.string_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.string_list* %1, %struct.string_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %8, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  store i8* null, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i64 0, i64* %14, align 8
  store %struct.string_list* null, %struct.string_list** %15, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 16
  %28 = bitcast %union.string_list_elem_attr* %10 to i32*
  store i32 0, i32* %28, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load %struct.string_list*, %struct.string_list** %6, align 8
  %34 = icmp ne %struct.string_list* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @path_basename(i8* %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @string_is_empty(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i32** %13 to i8**
  %46 = call i32 @filestream_read_file(i8* %44, i8** %45, i64* %14)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

51:                                               ; preds = %43
  %52 = load i64, i64* %14, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32*, i32** %13, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 @string_remove_all_chars(i8* %56, i8 signext 13)
  %58 = load i32*, i32** %13, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = call %struct.string_list* @string_separate(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %60, %struct.string_list** %15, align 8
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @free(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.string_list*, %struct.string_list** %15, align 8
  %69 = icmp ne %struct.string_list* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

71:                                               ; preds = %67
  %72 = load %struct.string_list*, %struct.string_list** %15, align 8
  %73 = getelementptr inbounds %struct.string_list, %struct.string_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %234

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load %struct.string_list*, %struct.string_list** %15, align 8
  %82 = getelementptr inbounds %struct.string_list, %struct.string_list* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %17, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %234

93:                                               ; preds = %80
  %94 = load %struct.string_list*, %struct.string_list** %6, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @string_list_append(%struct.string_list* %94, i8* %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  br label %234

101:                                              ; preds = %93
  %102 = load %struct.string_list*, %struct.string_list** %6, align 8
  %103 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @string_list_append(%struct.string_list* %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  br label %234

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %77
  %110 = trunc i64 %24 to i32
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 2, i32 1
  %115 = load i8*, i8** %12, align 8
  %116 = call i32 @snprintf(i8* %26, i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %114, i8* %115)
  %117 = load %struct.string_list*, %struct.string_list** %6, align 8
  %118 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @string_list_append(%struct.string_list* %117, i8* %26, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %109
  br label %234

123:                                              ; preds = %109
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %228, %123
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.string_list*, %struct.string_list** %15, align 8
  %132 = getelementptr inbounds %struct.string_list, %struct.string_list* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %130, %134
  br i1 %135, label %136, label %231

136:                                              ; preds = %129
  store i32 0, i32* %18, align 4
  %137 = load %struct.string_list*, %struct.string_list** %15, align 8
  %138 = getelementptr inbounds %struct.string_list, %struct.string_list* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %19, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %146 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %179, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %150 = zext i32 %149 to i64
  %151 = call i8* @llvm.stacksave()
  store i8* %151, i8** %20, align 8
  %152 = alloca i8, i64 %150, align 16
  store i64 %150, i64* %21, align 8
  %153 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %154 = zext i32 %153 to i64
  %155 = alloca i8, i64 %154, align 16
  store i64 %154, i64* %22, align 8
  %156 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 0, i8* %156, align 16
  %157 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 0, i8* %157, align 16
  %158 = load i8*, i8** %19, align 8
  %159 = trunc i64 %150 to i32
  %160 = call i32 @get_include_file(i8* %158, i8* %152, i32 %159)
  %161 = call i64 @string_is_empty(i8* %152)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load i8*, i8** %19, align 8
  %165 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  store i32 2, i32* %16, align 4
  br label %175

166:                                              ; preds = %148
  %167 = load i8*, i8** %5, align 8
  %168 = trunc i64 %154 to i32
  %169 = call i32 @fill_pathname_resolve_relative(i8* %155, i8* %167, i8* %152, i32 %168)
  %170 = load %struct.string_list*, %struct.string_list** %6, align 8
  %171 = call i32 @glslang_read_shader_file(i8* %155, %struct.string_list* %170, i32 0)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %166
  store i32 2, i32* %16, align 4
  br label %175

174:                                              ; preds = %166
  store i32 1, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %175

175:                                              ; preds = %173, %163, %174
  %176 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %16, align 4
  switch i32 %177, label %241 [
    i32 0, label %178
    i32 2, label %234
  ]

178:                                              ; preds = %175
  br label %208

179:                                              ; preds = %136
  %180 = load i8*, i8** %19, align 8
  %181 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %182 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %19, align 8
  %186 = call i32 @STRLEN_CONST(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %187 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %184, %179
  store i32 2, i32* %18, align 4
  %190 = load %struct.string_list*, %struct.string_list** %6, align 8
  %191 = load i8*, i8** %19, align 8
  %192 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @string_list_append(%struct.string_list* %190, i8* %191, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  br label %234

197:                                              ; preds = %189
  br label %207

198:                                              ; preds = %184
  %199 = load %struct.string_list*, %struct.string_list** %6, align 8
  %200 = load i8*, i8** %19, align 8
  %201 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @string_list_append(%struct.string_list* %199, i8* %200, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  br label %234

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %197
  br label %208

208:                                              ; preds = %207, %178
  %209 = load i32, i32* %18, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = trunc i64 %24 to i32
  %213 = load i64, i64* %11, align 8
  %214 = load i32, i32* %18, align 4
  %215 = zext i32 %214 to i64
  %216 = add i64 %213, %215
  %217 = trunc i64 %216 to i32
  %218 = load i8*, i8** %12, align 8
  %219 = call i32 @snprintf(i8* %26, i32 %212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %217, i8* %218)
  %220 = load %struct.string_list*, %struct.string_list** %6, align 8
  %221 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @string_list_append(%struct.string_list* %220, i8* %26, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %211
  br label %234

226:                                              ; preds = %211
  br label %227

227:                                              ; preds = %226, %208
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %11, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %11, align 8
  br label %129

231:                                              ; preds = %129
  %232 = load %struct.string_list*, %struct.string_list** %15, align 8
  %233 = call i32 @string_list_free(%struct.string_list* %232)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

234:                                              ; preds = %175, %225, %205, %196, %122, %107, %100, %91, %76
  %235 = load %struct.string_list*, %struct.string_list** %15, align 8
  %236 = icmp ne %struct.string_list* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.string_list*, %struct.string_list** %15, align 8
  %239 = call i32 @string_list_free(%struct.string_list* %238)
  br label %240

240:                                              ; preds = %237, %234
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %241

241:                                              ; preds = %240, %231, %175, %70, %48, %42, %35
  %242 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i8* @path_basename(i8*) #2

declare dso_local i32 @filestream_read_file(i8*, i8**, i64*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @string_remove_all_chars(i8*, i8 signext) #2

declare dso_local %struct.string_list* @string_separate(i8*, i8*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @STRLEN_CONST(i8*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @get_include_file(i8*, i8*, i32) #2

declare dso_local i32 @fill_pathname_resolve_relative(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
