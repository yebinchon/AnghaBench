; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_NormalizePathW.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_FileIO.c_NormalizePathW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32** }
%struct.TYPE_10__ = type { i32, i64* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 46, i32 47, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 46, i32 92, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 46, i32 46, i32 47, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 46, i32 46, i32 92, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.5 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@.str.6 = private unnamed_addr constant [5 x i32] [i32 47, i32 46, i32 46, i32 47, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 47, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 126, i32 47, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i32] [i32 126, i32 92, i32 0], align 4
@.str.10 = private unnamed_addr constant [3 x i32] [i32 47, i32 47, i32 0], align 4
@.str.11 = private unnamed_addr constant [3 x i32] [i32 92, i32 92, i32 0], align 4
@.str.12 = private unnamed_addr constant [2 x i32] [i32 92, i32 0], align 4
@.str.13 = private unnamed_addr constant [3 x i32] [i32 47, i32 92, i32 0], align 4
@.str.14 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NormalizePathW(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load i32, i32* @MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %3
  store i32 1, i32* %15, align 4
  br label %248

31:                                               ; preds = %27
  %32 = mul nuw i64 4, %22
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %24, i64 %32, i32* %33)
  %35 = call i32 @ConvertPathW(i32* %24)
  %36 = call i32 @UniTrim(i32* %24)
  %37 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str to i8*))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %31
  %40 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = call i64 @UniStartWith(i32* %24, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = call i64 @UniStartWith(i32* %24, i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = call i64 @UniStrCmpi(i32* %24, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = call i64 @UniStrCmpi(i32* %24, i8* bitcast ([3 x i32]* @.str.5 to i8*))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51, %48, %45, %42, %39, %31
  %55 = load i32, i32* @MAX_SIZE, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %16, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %17, align 8
  %59 = mul nuw i64 4, %56
  %60 = trunc i64 %59 to i32
  %61 = call i32 @Zero(i32* %58, i32 %60)
  %62 = mul nuw i64 4, %56
  %63 = trunc i64 %62 to i32
  %64 = call i32 @UnixGetCurrentDirW(i32* %58, i32 %63)
  %65 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.5 to i8*))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %54
  %68 = mul nuw i64 4, %56
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32*, i32, ...) @UniStrCat(i32* %58, i32 %69, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.6, i64 0, i64 0))
  %71 = mul nuw i64 4, %56
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds i32, i32* %24, i64 2
  %74 = call i32 (i32*, i32, ...) @UniStrCat(i32* %58, i32 %72, i32* %73)
  br label %82

75:                                               ; preds = %54
  %76 = mul nuw i64 4, %56
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i32*, i32, ...) @UniStrCat(i32* %58, i32 %77, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i64 0, i64 0))
  %79 = mul nuw i64 4, %56
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i32*, i32, ...) @UniStrCat(i32* %58, i32 %80, i32* %24)
  br label %82

82:                                               ; preds = %75, %67
  %83 = mul nuw i64 4, %22
  %84 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %24, i64 %83, i32* %58)
  %85 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %85)
  br label %86

86:                                               ; preds = %82, %51
  %87 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.8 to i8*))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.9 to i8*))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89, %86
  %93 = load i32, i32* @MAX_SIZE, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %18, align 8
  %96 = alloca i32, i64 %94, align 16
  store i64 %94, i64* %19, align 8
  %97 = mul nuw i64 4, %94
  %98 = trunc i64 %97 to i32
  %99 = call i32 @GetHomeDirW(i32* %96, i32 %98)
  %100 = mul nuw i64 4, %94
  %101 = trunc i64 %100 to i32
  %102 = call i32 (i32*, i32, ...) @UniStrCat(i32* %96, i32 %101, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i64 0, i64 0))
  %103 = mul nuw i64 4, %94
  %104 = trunc i64 %103 to i32
  %105 = getelementptr inbounds i32, i32* %24, i64 2
  %106 = call i32 (i32*, i32, ...) @UniStrCat(i32* %96, i32 %104, i32* %105)
  %107 = mul nuw i64 4, %22
  %108 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %24, i64 %107, i32* %96)
  %109 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %109)
  br label %110

110:                                              ; preds = %92, %89
  %111 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.10 to i8*))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = call i64 @UniStartWith(i32* %24, i8* bitcast ([3 x i32]* @.str.11 to i8*))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %110
  store i32 1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %125

117:                                              ; preds = %113
  %118 = call i64 @UniStartWith(i32* %24, i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = call i64 @UniStartWith(i32* %24, i8* bitcast ([2 x i32]* @.str.12 to i8*))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %117
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %124

124:                                              ; preds = %123, %120
  br label %125

125:                                              ; preds = %124, %116
  %126 = call i32 @UniStrLen(i32* %24)
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = getelementptr inbounds i32, i32* %24, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = icmp eq i32 %130, 47
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds i32, i32* %24, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = icmp eq i32 %134, 92
  br i1 %135, label %136, label %138

136:                                              ; preds = %132, %128
  %137 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %137, align 16
  br label %138

138:                                              ; preds = %136, %132, %125
  %139 = call %struct.TYPE_9__* @UniParseToken(i32* %24, i8* bitcast ([3 x i32]* @.str.13 to i8*))
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %9, align 8
  %140 = call %struct.TYPE_10__* (...) @NewSk()
  store %struct.TYPE_10__* %140, %struct.TYPE_10__** %14, align 8
  store i64 0, i64* %13, align 8
  br label %141

141:                                              ; preds = %185, %138
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %188

147:                                              ; preds = %141
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %20, align 8
  %154 = load i32*, i32** %20, align 8
  %155 = call i64 @UniStrCmpi(i32* %154, i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %185

158:                                              ; preds = %147
  %159 = load i32*, i32** %20, align 8
  %160 = call i64 @UniStrCmpi(i32* %159, i8* bitcast ([3 x i32]* @.str.5 to i8*))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %165, 1
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %170, %167
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %177 = call i32 @Pop(%struct.TYPE_10__* %176)
  br label %178

178:                                              ; preds = %175, %170, %162
  br label %183

179:                                              ; preds = %158
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %181 = load i32*, i32** %20, align 8
  %182 = call i32 @Push(%struct.TYPE_10__* %180, i32* %181)
  br label %183

183:                                              ; preds = %179, %178
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184, %157
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %13, align 8
  br label %141

188:                                              ; preds = %141
  %189 = mul nuw i64 4, %22
  %190 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %24, i64 %189, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str.14, i64 0, i64 0))
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = mul nuw i64 4, %22
  %195 = trunc i64 %194 to i32
  %196 = call i32 (i32*, i32, ...) @UniStrCat(i32* %24, i32 %195, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.10, i64 0, i64 0))
  br label %205

197:                                              ; preds = %188
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = mul nuw i64 4, %22
  %202 = trunc i64 %201 to i32
  %203 = call i32 (i32*, i32, ...) @UniStrCat(i32* %24, i32 %202, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i64 0, i64 0))
  br label %204

204:                                              ; preds = %200, %197
  br label %205

205:                                              ; preds = %204, %193
  store i64 0, i64* %13, align 8
  br label %206

206:                                              ; preds = %236, %205
  %207 = load i64, i64* %13, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = icmp ult i64 %207, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %206
  %214 = mul nuw i64 4, %22
  %215 = trunc i64 %214 to i32
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i64, i64* %13, align 8
  %220 = getelementptr inbounds i64, i64* %218, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i32*
  %223 = call i32 (i32*, i32, ...) @UniStrCat(i32* %24, i32 %215, i32* %222)
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = icmp ne i64 %224, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %213
  %232 = mul nuw i64 4, %22
  %233 = trunc i64 %232 to i32
  %234 = call i32 (i32*, i32, ...) @UniStrCat(i32* %24, i32 %233, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.7, i64 0, i64 0))
  br label %235

235:                                              ; preds = %231, %213
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %13, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %13, align 8
  br label %206

239:                                              ; preds = %206
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %241 = call i32 @ReleaseSk(%struct.TYPE_10__* %240)
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %243 = call i32 @UniFreeToken(%struct.TYPE_9__* %242)
  %244 = call i32 @ConvertPathW(i32* %24)
  %245 = load i32*, i32** %4, align 8
  %246 = load i64, i64* %5, align 8
  %247 = call i32 (i32*, i64, ...) @UniStrCpy(i32* %245, i64 %246, i32* %24)
  store i32 0, i32* %15, align 4
  br label %248

248:                                              ; preds = %239, %30
  %249 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %15, align 4
  switch i32 %250, label %252 [
    i32 0, label %251
    i32 1, label %251
  ]

251:                                              ; preds = %248, %248
  ret void

252:                                              ; preds = %248
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UniStrCpy(i32*, i64, ...) #2

declare dso_local i32 @ConvertPathW(i32*) #2

declare dso_local i32 @UniTrim(i32*) #2

declare dso_local i64 @UniStartWith(i32*, i8*) #2

declare dso_local i64 @UniStrCmpi(i32*, i8*) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @UnixGetCurrentDirW(i32*, i32) #2

declare dso_local i32 @UniStrCat(i32*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @GetHomeDirW(i32*, i32) #2

declare dso_local i32 @UniStrLen(i32*) #2

declare dso_local %struct.TYPE_9__* @UniParseToken(i32*, i8*) #2

declare dso_local %struct.TYPE_10__* @NewSk(...) #2

declare dso_local i32 @Pop(%struct.TYPE_10__*) #2

declare dso_local i32 @Push(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @ReleaseSk(%struct.TYPE_10__*) #2

declare dso_local i32 @UniFreeToken(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
