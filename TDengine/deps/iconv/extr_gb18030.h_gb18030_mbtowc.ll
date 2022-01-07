; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030.h_gb18030_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030.h_gb18030_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @gb18030_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ascii_mbtowc(i32 %24, i32* %25, i8* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %263

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @gbk_mbtowc(i32 %30, i32* %31, i8* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RET_ILSEQ, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %263

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @gb18030ext_mbtowc(i32 %41, i32* %42, i8* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @RET_ILSEQ, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %263

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @gb18030uni_mbtowc(i32 %52, i32* %53, i8* %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @RET_ILSEQ, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %263

62:                                               ; preds = %51
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %11, align 1
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 170
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i8, i8* %11, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sle i32 %71, 175
  br i1 %72, label %81, label %73

73:                                               ; preds = %69, %62
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sge i32 %75, 248
  br i1 %76, label %77, label %120

77:                                               ; preds = %73
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sle i32 %79, 254
  br i1 %80, label %81, label %120

81:                                               ; preds = %77, %69
  %82 = load i32, i32* %9, align 4
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %12, align 1
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sge i32 %89, 161
  br i1 %90, label %91, label %116

91:                                               ; preds = %84
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 254
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 248
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = sub nsw i32 %101, 242
  br label %107

103:                                              ; preds = %95
  %104 = load i8, i8* %11, align 1
  %105 = zext i8 %104 to i32
  %106 = sub nsw i32 %105, 170
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i32 [ %102, %99 ], [ %106, %103 ]
  %109 = mul nsw i32 94, %108
  %110 = add nsw i32 57344, %109
  %111 = load i8, i8* %12, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 %112, 161
  %114 = add nsw i32 %110, %113
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store i32 2, i32* %5, align 4
  br label %263

116:                                              ; preds = %91, %84
  br label %119

117:                                              ; preds = %81
  %118 = call i32 @RET_TOOFEW(i32 0)
  store i32 %118, i32* %5, align 4
  br label %263

119:                                              ; preds = %116
  br label %167

120:                                              ; preds = %77, %73
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp sge i32 %122, 161
  br i1 %123, label %124, label %166

124:                                              ; preds = %120
  %125 = load i8, i8* %11, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp sle i32 %126, 167
  br i1 %127, label %128, label %166

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = icmp sge i32 %129, 2
  br i1 %130, label %131, label %163

131:                                              ; preds = %128
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %13, align 1
  %135 = load i8, i8* %13, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sge i32 %136, 64
  br i1 %137, label %138, label %162

138:                                              ; preds = %131
  %139 = load i8, i8* %13, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sle i32 %140, 161
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i8, i8* %13, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 127
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load i8, i8* %11, align 1
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %148, 161
  %150 = mul nsw i32 96, %149
  %151 = add nsw i32 58566, %150
  %152 = load i8, i8* %13, align 1
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %151, %153
  %155 = load i8, i8* %13, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp sge i32 %156, 128
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 65, i32 64
  %160 = sub nsw i32 %154, %159
  %161 = load i32*, i32** %7, align 8
  store i32 %160, i32* %161, align 4
  store i32 2, i32* %5, align 4
  br label %263

162:                                              ; preds = %142, %138, %131
  br label %165

163:                                              ; preds = %128
  %164 = call i32 @RET_TOOFEW(i32 0)
  store i32 %164, i32* %5, align 4
  br label %263

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %124, %120
  br label %167

167:                                              ; preds = %166, %119
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  store i8 %170, i8* %14, align 1
  %171 = load i8, i8* %14, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp sge i32 %172, 144
  br i1 %173, label %174, label %261

174:                                              ; preds = %167
  %175 = load i8, i8* %14, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp sle i32 %176, 227
  br i1 %177, label %178, label %261

178:                                              ; preds = %174
  %179 = load i32, i32* %9, align 4
  %180 = icmp sge i32 %179, 2
  br i1 %180, label %181, label %259

181:                                              ; preds = %178
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  store i8 %184, i8* %15, align 1
  %185 = load i8, i8* %15, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp sge i32 %186, 48
  br i1 %187, label %188, label %257

188:                                              ; preds = %181
  %189 = load i8, i8* %15, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp sle i32 %190, 57
  br i1 %191, label %192, label %257

192:                                              ; preds = %188
  %193 = load i32, i32* %9, align 4
  %194 = icmp sge i32 %193, 3
  br i1 %194, label %195, label %255

195:                                              ; preds = %192
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 2
  %198 = load i8, i8* %197, align 1
  store i8 %198, i8* %16, align 1
  %199 = load i8, i8* %16, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp sge i32 %200, 129
  br i1 %201, label %202, label %253

202:                                              ; preds = %195
  %203 = load i8, i8* %16, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp sle i32 %204, 254
  br i1 %205, label %206, label %253

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = icmp sge i32 %207, 4
  br i1 %208, label %209, label %251

209:                                              ; preds = %206
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 3
  %212 = load i8, i8* %211, align 1
  store i8 %212, i8* %17, align 1
  %213 = load i8, i8* %17, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp sge i32 %214, 48
  br i1 %215, label %216, label %249

216:                                              ; preds = %209
  %217 = load i8, i8* %17, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp sle i32 %218, 57
  br i1 %219, label %220, label %249

220:                                              ; preds = %216
  %221 = load i8, i8* %14, align 1
  %222 = zext i8 %221 to i32
  %223 = sub nsw i32 %222, 144
  %224 = mul nsw i32 %223, 10
  %225 = load i8, i8* %15, align 1
  %226 = zext i8 %225 to i32
  %227 = sub nsw i32 %226, 48
  %228 = add nsw i32 %224, %227
  %229 = mul nsw i32 %228, 126
  %230 = load i8, i8* %16, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 %231, 129
  %233 = add nsw i32 %229, %232
  %234 = mul nsw i32 %233, 10
  %235 = load i8, i8* %17, align 1
  %236 = zext i8 %235 to i32
  %237 = sub nsw i32 %236, 48
  %238 = add nsw i32 %234, %237
  store i32 %238, i32* %18, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp uge i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %220
  %242 = load i32, i32* %18, align 4
  %243 = icmp ult i32 %242, 1048576
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32, i32* %18, align 4
  %246 = add i32 65536, %245
  %247 = load i32*, i32** %7, align 8
  store i32 %246, i32* %247, align 4
  store i32 4, i32* %5, align 4
  br label %263

248:                                              ; preds = %241, %220
  br label %249

249:                                              ; preds = %248, %216, %209
  %250 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %250, i32* %5, align 4
  br label %263

251:                                              ; preds = %206
  %252 = call i32 @RET_TOOFEW(i32 0)
  store i32 %252, i32* %5, align 4
  br label %263

253:                                              ; preds = %202, %195
  %254 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %254, i32* %5, align 4
  br label %263

255:                                              ; preds = %192
  %256 = call i32 @RET_TOOFEW(i32 0)
  store i32 %256, i32* %5, align 4
  br label %263

257:                                              ; preds = %188, %181
  %258 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %258, i32* %5, align 4
  br label %263

259:                                              ; preds = %178
  %260 = call i32 @RET_TOOFEW(i32 0)
  store i32 %260, i32* %5, align 4
  br label %263

261:                                              ; preds = %174, %167
  %262 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %261, %259, %257, %255, %253, %251, %249, %244, %163, %146, %117, %107, %60, %49, %38, %23
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gbk_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gb18030ext_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gb18030uni_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
