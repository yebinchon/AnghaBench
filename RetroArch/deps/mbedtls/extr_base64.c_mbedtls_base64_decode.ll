; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_base64.c_mbedtls_base64_decode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_base64.c_mbedtls_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_BASE64_INVALID_CHARACTER = common dso_local global i32 0, align 4
@base64_dec_map = common dso_local global i32* null, align 8
@MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_base64_decode(i8* %0, i64 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %129, %5
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %132

21:                                               ; preds = %17
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %35, %21
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br label %33

33:                                               ; preds = %26, %22
  %34 = phi i1 [ false, %22 ], [ %32, %26 ]
  br i1 %34, label %35, label %40

35:                                               ; preds = %33
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  %38 = load i32, i32* %15, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %15, align 4
  br label %22

40:                                               ; preds = %33
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %132

45:                                               ; preds = %40
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = sub i64 %46, %47
  %49 = icmp uge i64 %48, 2
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %129

66:                                               ; preds = %57, %50, %45
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %129

74:                                               ; preds = %66
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @MBEDTLS_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %78, i32* %6, align 4
  br label %246

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 61
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  %89 = icmp sgt i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @MBEDTLS_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %91, i32* %6, align 4
  br label %246

92:                                               ; preds = %86, %79
  %93 = load i8*, i8** %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %109, label %99

99:                                               ; preds = %92
  %100 = load i32*, i32** @base64_dec_map, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 127
  br i1 %108, label %109, label %111

109:                                              ; preds = %99, %92
  %110 = load i32, i32* @MBEDTLS_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %110, i32* %6, align 4
  br label %246

111:                                              ; preds = %99
  %112 = load i32*, i32** @base64_dec_map, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @MBEDTLS_ERR_BASE64_INVALID_CHARACTER, align 4
  store i32 %125, i32* %6, align 4
  br label %246

126:                                              ; preds = %121, %111
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %13, align 8
  br label %129

129:                                              ; preds = %126, %73, %65
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %12, align 8
  br label %17

132:                                              ; preds = %44, %17
  %133 = load i64, i64* %13, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i64*, i64** %9, align 8
  store i64 0, i64* %136, align 8
  store i32 0, i32* %6, align 4
  br label %246

137:                                              ; preds = %132
  %138 = load i64, i64* %13, align 8
  %139 = lshr i64 %138, 3
  %140 = mul i64 6, %139
  %141 = load i64, i64* %13, align 8
  %142 = and i64 %141, 7
  %143 = mul i64 6, %142
  %144 = add i64 %143, 7
  %145 = lshr i64 %144, 3
  %146 = add i64 %140, %145
  store i64 %146, i64* %13, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %13, align 8
  %150 = sub i64 %149, %148
  store i64 %150, i64* %13, align 8
  %151 = load i8*, i8** %7, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %137
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* %13, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153, %137
  %158 = load i64, i64* %13, align 8
  %159 = load i64*, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i32, i32* @MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %160, i32* %6, align 4
  br label %246

161:                                              ; preds = %153
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %13, align 8
  %162 = load i8*, i8** %7, align 8
  store i8* %162, i8** %16, align 8
  br label %163

163:                                              ; preds = %234, %161
  %164 = load i64, i64* %12, align 8
  %165 = icmp ugt i64 %164, 0
  br i1 %165, label %166, label %239

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 13
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %10, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 32
  br i1 %180, label %181, label %182

181:                                              ; preds = %176, %171, %166
  br label %234

182:                                              ; preds = %176
  %183 = load i32*, i32** @base64_dec_map, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 64
  %190 = zext i1 %189 to i32
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %191, %190
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = shl i32 %193, 6
  %195 = load i32*, i32** @base64_dec_map, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 63
  %202 = or i32 %194, %201
  store i32 %202, i32* %15, align 4
  %203 = load i64, i64* %13, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %13, align 8
  %205 = icmp eq i64 %204, 4
  br i1 %205, label %206, label %233

206:                                              ; preds = %182
  store i64 0, i64* %13, align 8
  %207 = load i32, i32* %14, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32, i32* %15, align 4
  %211 = ashr i32 %210, 16
  %212 = trunc i32 %211 to i8
  %213 = load i8*, i8** %16, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %16, align 8
  store i8 %212, i8* %213, align 1
  br label %215

215:                                              ; preds = %209, %206
  %216 = load i32, i32* %14, align 4
  %217 = icmp sgt i32 %216, 1
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i32, i32* %15, align 4
  %220 = ashr i32 %219, 8
  %221 = trunc i32 %220 to i8
  %222 = load i8*, i8** %16, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %16, align 8
  store i8 %221, i8* %222, align 1
  br label %224

224:                                              ; preds = %218, %215
  %225 = load i32, i32* %14, align 4
  %226 = icmp sgt i32 %225, 2
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32, i32* %15, align 4
  %229 = trunc i32 %228 to i8
  %230 = load i8*, i8** %16, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %16, align 8
  store i8 %229, i8* %230, align 1
  br label %232

232:                                              ; preds = %227, %224
  br label %233

233:                                              ; preds = %232, %182
  br label %234

234:                                              ; preds = %233, %181
  %235 = load i64, i64* %12, align 8
  %236 = add i64 %235, -1
  store i64 %236, i64* %12, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %10, align 8
  br label %163

239:                                              ; preds = %163
  %240 = load i8*, i8** %16, align 8
  %241 = load i8*, i8** %7, align 8
  %242 = ptrtoint i8* %240 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = load i64*, i64** %9, align 8
  store i64 %244, i64* %245, align 8
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %239, %157, %135, %124, %109, %90, %77
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
