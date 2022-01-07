; ModuleID = '/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadCore_Version_3_3.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadCore_Version_3_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"glBindFragDataLocationIndexed\00", align 1
@_funcptr_glBindFragDataLocationIndexed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"glBindSampler\00", align 1
@_funcptr_glBindSampler = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"glDeleteSamplers\00", align 1
@_funcptr_glDeleteSamplers = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"glGenSamplers\00", align 1
@_funcptr_glGenSamplers = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"glGetFragDataIndex\00", align 1
@_funcptr_glGetFragDataIndex = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"glGetQueryObjecti64v\00", align 1
@_funcptr_glGetQueryObjecti64v = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"glGetQueryObjectui64v\00", align 1
@_funcptr_glGetQueryObjectui64v = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"glGetSamplerParameterIiv\00", align 1
@_funcptr_glGetSamplerParameterIiv = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"glGetSamplerParameterIuiv\00", align 1
@_funcptr_glGetSamplerParameterIuiv = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"glGetSamplerParameterfv\00", align 1
@_funcptr_glGetSamplerParameterfv = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"glGetSamplerParameteriv\00", align 1
@_funcptr_glGetSamplerParameteriv = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"glIsSampler\00", align 1
@_funcptr_glIsSampler = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"glQueryCounter\00", align 1
@_funcptr_glQueryCounter = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"glSamplerParameterIiv\00", align 1
@_funcptr_glSamplerParameterIiv = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"glSamplerParameterIuiv\00", align 1
@_funcptr_glSamplerParameterIuiv = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"glSamplerParameterf\00", align 1
@_funcptr_glSamplerParameterf = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"glSamplerParameterfv\00", align 1
@_funcptr_glSamplerParameterfv = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"glSamplerParameteri\00", align 1
@_funcptr_glSamplerParameteri = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"glSamplerParameteriv\00", align 1
@_funcptr_glSamplerParameteriv = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"glVertexAttribDivisor\00", align 1
@_funcptr_glVertexAttribDivisor = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [19 x i8] c"glVertexAttribP1ui\00", align 1
@_funcptr_glVertexAttribP1ui = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [20 x i8] c"glVertexAttribP1uiv\00", align 1
@_funcptr_glVertexAttribP1uiv = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"glVertexAttribP2ui\00", align 1
@_funcptr_glVertexAttribP2ui = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [20 x i8] c"glVertexAttribP2uiv\00", align 1
@_funcptr_glVertexAttribP2uiv = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [19 x i8] c"glVertexAttribP3ui\00", align 1
@_funcptr_glVertexAttribP3ui = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"glVertexAttribP3uiv\00", align 1
@_funcptr_glVertexAttribP3uiv = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"glVertexAttribP4ui\00", align 1
@_funcptr_glVertexAttribP4ui = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [20 x i8] c"glVertexAttribP4uiv\00", align 1
@_funcptr_glVertexAttribP4uiv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadCore_Version_3_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadCore_Version_3_3() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @_funcptr_glBindFragDataLocationIndexed, align 8
  %3 = load i64, i64* @_funcptr_glBindFragDataLocationIndexed, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 %9, i64* @_funcptr_glBindSampler, align 8
  %10 = load i64, i64* @_funcptr_glBindSampler, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 %16, i64* @_funcptr_glDeleteSamplers, align 8
  %17 = load i64, i64* @_funcptr_glDeleteSamplers, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 %23, i64* @_funcptr_glGenSamplers, align 8
  %24 = load i64, i64* @_funcptr_glGenSamplers, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i64 %30, i64* @_funcptr_glGetFragDataIndex, align 8
  %31 = load i64, i64* @_funcptr_glGetFragDataIndex, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i64 %37, i64* @_funcptr_glGetQueryObjecti64v, align 8
  %38 = load i64, i64* @_funcptr_glGetQueryObjecti64v, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i64 %44, i64* @_funcptr_glGetQueryObjectui64v, align 8
  %45 = load i64, i64* @_funcptr_glGetQueryObjectui64v, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i64 %51, i64* @_funcptr_glGetSamplerParameterIiv, align 8
  %52 = load i64, i64* @_funcptr_glGetSamplerParameterIiv, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  store i64 %58, i64* @_funcptr_glGetSamplerParameterIuiv, align 8
  %59 = load i64, i64* @_funcptr_glGetSamplerParameterIuiv, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i64 %65, i64* @_funcptr_glGetSamplerParameterfv, align 8
  %66 = load i64, i64* @_funcptr_glGetSamplerParameterfv, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  store i64 %72, i64* @_funcptr_glGetSamplerParameteriv, align 8
  %73 = load i64, i64* @_funcptr_glGetSamplerParameteriv, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %1, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i64 %79, i64* @_funcptr_glIsSampler, align 8
  %80 = load i64, i64* @_funcptr_glIsSampler, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i64 %86, i64* @_funcptr_glQueryCounter, align 8
  %87 = load i64, i64* @_funcptr_glQueryCounter, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %1, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %1, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  store i64 %93, i64* @_funcptr_glSamplerParameterIiv, align 8
  %94 = load i64, i64* @_funcptr_glSamplerParameterIiv, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  store i64 %100, i64* @_funcptr_glSamplerParameterIuiv, align 8
  %101 = load i64, i64* @_funcptr_glSamplerParameterIuiv, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i64 %107, i64* @_funcptr_glSamplerParameterf, align 8
  %108 = load i64, i64* @_funcptr_glSamplerParameterf, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %1, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i64 %114, i64* @_funcptr_glSamplerParameterfv, align 8
  %115 = load i64, i64* @_funcptr_glSamplerParameterfv, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store i64 %121, i64* @_funcptr_glSamplerParameteri, align 8
  %122 = load i64, i64* @_funcptr_glSamplerParameteri, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %127

127:                                              ; preds = %124, %120
  %128 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  store i64 %128, i64* @_funcptr_glSamplerParameteriv, align 8
  %129 = load i64, i64* @_funcptr_glSamplerParameteriv, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %1, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %1, align 4
  br label %134

134:                                              ; preds = %131, %127
  %135 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  store i64 %135, i64* @_funcptr_glVertexAttribDivisor, align 8
  %136 = load i64, i64* @_funcptr_glVertexAttribDivisor, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %1, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %1, align 4
  br label %141

141:                                              ; preds = %138, %134
  %142 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  store i64 %142, i64* @_funcptr_glVertexAttribP1ui, align 8
  %143 = load i64, i64* @_funcptr_glVertexAttribP1ui, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %1, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %1, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  store i64 %149, i64* @_funcptr_glVertexAttribP1uiv, align 8
  %150 = load i64, i64* @_funcptr_glVertexAttribP1uiv, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %1, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %1, align 4
  br label %155

155:                                              ; preds = %152, %148
  %156 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  store i64 %156, i64* @_funcptr_glVertexAttribP2ui, align 8
  %157 = load i64, i64* @_funcptr_glVertexAttribP2ui, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %162

162:                                              ; preds = %159, %155
  %163 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  store i64 %163, i64* @_funcptr_glVertexAttribP2uiv, align 8
  %164 = load i64, i64* @_funcptr_glVertexAttribP2uiv, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %169

169:                                              ; preds = %166, %162
  %170 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  store i64 %170, i64* @_funcptr_glVertexAttribP3ui, align 8
  %171 = load i64, i64* @_funcptr_glVertexAttribP3ui, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %1, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %1, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0))
  store i64 %177, i64* @_funcptr_glVertexAttribP3uiv, align 8
  %178 = load i64, i64* @_funcptr_glVertexAttribP3uiv, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %1, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %1, align 4
  br label %183

183:                                              ; preds = %180, %176
  %184 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  store i64 %184, i64* @_funcptr_glVertexAttribP4ui, align 8
  %185 = load i64, i64* @_funcptr_glVertexAttribP4ui, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %1, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %1, align 4
  br label %190

190:                                              ; preds = %187, %183
  %191 = call i64 @IntGetProcAddress(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  store i64 %191, i64* @_funcptr_glVertexAttribP4uiv, align 8
  %192 = load i64, i64* @_funcptr_glVertexAttribP4uiv, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %1, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %1, align 4
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* %1, align 4
  ret i32 %198
}

declare dso_local i64 @IntGetProcAddress(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
