; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_twofish.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_twofish.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVTWOFISH = type { i32 }

@__const.main.Key = private unnamed_addr constant [32 x i32] [i32 1, i32 35, i32 69, i32 103, i32 137, i32 171, i32 205, i32 239, i32 254, i32 220, i32 186, i32 152, i32 118, i32 84, i32 50, i32 16, i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255], align 16
@__const.main.rct = private unnamed_addr constant [6 x [16 x i32]] [[16 x i32] [i32 159, i32 88, i32 159, i32 92, i32 246, i32 18, i32 44, i32 50, i32 182, i32 191, i32 236, i32 47, i32 42, i32 232, i32 195, i32 90], [16 x i32] [i32 207, i32 209, i32 210, i32 229, i32 169, i32 190, i32 156, i32 223, i32 80, i32 31, i32 19, i32 184, i32 146, i32 189, i32 34, i32 72], [16 x i32] [i32 55, i32 82, i32 123, i32 224, i32 5, i32 35, i32 52, i32 184, i32 159, i32 12, i32 252, i32 202, i32 232, i32 124, i32 250, i32 32], [16 x i32] [i32 93, i32 157, i32 78, i32 239, i32 250, i32 145, i32 81, i32 87, i32 85, i32 36, i32 241, i32 21, i32 129, i32 90, i32 18, i32 224], [16 x i32] [i32 231, i32 84, i32 73, i32 33, i32 43, i32 238, i32 249, i32 244, i32 163, i32 144, i32 189, i32 134, i32 10, i32 100, i32 9, i32 65], [16 x i32] [i32 55, i32 254, i32 38, i32 255, i32 28, i32 246, i32 97, i32 117, i32 245, i32 221, i32 244, i32 195, i32 59, i32 151, i32 162, i32 5]], align 16
@__const.main.kbits = private unnamed_addr constant [3 x i32] [i32 128, i32 192, i32 256], align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d %02x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HALLO123HALLO123\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [32 x i32], align 16
  %7 = alloca [6 x [16 x i32]], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca [32 x i32], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.AVTWOFISH*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = bitcast [32 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([32 x i32]* @__const.main.Key to i8*), i64 128, i1 false)
  %17 = bitcast [6 x [16 x i32]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([6 x [16 x i32]]* @__const.main.rct to i8*), i64 384, i1 false)
  %18 = bitcast [32 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 128, i1 false)
  %19 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.main.kbits to i8*), i64 12, i1 false)
  store i32 0, i32* %14, align 4
  %20 = call %struct.AVTWOFISH* (...) @av_twofish_alloc()
  store %struct.AVTWOFISH* %20, %struct.AVTWOFISH** %15, align 8
  %21 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %22 = icmp ne %struct.AVTWOFISH* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %251

24:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  br label %25

25:                                               ; preds = %113, %24
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %116

28:                                               ; preds = %25
  %29 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @av_twofish_init(%struct.AVTWOFISH* %29, i32* %30, i32 %34)
  %36 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %39 = call i32 @av_twofish_crypt(%struct.AVTWOFISH* %36, i32* %37, i32* %38, i32 1, i32* null, i32 0)
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %72, %28
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %75

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %7, i64 0, i64 %45
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %43
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %7, i64 0, i64 %60
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %61, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @av_log(i32* null, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %65, i32 %69)
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %56, %43
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %40

75:                                               ; preds = %40
  %76 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %7, i64 0, i64 %79
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %80, i64 0, i64 0
  %82 = call i32 @av_twofish_crypt(%struct.AVTWOFISH* %76, i32* %77, i32* %81, i32 1, i32* null, i32 1)
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %109, %75
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 16
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %90, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @av_log(i32* null, i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102, i32 %106)
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %96, %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %83

112:                                              ; preds = %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %25

116:                                              ; preds = %25
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %198, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %118, 3
  br i1 %119, label %120, label %201

120:                                              ; preds = %117
  %121 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %122 = call i32 @memset(i32* %121, i32 0, i32 128)
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %124 = call i32 @memset(i32* %123, i32 0, i32 128)
  store i32 1, i32* %12, align 4
  br label %125

125:                                              ; preds = %156, %120
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 50
  br i1 %127, label %128, label %159

128:                                              ; preds = %125
  %129 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %130 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @av_twofish_init(%struct.AVTWOFISH* %129, i32* %130, i32 %134)
  %136 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %137 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %139 = call i32 @av_twofish_crypt(%struct.AVTWOFISH* %136, i32* %137, i32* %138, i32 1, i32* null, i32 0)
  %140 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %141 = getelementptr inbounds i32, i32* %140, i64 16
  %142 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 128
  %148 = ashr i32 %147, 3
  %149 = call i32 (i32*, ...) @memcpy(i32* %141, i32* %142, i32 %148)
  %150 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %151 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %152 = call i32 (i32*, ...) @memcpy(i32* %150, i32* %151, i32 16)
  %153 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %154 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %155 = call i32 (i32*, ...) @memcpy(i32* %153, i32* %154, i32 16)
  br label %156

156:                                              ; preds = %128
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %125

159:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %194, %159
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 16
  br i1 %162, label %163, label %197

163:                                              ; preds = %160
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 3, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %7, i64 0, i64 %166
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %167, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %171, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %163
  %178 = load i32, i32* @AV_LOG_ERROR, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 3, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* %7, i64 0, i64 %182
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [16 x i32], [16 x i32]* %183, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @av_log(i32* null, i32 %178, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %187, i32 %191)
  store i32 1, i32* %14, align 4
  br label %193

193:                                              ; preds = %177, %163
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %160

197:                                              ; preds = %160
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %117

201:                                              ; preds = %117
  %202 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %203 = call i32 @memset(i32* %202, i32 0, i32 128)
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %205 = call i32 (i32*, ...) @memcpy(i32* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %206 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %207 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %208 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %209 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %210 = call i32 @av_twofish_crypt(%struct.AVTWOFISH* %206, i32* %207, i32* %208, i32 2, i32* %209, i32 0)
  %211 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %212 = call i32 (i32*, ...) @memcpy(i32* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %213 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %214 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %215 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %217 = call i32 @av_twofish_crypt(%struct.AVTWOFISH* %213, i32* %214, i32* %215, i32 2, i32* %216, i32 1)
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %244, %201
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 32
  br i1 %220, label %221, label %247

221:                                              ; preds = %218
  %222 = load i32, i32* %12, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %225, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %221
  %232 = load i32, i32* @AV_LOG_ERROR, align 4
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @av_log(i32* null, i32 %232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %233, i32 %237, i32 %241)
  store i32 1, i32* %14, align 4
  br label %243

243:                                              ; preds = %231, %221
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %218

247:                                              ; preds = %218
  %248 = load %struct.AVTWOFISH*, %struct.AVTWOFISH** %15, align 8
  %249 = call i32 @av_free(%struct.AVTWOFISH* %248)
  %250 = load i32, i32* %14, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %247, %23
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.AVTWOFISH* @av_twofish_alloc(...) #2

declare dso_local i32 @av_twofish_init(%struct.AVTWOFISH*, i32*, i32) #2

declare dso_local i32 @av_twofish_crypt(%struct.AVTWOFISH*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @av_free(%struct.AVTWOFISH*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
