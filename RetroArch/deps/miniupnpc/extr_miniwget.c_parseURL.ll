; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_miniwget.c_parseURL.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_miniwget.c_parseURL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@MAXHOSTNAMELEN = common dso_local global i64 0, align 8
@IF_NAMESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseURL(i8* %0, i8* %1, i16* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [8 x i8], align 1
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i16* %2, i16** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %267

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strstr(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %267

28:                                               ; preds = %21
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 104
  br i1 %35, label %54, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 116
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 116
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 112
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %36, %28
  store i32 0, i32* %6, align 4
  br label %267

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* @MAXHOSTNAMELEN, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @memset(i8* %56, i32 0, i64 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 91
  br i1 %63, label %64, label %189

64:                                               ; preds = %55
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @strchr(i8* %65, i8 signext 37)
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 93)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %121

71:                                               ; preds = %64
  %72 = load i8*, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  %75 = load i8*, i8** %15, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %74
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 50
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 53
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  store i8* %97, i8** %15, align 8
  br label %98

98:                                               ; preds = %95, %89, %81
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp uge i64 %106, 8
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 7, i32* %17, align 4
  br label %109

109:                                              ; preds = %108, %98
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 %115
  store i8 0, i8* %116, align 1
  %117 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %118 = call i64 @strtoul(i8* %117, i32* null, i32 10)
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %109, %78, %74, %71, %64
  %122 = load i8*, i8** %12, align 8
  %123 = call i8* @strchr(i8* %122, i8 signext 47)
  store i8* %123, i8** %14, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %188

126:                                              ; preds = %121
  %127 = load i8*, i8** %14, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %188

129:                                              ; preds = %126
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %13, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i64, i64* @MAXHOSTNAMELEN, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = call i32 @MIN(i64 %134, i32 %140)
  %142 = call i32 @strncpy(i8* %132, i8* %133, i32 %141)
  %143 = load i8*, i8** %13, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 58
  br i1 %146, label %147, label %183

147:                                              ; preds = %129
  %148 = load i16*, i16** %9, align 8
  store i16 0, i16* %148, align 2
  %149 = load i8*, i8** %13, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %13, align 8
  br label %151

151:                                              ; preds = %163, %147
  %152 = load i8*, i8** %13, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp sge i32 %154, 48
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %13, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 57
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi i1 [ false, %151 ], [ %160, %156 ]
  br i1 %162, label %163, label %182

163:                                              ; preds = %161
  %164 = load i16*, i16** %9, align 8
  %165 = load i16, i16* %164, align 2
  %166 = zext i16 %165 to i32
  %167 = mul nsw i32 %166, 10
  %168 = trunc i32 %167 to i16
  store i16 %168, i16* %164, align 2
  %169 = load i8*, i8** %13, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = sub nsw i32 %171, 48
  %173 = trunc i32 %172 to i16
  %174 = zext i16 %173 to i32
  %175 = load i16*, i16** %9, align 8
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = add nsw i32 %177, %174
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %175, align 2
  %180 = load i8*, i8** %13, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %13, align 8
  br label %151

182:                                              ; preds = %161
  br label %185

183:                                              ; preds = %129
  %184 = load i16*, i16** %9, align 8
  store i16 80, i16* %184, align 2
  br label %185

185:                                              ; preds = %183, %182
  %186 = load i8*, i8** %14, align 8
  %187 = load i8**, i8*** %10, align 8
  store i8* %186, i8** %187, align 8
  store i32 1, i32* %6, align 4
  br label %267

188:                                              ; preds = %126, %121
  br label %189

189:                                              ; preds = %188, %55
  %190 = load i8*, i8** %12, align 8
  %191 = call i8* @strchr(i8* %190, i8 signext 58)
  store i8* %191, i8** %13, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = call i8* @strchr(i8* %192, i8 signext 47)
  store i8* %193, i8** %14, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  store i32 0, i32* %6, align 4
  br label %267

197:                                              ; preds = %189
  %198 = load i8*, i8** %13, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i8*, i8** %13, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = icmp ugt i8* %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %200, %197
  %205 = load i8*, i8** %8, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i64, i64* @MAXHOSTNAMELEN, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %12, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  %214 = call i32 @MIN(i64 %207, i32 %213)
  %215 = call i32 @strncpy(i8* %205, i8* %206, i32 %214)
  %216 = load i16*, i16** %9, align 8
  store i16 80, i16* %216, align 2
  br label %264

217:                                              ; preds = %200
  %218 = load i8*, i8** %8, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = load i64, i64* @MAXHOSTNAMELEN, align 8
  %221 = load i8*, i8** %13, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = ptrtoint i8* %221 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = trunc i64 %225 to i32
  %227 = call i32 @MIN(i64 %220, i32 %226)
  %228 = call i32 @strncpy(i8* %218, i8* %219, i32 %227)
  %229 = load i16*, i16** %9, align 8
  store i16 0, i16* %229, align 2
  %230 = load i8*, i8** %13, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %13, align 8
  br label %232

232:                                              ; preds = %244, %217
  %233 = load i8*, i8** %13, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp sge i32 %235, 48
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i8*, i8** %13, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp sle i32 %240, 57
  br label %242

242:                                              ; preds = %237, %232
  %243 = phi i1 [ false, %232 ], [ %241, %237 ]
  br i1 %243, label %244, label %263

244:                                              ; preds = %242
  %245 = load i16*, i16** %9, align 8
  %246 = load i16, i16* %245, align 2
  %247 = zext i16 %246 to i32
  %248 = mul nsw i32 %247, 10
  %249 = trunc i32 %248 to i16
  store i16 %249, i16* %245, align 2
  %250 = load i8*, i8** %13, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = sub nsw i32 %252, 48
  %254 = trunc i32 %253 to i16
  %255 = zext i16 %254 to i32
  %256 = load i16*, i16** %9, align 8
  %257 = load i16, i16* %256, align 2
  %258 = zext i16 %257 to i32
  %259 = add nsw i32 %258, %255
  %260 = trunc i32 %259 to i16
  store i16 %260, i16* %256, align 2
  %261 = load i8*, i8** %13, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %13, align 8
  br label %232

263:                                              ; preds = %242
  br label %264

264:                                              ; preds = %263, %204
  %265 = load i8*, i8** %14, align 8
  %266 = load i8**, i8*** %10, align 8
  store i8* %265, i8** %266, align 8
  store i32 1, i32* %6, align 4
  br label %267

267:                                              ; preds = %264, %196, %185, %54, %27, %20
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
