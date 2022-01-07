; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_verify.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* (i32, i8*, i8*, i8*)*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__* }

@verify.dummy = internal constant [1 x i8] zeroinitializer, align 1
@MAXBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"too many pending calls/choices\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s is left recursive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @MAXBACK, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca %struct.TYPE_11__, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %264, %244, %238, %217, %188, %178, %130, %47, %33, %6
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = icmp ne %struct.TYPE_12__* %25, %26
  br i1 %27, label %28, label %275

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %273 [
    i32 136, label %33
    i32 151, label %40
    i32 153, label %61
    i32 139, label %88
    i32 154, label %152
    i32 148, label %152
    i32 137, label %167
    i32 132, label %187
    i32 131, label %187
    i32 130, label %187
    i32 129, label %187
    i32 140, label %187
    i32 155, label %196
    i32 152, label %196
    i32 135, label %196
    i32 128, label %196
    i32 143, label %196
    i32 144, label %197
    i32 134, label %244
    i32 133, label %244
    i32 138, label %244
    i32 150, label %244
    i32 147, label %244
    i32 146, label %244
    i32 142, label %244
    i32 149, label %250
    i32 141, label %251
    i32 145, label %272
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* %16, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %10, align 8
  br label %24

40:                                               ; preds = %28
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @MAXBACK, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 (i32*, i8*, ...) @luaL_error(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = call %struct.TYPE_12__* @dest(i32 0, %struct.TYPE_12__* %48)
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %53, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @verify.dummy, i64 0, i64 0), i8** %58, align 16
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 1
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %10, align 8
  br label %24

61:                                               ; preds = %28
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 136
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @MAXBACK, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 (i32*, i8*, ...) @luaL_error(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %75, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

76:                                               ; preds = %61
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i8* null, i8** %80, align 16
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 1
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %87, align 8
  br label %188

88:                                               ; preds = %28
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %224

92:                                               ; preds = %88
  store i32 0, i32* %18, align 4
  br label %93

93:                                               ; preds = %120, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %123

97:                                               ; preds = %93
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 16
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 1
  %112 = icmp eq %struct.TYPE_12__* %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %104
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @val2str(i32* %115, i32 %116)
  %118 = call i32 (i32*, i8*, ...) @luaL_error(i32* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  store i32 %118, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

119:                                              ; preds = %104, %97
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %18, align 4
  br label %93

123:                                              ; preds = %93
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @MAXBACK, align 4
  %126 = icmp sge i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 (i32*, i8*, ...) @luaL_error(i32* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %129, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

130:                                              ; preds = %123
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i8* null, i8** %134, align 16
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 1
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store %struct.TYPE_12__* %136, %struct.TYPE_12__** %141, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @getposition(i32* %143, i32 %144, i32 %148)
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %150
  store %struct.TYPE_12__* %151, %struct.TYPE_12__** %10, align 8
  br label %24

152:                                              ; preds = %28, %28
  %153 = load i32, i32* %16, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 0
  br label %161

161:                                              ; preds = %155, %152
  %162 = phi i1 [ false, %152 ], [ %160, %155 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %16, align 4
  br label %188

167:                                              ; preds = %28
  %168 = load i32, i32* %16, align 4
  %169 = icmp sgt i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %188

178:                                              ; preds = %167
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %16, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 1
  store %struct.TYPE_12__* %186, %struct.TYPE_12__** %10, align 8
  br label %24

187:                                              ; preds = %28, %28, %28, %28, %28
  br label %188

188:                                              ; preds = %187, %177, %161, %76
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %194
  store %struct.TYPE_12__* %195, %struct.TYPE_12__** %10, align 8
  br label %24

196:                                              ; preds = %28, %28, %28, %28, %28
  br label %224

197:                                              ; preds = %28
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %197
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i64 -1
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 154
  br i1 %209, label %210, label %217

210:                                              ; preds = %203
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 -1
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 2
  br label %217

217:                                              ; preds = %210, %203
  %218 = phi i1 [ false, %203 ], [ %216, %210 ]
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 1
  store %struct.TYPE_12__* %222, %struct.TYPE_12__** %10, align 8
  br label %24

223:                                              ; preds = %197
  br label %224

224:                                              ; preds = %263, %250, %223, %196, %91
  br label %225

225:                                              ; preds = %231, %224
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %16, align 4
  %228 = icmp eq i32 %226, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  store i32 1, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

230:                                              ; preds = %225
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %16, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 16
  %237 = icmp eq i8* %236, null
  br i1 %237, label %225, label %238

238:                                              ; preds = %231
  %239 = load i32, i32* %16, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %242, align 8
  store %struct.TYPE_12__* %243, %struct.TYPE_12__** %10, align 8
  br label %24

244:                                              ; preds = %28, %28, %28, %28, %28, %28, %28
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %246 = call i32 @sizei(%struct.TYPE_12__* %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 %248
  store %struct.TYPE_12__* %249, %struct.TYPE_12__** %10, align 8
  br label %24

250:                                              ; preds = %28
  br label %224

251:                                              ; preds = %28
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 1
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i8* (i32, i8*, i8*, i8*)*, i8* (i32, i8*, i8*, i8*)** %254, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i64 2
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = call i8* %255(i32 %259, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @verify.dummy, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @verify.dummy, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @verify.dummy, i64 0, i64 0))
  store i8* %260, i8** %19, align 8
  %261 = load i8*, i8** %19, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %224

264:                                              ; preds = %251
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %270
  store %struct.TYPE_12__* %271, %struct.TYPE_12__** %10, align 8
  br label %24

272:                                              ; preds = %28
  br label %273

273:                                              ; preds = %28, %272
  %274 = call i32 @assert(i32 0)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

275:                                              ; preds = %24
  %276 = load i32, i32* %16, align 4
  %277 = icmp eq i32 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 @assert(i32 %278)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %280

280:                                              ; preds = %275, %273, %229, %127, %113, %73, %44
  %281 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #2

declare dso_local %struct.TYPE_12__* @dest(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @val2str(i32*, i32) #2

declare dso_local i32 @getposition(i32*, i32, i32) #2

declare dso_local i32 @sizei(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
