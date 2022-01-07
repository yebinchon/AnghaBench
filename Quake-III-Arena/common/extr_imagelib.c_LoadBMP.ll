; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadBMP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_imagelib.c_LoadBMP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Couldn't read %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s is not a bmp file\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s had strange struct size\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s was not a single plane image\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s was not an 8 bit image\00", align 1
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadBMP(i8* %0, i32** %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i32], align 16
  %22 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @Error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %5
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @fgetLittleShort(i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 19778
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @fgetLittleLong(i32* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @fgetLittleShort(i32* %41)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @fgetLittleShort(i32* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @fgetLittleLong(i32* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @fgetLittleLong(i32* %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp eq i32 %49, 40
  br i1 %50, label %51, label %119

51:                                               ; preds = %38
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @fgetLittleLong(i32* %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @fgetLittleLong(i32* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @fgetLittleShort(i32* %56)
  store i32 %57, i32* %19, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @fgetLittleShort(i32* %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @SEEK_CUR, align 4
  %62 = call i32 @fseek(i32* %60, i32 24, i32 %61)
  %63 = load i32**, i32*** %8, align 8
  %64 = icmp ne i32** %63, null
  br i1 %64, label %65, label %118

65:                                               ; preds = %51
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 0
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @fread(i32* %66, i32 1, i32 1024, i32* %67)
  %69 = call i32* @malloc(i32 768)
  %70 = load i32**, i32*** %8, align 8
  store i32* %69, i32** %70, align 8
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %114, %65
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %117

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32**, i32*** %8, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %83, 3
  %85 = add nsw i32 %84, 0
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  store i32 %80, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32**, i32*** %8, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %96, 3
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  store i32 %93, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %101, 4
  %103 = add nsw i32 %102, 0
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32**, i32*** %8, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = mul nsw i32 %109, 3
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %74
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %71

117:                                              ; preds = %71
  br label %118

118:                                              ; preds = %117, %51
  br label %191

119:                                              ; preds = %38
  %120 = load i32, i32* %16, align 4
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %187

122:                                              ; preds = %119
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @fgetLittleShort(i32* %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @fgetLittleShort(i32* %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @fgetLittleShort(i32* %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 @fgetLittleShort(i32* %129)
  store i32 %130, i32* %20, align 4
  %131 = load i32**, i32*** %8, align 8
  %132 = icmp ne i32** %131, null
  br i1 %132, label %133, label %186

133:                                              ; preds = %122
  %134 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 0
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @fread(i32* %134, i32 1, i32 768, i32* %135)
  %137 = call i32* @malloc(i32 768)
  %138 = load i32**, i32*** %8, align 8
  store i32* %137, i32** %138, align 8
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %182, %133
  %140 = load i32, i32* %13, align 4
  %141 = icmp slt i32 %140, 256
  br i1 %141, label %142, label %185

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %143, 3
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32**, i32*** %8, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %151, 3
  %153 = add nsw i32 %152, 0
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = mul nsw i32 %156, 3
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32**, i32*** %8, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = mul nsw i32 %164, 3
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  store i32 %161, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = mul nsw i32 %169, 3
  %171 = add nsw i32 %170, 0
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1024 x i32], [1024 x i32]* %21, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32**, i32*** %8, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %13, align 4
  %178 = mul nsw i32 %177, 3
  %179 = add nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  store i32 %174, i32* %181, align 4
  br label %182

182:                                              ; preds = %142
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %139

185:                                              ; preds = %139
  br label %186

186:                                              ; preds = %185, %122
  br label %190

187:                                              ; preds = %119
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %187, %186
  br label %191

191:                                              ; preds = %190, %118
  %192 = load i32, i32* %19, align 4
  %193 = icmp ne i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @Error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i32, i32* %20, align 4
  %199 = icmp ne i32 %198, 8
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %18, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i32, i32* %18, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %18, align 4
  %209 = load i64, i64* @qtrue, align 8
  store i64 %209, i64* %22, align 8
  br label %212

210:                                              ; preds = %203
  %211 = load i64, i64* @qfalse, align 8
  store i64 %211, i64* %22, align 8
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32*, i32** %9, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %17, align 4
  %217 = load i32*, i32** %9, align 8
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i32*, i32** %10, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* %18, align 4
  %223 = load i32*, i32** %10, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32**, i32*** %7, align 8
  %226 = icmp ne i32** %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32*, i32** %12, align 8
  %229 = call i32 @fclose(i32* %228)
  br label %275

230:                                              ; preds = %224
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %18, align 4
  %233 = mul nsw i32 %231, %232
  %234 = call i32* @malloc(i32 %233)
  store i32* %234, i32** %11, align 8
  %235 = load i32*, i32** %11, align 8
  %236 = load i32**, i32*** %7, align 8
  store i32* %235, i32** %236, align 8
  %237 = load i32*, i32** %12, align 8
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @SEEK_SET, align 4
  %240 = call i32 @fseek(i32* %237, i32 %238, i32 %239)
  %241 = load i64, i64* %22, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %265

243:                                              ; preds = %230
  store i32 0, i32* %13, align 4
  br label %244

244:                                              ; preds = %261, %243
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %18, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %264

248:                                              ; preds = %244
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* %18, align 4
  %252 = sub nsw i32 %251, 1
  %253 = load i32, i32* %13, align 4
  %254 = sub nsw i32 %252, %253
  %255 = mul nsw i32 %250, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %249, i64 %256
  %258 = load i32, i32* %17, align 4
  %259 = load i32*, i32** %12, align 8
  %260 = call i32 @fread(i32* %257, i32 1, i32 %258, i32* %259)
  br label %261

261:                                              ; preds = %248
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %244

264:                                              ; preds = %244
  br label %272

265:                                              ; preds = %230
  %266 = load i32*, i32** %11, align 8
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %18, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load i32*, i32** %12, align 8
  %271 = call i32 @fread(i32* %266, i32 1, i32 %269, i32* %270)
  br label %272

272:                                              ; preds = %265, %264
  %273 = load i32*, i32** %12, align 8
  %274 = call i32 @fclose(i32* %273)
  br label %275

275:                                              ; preds = %272, %227
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @fgetLittleShort(i32*) #1

declare dso_local i32 @fgetLittleLong(i32*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
