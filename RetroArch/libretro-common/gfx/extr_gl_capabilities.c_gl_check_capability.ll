; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/extr_gl_capabilities.c_gl_check_capability.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/extr_gl_capabilities.c_gl_check_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VENDOR = common dso_local global i32 0, align 4
@GL_RENDERER = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ARB_sync\00", align 1
@glFenceSync = common dso_local global i32 0, align 4
@glDeleteSync = common dso_local global i32 0, align 4
@glClientWaitSync = common dso_local global i32 0, align 4
@gl_check_capability.extension_queried = internal global i32 0, align 4
@gl_check_capability.extension = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ARB_framebuffer_object\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"ARB_vertex_array_object\00", align 1
@glGenVertexArrays = common dso_local global i32 0, align 4
@glBindVertexArray = common dso_local global i32 0, align 4
@glDeleteVertexArrays = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"EXT_framebuffer_object\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"KHR_debug\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ARB_debug_output\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"OES_packed_depth_stencil\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"EXT_packed_depth_stencil\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ATI\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ARB_ES2_compatibility\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ARB_texture_non_power_of_two\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ARB_fragment_program\00", align 1
@GL_MAX_TEXTURE_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"EXT_texture_sRGB\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"ARB_framebuffer_sRGB\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ARB_texture_float\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ATI Technologies\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"ARB_texture_storage\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"EXT_texture_storage\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB = common dso_local global i32 0, align 4
@glEGLImageTargetTexture2DOES = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_check_capability(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @GL_VENDOR, align 4
  %14 = call i64 @glGetString(i32 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %6, align 8
  %16 = load i32, i32* @GL_RENDERER, align 4
  %17 = call i64 @glGetString(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* @GL_VERSION, align 4
  %20 = call i64 @glGetString(i32 %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5)
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %24, %1
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %214 [
    i32 138, label %33
    i32 143, label %34
    i32 132, label %35
    i32 137, label %49
    i32 128, label %59
    i32 141, label %77
    i32 146, label %100
    i32 144, label %101
    i32 135, label %110
    i32 142, label %123
    i32 129, label %143
    i32 139, label %144
    i32 133, label %166
    i32 134, label %167
    i32 140, label %182
    i32 145, label %194
    i32 131, label %195
    i32 130, label %208
    i32 136, label %213
  ]

33:                                               ; preds = %29
  br label %215

34:                                               ; preds = %29
  br label %215

35:                                               ; preds = %29
  %36 = call i32 @gl_query_extension(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* @glFenceSync, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @glDeleteSync, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @glClientWaitSync, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %216

48:                                               ; preds = %44, %41, %38, %35
  br label %215

49:                                               ; preds = %29
  %50 = load i32, i32* @gl_check_capability.extension_queried, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @gl_query_extension(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %53, i32* @gl_check_capability.extension, align 4
  store i32 1, i32* @gl_check_capability.extension_queried, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* @gl_check_capability.extension, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %216

58:                                               ; preds = %54
  br label %215

59:                                               ; preds = %29
  %60 = call i32 (...) @gl_query_core_context_in_use()
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = call i32 @gl_query_extension(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %216

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @glGenVertexArrays, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @glBindVertexArray, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @glDeleteVertexArrays, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %216

76:                                               ; preds = %72, %69, %66
  br label %215

77:                                               ; preds = %29
  %78 = call i32 (...) @gl_query_core_context_in_use()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = call i32 @gl_query_extension(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = call i32 @gl_query_extension(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %216

87:                                               ; preds = %83, %80, %77
  %88 = call i32 @gl_query_extension(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %2, align 4
  br label %216

91:                                               ; preds = %87
  %92 = call i32 @gl_query_extension(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  br label %216

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = icmp uge i32 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %2, align 4
  br label %216

99:                                               ; preds = %95
  br label %215

100:                                              ; preds = %29
  br label %215

101:                                              ; preds = %29
  %102 = call i32 @gl_query_extension(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %216

105:                                              ; preds = %101
  %106 = call i32 @gl_query_extension(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  br label %216

109:                                              ; preds = %105
  br label %215

110:                                              ; preds = %29
  %111 = load i32, i32* %4, align 4
  %112 = icmp uge i32 %111, 3
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %216

114:                                              ; preds = %110
  %115 = call i32 @gl_query_extension(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 1, i32* %2, align 4
  br label %216

118:                                              ; preds = %114
  %119 = call i32 @gl_query_extension(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* %2, align 4
  br label %216

122:                                              ; preds = %118
  br label %215

123:                                              ; preds = %29
  %124 = load i8*, i8** %6, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i8*, i8** %7, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strstr(i8* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @strstr(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %129
  store i32 0, i32* %2, align 4
  br label %216

138:                                              ; preds = %133, %126, %123
  %139 = call i32 @gl_query_extension(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 1, i32* %2, align 4
  br label %216

142:                                              ; preds = %138
  br label %215

143:                                              ; preds = %29
  br label %215

144:                                              ; preds = %29
  %145 = load i32, i32* %4, align 4
  %146 = icmp uge i32 %145, 3
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 1, i32* %2, align 4
  br label %216

148:                                              ; preds = %144
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %149 = call i32 @gl_query_extension(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  store i32 %149, i32* %11, align 4
  %150 = call i32 @gl_query_extension(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* @GL_MAX_TEXTURE_SIZE, align 4
  %152 = call i32 @glGetIntegerv(i32 %151, i32* %9)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = icmp sge i32 %159, 8192
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = icmp sge i32 %162, 4096
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 1, i32* %2, align 4
  br label %216

165:                                              ; preds = %161, %158, %155, %148
  br label %215

166:                                              ; preds = %29
  br label %215

167:                                              ; preds = %29
  %168 = call i32 @gl_check_capability(i32 141)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = call i32 (...) @gl_query_core_context_in_use()
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = call i32 @gl_query_extension(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = call i32 @gl_query_extension(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176, %170
  store i32 1, i32* %2, align 4
  br label %216

180:                                              ; preds = %176, %173
  br label %181

181:                                              ; preds = %180, %167
  br label %215

182:                                              ; preds = %29
  %183 = call i32 @gl_check_capability(i32 141)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = call i32 (...) @gl_query_core_context_in_use()
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = call i32 @gl_query_extension(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188, %185
  store i32 1, i32* %2, align 4
  br label %216

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192, %182
  br label %215

194:                                              ; preds = %29
  store i32 1, i32* %2, align 4
  br label %216

195:                                              ; preds = %29
  %196 = load i8*, i8** %6, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @strstr(i8* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  br label %216

203:                                              ; preds = %198, %195
  %204 = call i32 @gl_query_extension(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* %2, align 4
  br label %216

207:                                              ; preds = %203
  br label %215

208:                                              ; preds = %29
  %209 = call i32 @gl_query_extension(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 1, i32* %2, align 4
  br label %216

212:                                              ; preds = %208
  br label %215

213:                                              ; preds = %29
  br label %214

214:                                              ; preds = %29, %213
  br label %215

215:                                              ; preds = %214, %212, %207, %193, %181, %166, %165, %143, %142, %122, %109, %100, %99, %76, %58, %48, %34, %33
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %211, %206, %202, %194, %191, %179, %164, %147, %141, %137, %121, %117, %113, %108, %104, %98, %94, %90, %86, %75, %65, %57, %47
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i64 @glGetString(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @gl_query_extension(i8*) #1

declare dso_local i32 @gl_query_core_context_in_use(...) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
