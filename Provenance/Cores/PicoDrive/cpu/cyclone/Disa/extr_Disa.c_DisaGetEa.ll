; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaGetEa.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaGetEa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(a%d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(a%d)+\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-(a%d)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"($%x,a%d)\00", align 1
@DisaPc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"($%x,a%d,%c%d.%c)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"($%x,a%d,%c%d.%c*%d)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"$%x.w\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"$%x.l\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"($%x,pc)\00", align 1
@Comment = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"; =%x\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"($%x,pc,%c%d.%c)\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"($%x,pc,%c%d.%c*%d)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"#$%x\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"ea=(%d%d%d %d%d%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisaGetEa(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 63
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 56
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %4, align 4
  br label %280

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 56
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 7
  %41 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 0, i32* %4, align 4
  br label %280

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 56
  %45 = icmp eq i32 %44, 16
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 7
  %50 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 0, i32* %4, align 4
  br label %280

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 56
  %54 = icmp eq i32 %53, 24
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 7
  %59 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  store i32 0, i32* %4, align 4
  br label %280

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 56
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 7
  %68 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  store i32 0, i32* %4, align 4
  br label %280

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 56
  %72 = icmp eq i32 %71, 40
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @DisaPc, align 4
  %76 = call i32 @DisaWord(i32 %75)
  %77 = and i32 %76, 65535
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 7
  %80 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load i32, i32* @DisaPc, align 4
  %82 = add nsw i32 %81, 2
  store i32 %82, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

83:                                               ; preds = %69
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 56
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %134

87:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %88 = load i32, i32* @DisaPc, align 4
  %89 = call i32 @DisaWord(i32 %88)
  %90 = and i32 %89, 65535
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 7
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, 255
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 32768
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 97, i32 100
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 12
  %102 = and i32 %101, 7
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 2048
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 108, i32 119
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 9
  %110 = and i32 %109, 3
  %111 = shl i32 1, %110
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %122

114:                                              ; preds = %87
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  br label %131

122:                                              ; preds = %87
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %122, %114
  %132 = load i32, i32* @DisaPc, align 4
  %133 = add nsw i32 %132, 2
  store i32 %133, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

134:                                              ; preds = %83
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 56
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* @DisaPc, align 4
  %140 = call i32 @DisaWord(i32 %139)
  %141 = and i32 %140, 65535
  %142 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @DisaPc, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 57
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* @DisaPc, align 4
  %151 = call i32 @DisaLong(i32 %150)
  %152 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @DisaPc, align 4
  %154 = add nsw i32 %153, 4
  store i32 %154, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

155:                                              ; preds = %145
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 58
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load i32, i32* @DisaPc, align 4
  %160 = call i32 @DisaWord(i32 %159)
  %161 = and i32 %160, 65535
  store i32 %161, i32* %15, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @Comment, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load i32, i32* @DisaPc, align 4
  %169 = load i32, i32* %15, align 4
  %170 = trunc i32 %169 to i16
  %171 = sext i16 %170 to i32
  %172 = add nsw i32 %168, %171
  %173 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @DisaPc, align 4
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

176:                                              ; preds = %155
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 59
  br i1 %178, label %179, label %231

179:                                              ; preds = %176
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %180 = load i32, i32* @DisaPc, align 4
  %181 = call i32 @DisaWord(i32 %180)
  %182 = and i32 %181, 65535
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = and i32 %183, 255
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* %16, align 4
  %186 = and i32 %185, 32768
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 97, i32 100
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %16, align 4
  %191 = ashr i32 %190, 12
  %192 = and i32 %191, 7
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %16, align 4
  %194 = and i32 %193, 2048
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 108, i32 119
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %16, align 4
  %199 = ashr i32 %198, 9
  %200 = and i32 %199, 3
  %201 = shl i32 1, %200
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %21, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %211

204:                                              ; preds = %179
  %205 = load i8*, i8** %5, align 8
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %20, align 4
  %210 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %206, i32 %207, i32 %208, i32 %209)
  br label %219

211:                                              ; preds = %179
  %212 = load i8*, i8** %5, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %21, align 4
  %218 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %213, i32 %214, i32 %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %211, %204
  %220 = load i32, i32* @Comment, align 4
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = load i32, i32* @DisaPc, align 4
  %224 = load i32, i32* %17, align 4
  %225 = trunc i32 %224 to i8
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %223, %226
  %228 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @DisaPc, align 4
  %230 = add nsw i32 %229, 2
  store i32 %230, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

231:                                              ; preds = %176
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %232, 60
  br i1 %233, label %234, label %260

234:                                              ; preds = %231
  %235 = load i32, i32* %7, align 4
  switch i32 %235, label %259 [
    i32 0, label %236
    i32 1, label %244
    i32 2, label %252
  ]

236:                                              ; preds = %234
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* @DisaPc, align 4
  %239 = call i32 @DisaWord(i32 %238)
  %240 = and i32 %239, 255
  %241 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @DisaPc, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

244:                                              ; preds = %234
  %245 = load i8*, i8** %5, align 8
  %246 = load i32, i32* @DisaPc, align 4
  %247 = call i32 @DisaWord(i32 %246)
  %248 = and i32 %247, 65535
  %249 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @DisaPc, align 4
  %251 = add nsw i32 %250, 2
  store i32 %251, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

252:                                              ; preds = %234
  %253 = load i8*, i8** %5, align 8
  %254 = load i32, i32* @DisaPc, align 4
  %255 = call i32 @DisaLong(i32 %254)
  %256 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @DisaPc, align 4
  %258 = add nsw i32 %257, 4
  store i32 %258, i32* @DisaPc, align 4
  store i32 0, i32* %4, align 4
  br label %280

259:                                              ; preds = %234
  store i32 1, i32* %4, align 4
  br label %280

260:                                              ; preds = %231
  %261 = load i8*, i8** %5, align 8
  %262 = load i32, i32* %6, align 4
  %263 = ashr i32 %262, 5
  %264 = and i32 %263, 1
  %265 = load i32, i32* %6, align 4
  %266 = ashr i32 %265, 4
  %267 = and i32 %266, 1
  %268 = load i32, i32* %6, align 4
  %269 = ashr i32 %268, 3
  %270 = and i32 %269, 1
  %271 = load i32, i32* %6, align 4
  %272 = ashr i32 %271, 2
  %273 = and i32 %272, 1
  %274 = load i32, i32* %6, align 4
  %275 = ashr i32 %274, 1
  %276 = and i32 %275, 1
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, 1
  %279 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %264, i32 %267, i32 %270, i32 %273, i32 %276, i32 %278)
  store i32 1, i32* %4, align 4
  br label %280

280:                                              ; preds = %260, %259, %252, %244, %236, %219, %158, %148, %137, %131, %73, %64, %55, %46, %37, %29
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @DisaWord(i32) #1

declare dso_local i32 @DisaLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
