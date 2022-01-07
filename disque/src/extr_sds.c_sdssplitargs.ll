; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sds.c_sdssplitargs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sds.c_sdssplitargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @sdssplitargs(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8** null, i8*** %8, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %2, %244
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %237

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i8* (...) @sdsempty()
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %218, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %219

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %148

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 120
  br i1 %59, label %60, label %88

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @is_hex_digit(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = call i64 @is_hex_digit(i8 signext %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @hex_digit_to_int(i8 signext %75)
  %77 = mul nsw i32 %76, 16
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @hex_digit_to_int(i8 signext %80)
  %82 = add nsw i32 %77, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %12, align 1
  %84 = load i8*, i8** %7, align 8
  %85 = call i8* @sdscatlen(i8* %84, i8* %12, i32 1)
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  store i8* %87, i8** %6, align 8
  br label %147

88:                                               ; preds = %66, %60, %54, %49
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %6, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %110 [
    i32 110, label %105
    i32 114, label %106
    i32 116, label %107
    i32 98, label %108
    i32 97, label %109
  ]

105:                                              ; preds = %99
  store i8 10, i8* %13, align 1
  br label %113

106:                                              ; preds = %99
  store i8 13, i8* %13, align 1
  br label %113

107:                                              ; preds = %99
  store i8 9, i8* %13, align 1
  br label %113

108:                                              ; preds = %99
  store i8 8, i8* %13, align 1
  br label %113

109:                                              ; preds = %99
  store i8 7, i8* %13, align 1
  br label %113

110:                                              ; preds = %99
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  store i8 %112, i8* %13, align 1
  br label %113

113:                                              ; preds = %110, %109, %108, %107, %106, %105
  %114 = load i8*, i8** %7, align 8
  %115 = call i8* @sdscatlen(i8* %114, i8* %13, i32 1)
  store i8* %115, i8** %7, align 8
  br label %146

116:                                              ; preds = %93, %88
  %117 = load i8*, i8** %6, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 34
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @isspace(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  br label %245

134:                                              ; preds = %127, %121
  store i32 1, i32* %11, align 4
  br label %145

135:                                              ; preds = %116
  %136 = load i8*, i8** %6, align 8
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %245

140:                                              ; preds = %135
  %141 = load i8*, i8** %7, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = call i8* @sdscatlen(i8* %141, i8* %142, i32 1)
  store i8* %143, i8** %7, align 8
  br label %144

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %134
  br label %146

146:                                              ; preds = %145, %113
  br label %147

147:                                              ; preds = %146, %72
  br label %211

148:                                              ; preds = %46
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %198

151:                                              ; preds = %148
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 92
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 39
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %6, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i8* @sdscatlen(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %166, i8** %7, align 8
  br label %197

167:                                              ; preds = %156, %151
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 39
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = call i64 @isspace(i8 signext %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  br label %245

185:                                              ; preds = %178, %172
  store i32 1, i32* %11, align 4
  br label %196

186:                                              ; preds = %167
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  br label %245

191:                                              ; preds = %186
  %192 = load i8*, i8** %7, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i8* @sdscatlen(i8* %192, i8* %193, i32 1)
  store i8* %194, i8** %7, align 8
  br label %195

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %185
  br label %197

197:                                              ; preds = %196, %162
  br label %210

198:                                              ; preds = %148
  %199 = load i8*, i8** %6, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  switch i32 %201, label %205 [
    i32 32, label %202
    i32 10, label %202
    i32 13, label %202
    i32 9, label %202
    i32 0, label %202
    i32 34, label %203
    i32 39, label %204
  ]

202:                                              ; preds = %198, %198, %198, %198, %198
  store i32 1, i32* %11, align 4
  br label %209

203:                                              ; preds = %198
  store i32 1, i32* %9, align 4
  br label %209

204:                                              ; preds = %198
  store i32 1, i32* %10, align 4
  br label %209

205:                                              ; preds = %198
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %6, align 8
  %208 = call i8* @sdscatlen(i8* %206, i8* %207, i32 1)
  store i8* %208, i8** %7, align 8
  br label %209

209:                                              ; preds = %205, %204, %203, %202
  br label %210

210:                                              ; preds = %209, %197
  br label %211

211:                                              ; preds = %210, %147
  %212 = load i8*, i8** %6, align 8
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %6, align 8
  br label %218

218:                                              ; preds = %215, %211
  br label %42

219:                                              ; preds = %42
  %220 = load i8**, i8*** %8, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 8
  %226 = trunc i64 %225 to i32
  %227 = call i8** @s_realloc(i8** %220, i32 %226)
  store i8** %227, i8*** %8, align 8
  %228 = load i8*, i8** %7, align 8
  %229 = load i8**, i8*** %8, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %229, i64 %232
  store i8* %228, i8** %233, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  store i8* null, i8** %7, align 8
  br label %244

237:                                              ; preds = %32
  %238 = load i8**, i8*** %8, align 8
  %239 = icmp eq i8** %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = call i8** @s_malloc(i32 8)
  store i8** %241, i8*** %8, align 8
  br label %242

242:                                              ; preds = %240, %237
  %243 = load i8**, i8*** %8, align 8
  store i8** %243, i8*** %3, align 8
  br label %269

244:                                              ; preds = %219
  br label %16

245:                                              ; preds = %190, %184, %139, %133
  br label %246

246:                                              ; preds = %251, %245
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %247, align 4
  %250 = icmp ne i32 %248, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = load i8**, i8*** %8, align 8
  %253 = load i32*, i32** %5, align 8
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8*, i8** %252, i64 %255
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @sdsfree(i8* %257)
  br label %246

259:                                              ; preds = %246
  %260 = load i8**, i8*** %8, align 8
  %261 = call i32 @s_free(i8** %260)
  %262 = load i8*, i8** %7, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 @sdsfree(i8* %265)
  br label %267

267:                                              ; preds = %264, %259
  %268 = load i32*, i32** %5, align 8
  store i32 0, i32* %268, align 4
  store i8** null, i8*** %3, align 8
  br label %269

269:                                              ; preds = %267, %242
  %270 = load i8**, i8*** %3, align 8
  ret i8** %270
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i64 @is_hex_digit(i8 signext) #1

declare dso_local i32 @hex_digit_to_int(i8 signext) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i8** @s_realloc(i8**, i32) #1

declare dso_local i8** @s_malloc(i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @s_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
