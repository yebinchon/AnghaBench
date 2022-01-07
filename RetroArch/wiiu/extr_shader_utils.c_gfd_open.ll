; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/extr_shader_utils.c_gfd_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/extr_shader_utils.c_gfd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@GX2_SHADER_ALIGNMENT = common dso_local global i32 0, align 4
@GFD_FILE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"wrong file magic number.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"wrong file header size.\0A\00", align 1
@GFD_FILE_MAJOR_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"file version not supported.\0A\00", align 1
@GFD_FILE_GPU_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"gpu version not supported.\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"data is not aligned.\0A\00", align 1
@GFD_BLOCK_TYPE_END_OF_FILE = common dso_local global i32 0, align 4
@GFD_BLOCK_MAGIC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"wrong block magic number.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"wrong block header size.\0A\00", align 1
@GFD_BLOCK_MAJOR_VERSION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"block version not supported.\0A\00", align 1
@GX2_INVALIDATE_MODE_CPU_SHADER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"vertex shader is missing.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"vertex shader program is missing.\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"pixel shader is missing.\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"pixel shader program is missing.\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"failed to open file : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @gfd_open(i8* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = call %struct.TYPE_15__* @calloc(i32 1, i32 24)
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %265

15:                                               ; preds = %1
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ftell(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @fseek(i32* %21, i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GX2_SHADER_ALIGNMENT, align 4
  %26 = call i64 @MEM2_alloc(i32 %24, i32 %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fread(i64 %31, i32 1, i32 %32, i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %7, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GFD_FILE_MAGIC, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %15
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %265

48:                                               ; preds = %15
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 40
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %265

56:                                               ; preds = %48
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GFD_FILE_MAJOR_VERSION, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %265

64:                                               ; preds = %56
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @GFD_FILE_GPU_VERSION, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %265

72:                                               ; preds = %64
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %265

79:                                               ; preds = %72
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = inttoptr i64 %87 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %8, align 8
  br label %89

89:                                               ; preds = %215, %196, %176, %153, %133, %79
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GFD_BLOCK_TYPE_END_OF_FILE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %231

96:                                               ; preds = %89
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @GFD_BLOCK_MAGIC, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %265

105:                                              ; preds = %96
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %265

114:                                              ; preds = %105
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @GFD_BLOCK_MAJOR_VERSION, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %265

123:                                              ; preds = %114
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %214 [
    i32 129, label %128
    i32 128, label %146
    i32 131, label %171
    i32 130, label %189
  ]

128:                                              ; preds = %123
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = icmp ne %struct.TYPE_12__* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %89

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to %struct.TYPE_12__*
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = call i32 @gfd_relocate_block(%struct.TYPE_16__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %265

145:                                              ; preds = %134
  br label %215

146:                                              ; preds = %123
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %89

154:                                              ; preds = %146
  %155 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_SHADER, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @GX2Invalidate(i32 %155, i64 %158, i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i64 %166, i64* %170, align 8
  br label %215

171:                                              ; preds = %123
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = icmp ne %struct.TYPE_13__* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %89

177:                                              ; preds = %171
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to %struct.TYPE_13__*
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store %struct.TYPE_13__* %181, %struct.TYPE_13__** %183, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = call i32 @gfd_relocate_block(%struct.TYPE_16__* %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %177
  br label %265

188:                                              ; preds = %177
  br label %215

189:                                              ; preds = %123
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %89

197:                                              ; preds = %189
  %198 = load i32, i32* @GX2_INVALIDATE_MODE_CPU_SHADER, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @GX2Invalidate(i32 %198, i64 %201, i32 %205)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  store i64 %209, i64* %213, align 8
  br label %215

214:                                              ; preds = %123
  br label %215

215:                                              ; preds = %214, %197, %188, %154, %145
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = bitcast %struct.TYPE_16__* %216 to i32*
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %217, i64 %222
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %223, i64 %228
  %230 = bitcast i32* %229 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %230, %struct.TYPE_16__** %8, align 8
  br label %89

231:                                              ; preds = %89
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = icmp ne %struct.TYPE_12__* %234, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %265

238:                                              ; preds = %231
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %238
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %265

247:                                              ; preds = %238
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %249, align 8
  %251 = icmp ne %struct.TYPE_13__* %250, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %265

254:                                              ; preds = %247
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %254
  %262 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %265

263:                                              ; preds = %254
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %264, %struct.TYPE_15__** %2, align 8
  br label %270

265:                                              ; preds = %261, %252, %245, %236, %187, %144, %121, %112, %103, %77, %70, %62, %54, %46, %14
  %266 = load i8*, i8** %3, align 8
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* %266)
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %269 = call i32 @gfd_free(%struct.TYPE_15__* %268)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %270

270:                                              ; preds = %265, %263
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %271
}

declare dso_local %struct.TYPE_15__* @calloc(i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @MEM2_alloc(i32, i32) #1

declare dso_local i32 @fread(i64, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gfd_relocate_block(%struct.TYPE_16__*) #1

declare dso_local i32 @GX2Invalidate(i32, i64, i32) #1

declare dso_local i32 @gfd_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
