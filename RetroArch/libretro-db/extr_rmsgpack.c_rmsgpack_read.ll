; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack.c_rmsgpack_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack.c_rmsgpack_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_read_callbacks = type { i32 (i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*)*, i32 (i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i32, i8*)* }

@MPF_FIXMAP = common dso_local global i32 0, align 4
@MPF_FIXARRAY = common dso_local global i32 0, align 4
@MPF_FIXSTR = common dso_local global i32 0, align 4
@MPF_NIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPF_MAP32 = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmsgpack_read(i32* %0, %struct.rmsgpack_read_callbacks* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rmsgpack_read_callbacks*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.rmsgpack_read_callbacks* %1, %struct.rmsgpack_read_callbacks** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 (i32*, ...) @filestream_read(i32* %15, i32* %12, i64 4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %303

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @MPF_FIXMAP, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %25 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %24, i32 0, i32 0
  %26 = load i32 (i32, i8*)*, i32 (i32, i8*)** %25, align 8
  %27 = icmp ne i32 (i32, i8*)* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %306

29:                                               ; preds = %23
  %30 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %31 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %30, i32 0, i32 0
  %32 = load i32 (i32, i8*)*, i32 (i32, i8*)** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 %32(i32 %33, i8* %34)
  store i32 %35, i32* %4, align 4
  br label %306

36:                                               ; preds = %19
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MPF_FIXARRAY, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @MPF_FIXMAP, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @read_map(i32* %44, i32 %45, %struct.rmsgpack_read_callbacks* %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %306

49:                                               ; preds = %36
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @MPF_FIXSTR, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @MPF_FIXARRAY, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @read_array(i32* %57, i32 %58, %struct.rmsgpack_read_callbacks* %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %306

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @MPF_NIL, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %110

66:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @MPF_FIXSTR, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 1
  %74 = call i64 @malloc(i64 %73)
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %306

81:                                               ; preds = %66
  %82 = load i32*, i32** %5, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i32*, ...) @filestream_read(i32* %82, i8* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @free(i8* %88)
  br label %303

90:                                               ; preds = %81
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %96 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %95, i32 0, i32 1
  %97 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %96, align 8
  %98 = icmp ne i32 (i8*, i32, i8*)* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @free(i8* %100)
  store i32 0, i32* %4, align 4
  br label %306

102:                                              ; preds = %90
  %103 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %104 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %103, i32 0, i32 1
  %105 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %104, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 %105(i8* %106, i32 %107, i8* %108)
  store i32 %109, i32* %4, align 4
  br label %306

110:                                              ; preds = %62
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @MPF_MAP32, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %116 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %115, i32 0, i32 0
  %117 = load i32 (i32, i8*)*, i32 (i32, i8*)** %116, align 8
  %118 = icmp ne i32 (i32, i8*)* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %306

120:                                              ; preds = %114
  %121 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %122 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %121, i32 0, i32 0
  %123 = load i32 (i32, i8*)*, i32 (i32, i8*)** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %124, 255
  %126 = sub nsw i32 %125, 1
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 %123(i32 %126, i8* %127)
  store i32 %128, i32* %4, align 4
  br label %306

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  switch i32 %134, label %296 [
    i32 136, label %135
    i32 143, label %147
    i32 132, label %159
    i32 144, label %171
    i32 146, label %171
    i32 145, label %171
    i32 128, label %195
    i32 131, label %195
    i32 130, label %195
    i32 129, label %195
    i32 139, label %220
    i32 142, label %220
    i32 141, label %220
    i32 140, label %220
    i32 133, label %244
    i32 135, label %244
    i32 134, label %244
    i32 148, label %268
    i32 147, label %268
    i32 138, label %282
    i32 137, label %282
  ]

135:                                              ; preds = %133
  %136 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %137 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %136, i32 0, i32 2
  %138 = load i32 (i8*)*, i32 (i8*)** %137, align 8
  %139 = icmp ne i32 (i8*)* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %142 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %141, i32 0, i32 2
  %143 = load i32 (i8*)*, i32 (i8*)** %142, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 %143(i8* %144)
  store i32 %145, i32* %4, align 4
  br label %306

146:                                              ; preds = %135
  br label %296

147:                                              ; preds = %133
  %148 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %149 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %148, i32 0, i32 3
  %150 = load i32 (i32, i8*)*, i32 (i32, i8*)** %149, align 8
  %151 = icmp ne i32 (i32, i8*)* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %154 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %153, i32 0, i32 3
  %155 = load i32 (i32, i8*)*, i32 (i32, i8*)** %154, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 %155(i32 0, i8* %156)
  store i32 %157, i32* %4, align 4
  br label %306

158:                                              ; preds = %147
  br label %296

159:                                              ; preds = %133
  %160 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %161 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %160, i32 0, i32 3
  %162 = load i32 (i32, i8*)*, i32 (i32, i8*)** %161, align 8
  %163 = icmp ne i32 (i32, i8*)* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %166 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %165, i32 0, i32 3
  %167 = load i32 (i32, i8*)*, i32 (i32, i8*)** %166, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 %167(i32 1, i8* %168)
  store i32 %169, i32* %4, align 4
  br label %306

170:                                              ; preds = %159
  br label %296

171:                                              ; preds = %133, %133, %133
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sub nsw i32 %173, 144
  %175 = shl i32 1, %174
  %176 = sext i32 %175 to i64
  %177 = call i32 @read_buff(i32* %172, i64 %176, i8** %13, i32* %9)
  store i32 %177, i32* %8, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %306

181:                                              ; preds = %171
  %182 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %183 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %182, i32 0, i32 4
  %184 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %183, align 8
  %185 = icmp ne i32 (i8*, i32, i8*)* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %188 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %187, i32 0, i32 4
  %189 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %188, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i8*, i8** %7, align 8
  %193 = call i32 %189(i8* %190, i32 %191, i8* %192)
  store i32 %193, i32* %4, align 4
  br label %306

194:                                              ; preds = %181
  br label %296

195:                                              ; preds = %133, %133, %133, %133
  %196 = call i32 @UINT64_C(i32 1)
  %197 = load i32, i32* %12, align 4
  %198 = sub nsw i32 %197, 128
  %199 = shl i32 %196, %198
  store i32 %199, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = trunc i64 %202 to i32
  %204 = call i32 @read_uint(i32* %200, i32* %10, i32 %203)
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  br label %303

207:                                              ; preds = %195
  %208 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %209 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %208, i32 0, i32 5
  %210 = load i32 (i32, i8*)*, i32 (i32, i8*)** %209, align 8
  %211 = icmp ne i32 (i32, i8*)* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %214 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %213, i32 0, i32 5
  %215 = load i32 (i32, i8*)*, i32 (i32, i8*)** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 %215(i32 %216, i8* %217)
  store i32 %218, i32* %4, align 4
  br label %306

219:                                              ; preds = %207
  br label %296

220:                                              ; preds = %133, %133, %133, %133
  %221 = call i32 @UINT64_C(i32 1)
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, 139
  %224 = shl i32 %221, %223
  store i32 %224, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = call i32 @read_int(i32* %225, i32* %11, i64 %227)
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %303

231:                                              ; preds = %220
  %232 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %233 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %232, i32 0, i32 0
  %234 = load i32 (i32, i8*)*, i32 (i32, i8*)** %233, align 8
  %235 = icmp ne i32 (i32, i8*)* %234, null
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %238 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %237, i32 0, i32 0
  %239 = load i32 (i32, i8*)*, i32 (i32, i8*)** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 %239(i32 %240, i8* %241)
  store i32 %242, i32* %4, align 4
  br label %306

243:                                              ; preds = %231
  br label %296

244:                                              ; preds = %133, %133, %133
  %245 = load i32*, i32** %5, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sub nsw i32 %246, 133
  %248 = shl i32 1, %247
  %249 = sext i32 %248 to i64
  %250 = call i32 @read_buff(i32* %245, i64 %249, i8** %13, i32* %9)
  store i32 %250, i32* %8, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %244
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %4, align 4
  br label %306

254:                                              ; preds = %244
  %255 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %256 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %255, i32 0, i32 1
  %257 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %256, align 8
  %258 = icmp ne i32 (i8*, i32, i8*)* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %261 = getelementptr inbounds %struct.rmsgpack_read_callbacks, %struct.rmsgpack_read_callbacks* %260, i32 0, i32 1
  %262 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %261, align 8
  %263 = load i8*, i8** %13, align 8
  %264 = load i32, i32* %9, align 4
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 %262(i8* %263, i32 %264, i8* %265)
  store i32 %266, i32* %4, align 4
  br label %306

267:                                              ; preds = %254
  br label %296

268:                                              ; preds = %133, %133
  %269 = load i32*, i32** %5, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sub nsw i32 %270, 148
  %272 = shl i32 2, %271
  %273 = call i32 @read_uint(i32* %269, i32* %9, i32 %272)
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %276

275:                                              ; preds = %268
  br label %303

276:                                              ; preds = %268
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %280 = load i8*, i8** %7, align 8
  %281 = call i32 @read_array(i32* %277, i32 %278, %struct.rmsgpack_read_callbacks* %279, i8* %280)
  store i32 %281, i32* %4, align 4
  br label %306

282:                                              ; preds = %133, %133
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sub nsw i32 %284, 138
  %286 = shl i32 2, %285
  %287 = call i32 @read_uint(i32* %283, i32* %9, i32 %286)
  %288 = icmp eq i32 %287, -1
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %303

290:                                              ; preds = %282
  %291 = load i32*, i32** %5, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load %struct.rmsgpack_read_callbacks*, %struct.rmsgpack_read_callbacks** %6, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = call i32 @read_map(i32* %291, i32 %292, %struct.rmsgpack_read_callbacks* %293, i8* %294)
  store i32 %295, i32* %4, align 4
  br label %306

296:                                              ; preds = %133, %267, %243, %219, %194, %170, %158, %146
  %297 = load i8*, i8** %13, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i8*, i8** %13, align 8
  %301 = call i32 @free(i8* %300)
  br label %302

302:                                              ; preds = %299, %296
  store i32 0, i32* %4, align 4
  br label %306

303:                                              ; preds = %289, %275, %230, %206, %87, %18
  %304 = load i32, i32* @errno, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %306

306:                                              ; preds = %303, %302, %290, %276, %259, %252, %236, %212, %186, %179, %164, %152, %140, %120, %119, %102, %99, %78, %53, %40, %29, %28
  %307 = load i32, i32* %4, align 4
  ret i32 %307
}

declare dso_local i32 @filestream_read(i32*, ...) #1

declare dso_local i32 @read_map(i32*, i32, %struct.rmsgpack_read_callbacks*, i8*) #1

declare dso_local i32 @read_array(i32*, i32, %struct.rmsgpack_read_callbacks*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_buff(i32*, i64, i8**, i32*) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @read_uint(i32*, i32*, i32) #1

declare dso_local i32 @read_int(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
