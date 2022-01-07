; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_char_in_utf8.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_char_in_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @get_char_in_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_char_in_utf8(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %365

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %53 [
    i32 42, label %17
    i32 92, label %21
    i32 94, label %25
    i32 95, label %29
    i32 96, label %33
    i32 123, label %37
    i32 124, label %41
    i32 125, label %45
    i32 126, label %49
  ]

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  store i8 -61, i8* %18, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 -95, i8* %20, align 1
  store i32 2, i32* %3, align 4
  br label %365

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  store i8 -61, i8* %22, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 -87, i8* %24, align 1
  store i32 2, i32* %3, align 4
  br label %365

25:                                               ; preds = %14
  %26 = load i8*, i8** %4, align 8
  store i8 -61, i8* %26, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 -83, i8* %28, align 1
  store i32 2, i32* %3, align 4
  br label %365

29:                                               ; preds = %14
  %30 = load i8*, i8** %4, align 8
  store i8 -61, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 -77, i8* %32, align 1
  store i32 2, i32* %3, align 4
  br label %365

33:                                               ; preds = %14
  %34 = load i8*, i8** %4, align 8
  store i8 -61, i8* %34, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8 -70, i8* %36, align 1
  store i32 2, i32* %3, align 4
  br label %365

37:                                               ; preds = %14
  %38 = load i8*, i8** %4, align 8
  store i8 -61, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 -89, i8* %40, align 1
  store i32 2, i32* %3, align 4
  br label %365

41:                                               ; preds = %14
  %42 = load i8*, i8** %4, align 8
  store i8 -61, i8* %42, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 -73, i8* %44, align 1
  store i32 2, i32* %3, align 4
  br label %365

45:                                               ; preds = %14
  %46 = load i8*, i8** %4, align 8
  store i8 -61, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 -111, i8* %48, align 1
  store i32 2, i32* %3, align 4
  br label %365

49:                                               ; preds = %14
  %50 = load i8*, i8** %4, align 8
  store i8 -61, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 -79, i8* %52, align 1
  store i32 2, i32* %3, align 4
  br label %365

53:                                               ; preds = %14
  %54 = load i8, i8* %5, align 1
  %55 = load i8*, i8** %4, align 8
  store i8 %54, i8* %55, align 1
  store i32 1, i32* %3, align 4
  br label %365

56:                                               ; preds = %10
  %57 = load i8, i8* %5, align 1
  %58 = zext i8 %57 to i32
  switch i32 %58, label %363 [
    i32 128, label %59
    i32 129, label %63
    i32 130, label %67
    i32 131, label %71
    i32 132, label %75
    i32 133, label %81
    i32 134, label %85
    i32 135, label %89
    i32 136, label %95
    i32 137, label %99
    i32 138, label %101
    i32 139, label %105
    i32 140, label %109
    i32 141, label %113
    i32 142, label %117
    i32 143, label %121
    i32 144, label %125
    i32 145, label %129
    i32 146, label %133
    i32 147, label %137
    i32 148, label %141
    i32 149, label %145
    i32 150, label %149
    i32 151, label %151
    i32 152, label %155
    i32 153, label %157
    i32 154, label %159
    i32 155, label %161
    i32 156, label %165
    i32 157, label %171
    i32 158, label %173
    i32 159, label %175
    i32 160, label %177
    i32 161, label %181
    i32 162, label %185
    i32 163, label %189
    i32 164, label %193
    i32 165, label %197
    i32 166, label %201
    i32 167, label %205
    i32 168, label %209
    i32 169, label %213
    i32 170, label %217
    i32 171, label %221
    i32 172, label %225
    i32 173, label %229
    i32 174, label %233
    i32 175, label %237
    i32 176, label %241
    i32 177, label %245
    i32 178, label %249
    i32 179, label %253
    i32 180, label %257
    i32 181, label %261
    i32 182, label %265
    i32 183, label %269
    i32 184, label %273
    i32 185, label %277
    i32 186, label %279
    i32 187, label %281
    i32 188, label %283
    i32 189, label %285
    i32 190, label %287
    i32 191, label %291
    i32 192, label %293
    i32 193, label %297
    i32 194, label %301
    i32 195, label %305
    i32 196, label %309
    i32 197, label %313
    i32 198, label %317
    i32 199, label %321
    i32 200, label %323
    i32 201, label %327
    i32 202, label %331
    i32 203, label %335
    i32 204, label %339
    i32 205, label %345
    i32 206, label %351
    i32 207, label %357
  ]

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  store i8 -62, i8* %60, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 -82, i8* %62, align 1
  store i32 2, i32* %3, align 4
  br label %365

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  store i8 -62, i8* %64, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 -80, i8* %66, align 1
  store i32 2, i32* %3, align 4
  br label %365

67:                                               ; preds = %56
  %68 = load i8*, i8** %4, align 8
  store i8 -62, i8* %68, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 -67, i8* %70, align 1
  store i32 2, i32* %3, align 4
  br label %365

71:                                               ; preds = %56
  %72 = load i8*, i8** %4, align 8
  store i8 -62, i8* %72, align 1
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 -65, i8* %74, align 1
  store i32 2, i32* %3, align 4
  br label %365

75:                                               ; preds = %56
  %76 = load i8*, i8** %4, align 8
  store i8 -30, i8* %76, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 -124, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 -94, i8* %80, align 1
  store i32 3, i32* %3, align 4
  br label %365

81:                                               ; preds = %56
  %82 = load i8*, i8** %4, align 8
  store i8 -62, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8 -94, i8* %84, align 1
  store i32 2, i32* %3, align 4
  br label %365

85:                                               ; preds = %56
  %86 = load i8*, i8** %4, align 8
  store i8 -62, i8* %86, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 -93, i8* %88, align 1
  store i32 2, i32* %3, align 4
  br label %365

89:                                               ; preds = %56
  %90 = load i8*, i8** %4, align 8
  store i8 -30, i8* %90, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 -103, i8* %92, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 -86, i8* %94, align 1
  store i32 3, i32* %3, align 4
  br label %365

95:                                               ; preds = %56
  %96 = load i8*, i8** %4, align 8
  store i8 -61, i8* %96, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8 -96, i8* %98, align 1
  store i32 2, i32* %3, align 4
  br label %365

99:                                               ; preds = %56
  %100 = load i8*, i8** %4, align 8
  store i8 32, i8* %100, align 1
  store i32 1, i32* %3, align 4
  br label %365

101:                                              ; preds = %56
  %102 = load i8*, i8** %4, align 8
  store i8 -61, i8* %102, align 1
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 -88, i8* %104, align 1
  store i32 2, i32* %3, align 4
  br label %365

105:                                              ; preds = %56
  %106 = load i8*, i8** %4, align 8
  store i8 -61, i8* %106, align 1
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8 -94, i8* %108, align 1
  store i32 2, i32* %3, align 4
  br label %365

109:                                              ; preds = %56
  %110 = load i8*, i8** %4, align 8
  store i8 -61, i8* %110, align 1
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8 -86, i8* %112, align 1
  store i32 2, i32* %3, align 4
  br label %365

113:                                              ; preds = %56
  %114 = load i8*, i8** %4, align 8
  store i8 -61, i8* %114, align 1
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 -82, i8* %116, align 1
  store i32 2, i32* %3, align 4
  br label %365

117:                                              ; preds = %56
  %118 = load i8*, i8** %4, align 8
  store i8 -61, i8* %118, align 1
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8 -76, i8* %120, align 1
  store i32 2, i32* %3, align 4
  br label %365

121:                                              ; preds = %56
  %122 = load i8*, i8** %4, align 8
  store i8 -61, i8* %122, align 1
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  store i8 -69, i8* %124, align 1
  store i32 2, i32* %3, align 4
  br label %365

125:                                              ; preds = %56
  %126 = load i8*, i8** %4, align 8
  store i8 -61, i8* %126, align 1
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  store i8 -127, i8* %128, align 1
  store i32 2, i32* %3, align 4
  br label %365

129:                                              ; preds = %56
  %130 = load i8*, i8** %4, align 8
  store i8 -61, i8* %130, align 1
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8 -119, i8* %132, align 1
  store i32 2, i32* %3, align 4
  br label %365

133:                                              ; preds = %56
  %134 = load i8*, i8** %4, align 8
  store i8 -61, i8* %134, align 1
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 -109, i8* %136, align 1
  store i32 2, i32* %3, align 4
  br label %365

137:                                              ; preds = %56
  %138 = load i8*, i8** %4, align 8
  store i8 -61, i8* %138, align 1
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  store i8 -102, i8* %140, align 1
  store i32 2, i32* %3, align 4
  br label %365

141:                                              ; preds = %56
  %142 = load i8*, i8** %4, align 8
  store i8 -61, i8* %142, align 1
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 -100, i8* %144, align 1
  store i32 2, i32* %3, align 4
  br label %365

145:                                              ; preds = %56
  %146 = load i8*, i8** %4, align 8
  store i8 -61, i8* %146, align 1
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  store i8 -68, i8* %148, align 1
  store i32 2, i32* %3, align 4
  br label %365

149:                                              ; preds = %56
  %150 = load i8*, i8** %4, align 8
  store i8 39, i8* %150, align 1
  store i32 1, i32* %3, align 4
  br label %365

151:                                              ; preds = %56
  %152 = load i8*, i8** %4, align 8
  store i8 -62, i8* %152, align 1
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8 -95, i8* %154, align 1
  store i32 2, i32* %3, align 4
  br label %365

155:                                              ; preds = %56
  %156 = load i8*, i8** %4, align 8
  store i8 42, i8* %156, align 1
  store i32 1, i32* %3, align 4
  br label %365

157:                                              ; preds = %56
  %158 = load i8*, i8** %4, align 8
  store i8 39, i8* %158, align 1
  store i32 1, i32* %3, align 4
  br label %365

159:                                              ; preds = %56
  %160 = load i8*, i8** %4, align 8
  store i8 45, i8* %160, align 1
  store i32 1, i32* %3, align 4
  br label %365

161:                                              ; preds = %56
  %162 = load i8*, i8** %4, align 8
  store i8 -62, i8* %162, align 1
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 -87, i8* %164, align 1
  store i32 2, i32* %3, align 4
  br label %365

165:                                              ; preds = %56
  %166 = load i8*, i8** %4, align 8
  store i8 -30, i8* %166, align 1
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  store i8 -124, i8* %168, align 1
  %169 = load i8*, i8** %4, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 2
  store i8 -96, i8* %170, align 1
  store i32 3, i32* %3, align 4
  br label %365

171:                                              ; preds = %56
  %172 = load i8*, i8** %4, align 8
  store i8 46, i8* %172, align 1
  store i32 1, i32* %3, align 4
  br label %365

173:                                              ; preds = %56
  %174 = load i8*, i8** %4, align 8
  store i8 34, i8* %174, align 1
  store i32 1, i32* %3, align 4
  br label %365

175:                                              ; preds = %56
  %176 = load i8*, i8** %4, align 8
  store i8 34, i8* %176, align 1
  store i32 1, i32* %3, align 4
  br label %365

177:                                              ; preds = %56
  %178 = load i8*, i8** %4, align 8
  store i8 -61, i8* %178, align 1
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8 -128, i8* %180, align 1
  store i32 2, i32* %3, align 4
  br label %365

181:                                              ; preds = %56
  %182 = load i8*, i8** %4, align 8
  store i8 -61, i8* %182, align 1
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  store i8 -126, i8* %184, align 1
  store i32 2, i32* %3, align 4
  br label %365

185:                                              ; preds = %56
  %186 = load i8*, i8** %4, align 8
  store i8 -61, i8* %186, align 1
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  store i8 -121, i8* %188, align 1
  store i32 2, i32* %3, align 4
  br label %365

189:                                              ; preds = %56
  %190 = load i8*, i8** %4, align 8
  store i8 -61, i8* %190, align 1
  %191 = load i8*, i8** %4, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 -120, i8* %192, align 1
  store i32 2, i32* %3, align 4
  br label %365

193:                                              ; preds = %56
  %194 = load i8*, i8** %4, align 8
  store i8 -61, i8* %194, align 1
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8 -118, i8* %196, align 1
  store i32 2, i32* %3, align 4
  br label %365

197:                                              ; preds = %56
  %198 = load i8*, i8** %4, align 8
  store i8 -61, i8* %198, align 1
  %199 = load i8*, i8** %4, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  store i8 -117, i8* %200, align 1
  store i32 2, i32* %3, align 4
  br label %365

201:                                              ; preds = %56
  %202 = load i8*, i8** %4, align 8
  store i8 -61, i8* %202, align 1
  %203 = load i8*, i8** %4, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 -85, i8* %204, align 1
  store i32 2, i32* %3, align 4
  br label %365

205:                                              ; preds = %56
  %206 = load i8*, i8** %4, align 8
  store i8 -61, i8* %206, align 1
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 -114, i8* %208, align 1
  store i32 2, i32* %3, align 4
  br label %365

209:                                              ; preds = %56
  %210 = load i8*, i8** %4, align 8
  store i8 -61, i8* %210, align 1
  %211 = load i8*, i8** %4, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8 -113, i8* %212, align 1
  store i32 2, i32* %3, align 4
  br label %365

213:                                              ; preds = %56
  %214 = load i8*, i8** %4, align 8
  store i8 -61, i8* %214, align 1
  %215 = load i8*, i8** %4, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  store i8 -81, i8* %216, align 1
  store i32 2, i32* %3, align 4
  br label %365

217:                                              ; preds = %56
  %218 = load i8*, i8** %4, align 8
  store i8 -61, i8* %218, align 1
  %219 = load i8*, i8** %4, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  store i8 -108, i8* %220, align 1
  store i32 2, i32* %3, align 4
  br label %365

221:                                              ; preds = %56
  %222 = load i8*, i8** %4, align 8
  store i8 -61, i8* %222, align 1
  %223 = load i8*, i8** %4, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  store i8 -103, i8* %224, align 1
  store i32 2, i32* %3, align 4
  br label %365

225:                                              ; preds = %56
  %226 = load i8*, i8** %4, align 8
  store i8 -61, i8* %226, align 1
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 1
  store i8 -71, i8* %228, align 1
  store i32 2, i32* %3, align 4
  br label %365

229:                                              ; preds = %56
  %230 = load i8*, i8** %4, align 8
  store i8 -61, i8* %230, align 1
  %231 = load i8*, i8** %4, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  store i8 -101, i8* %232, align 1
  store i32 2, i32* %3, align 4
  br label %365

233:                                              ; preds = %56
  %234 = load i8*, i8** %4, align 8
  store i8 -62, i8* %234, align 1
  %235 = load i8*, i8** %4, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  store i8 -85, i8* %236, align 1
  store i32 2, i32* %3, align 4
  br label %365

237:                                              ; preds = %56
  %238 = load i8*, i8** %4, align 8
  store i8 -62, i8* %238, align 1
  %239 = load i8*, i8** %4, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  store i8 -69, i8* %240, align 1
  store i32 2, i32* %3, align 4
  br label %365

241:                                              ; preds = %56
  %242 = load i8*, i8** %4, align 8
  store i8 -61, i8* %242, align 1
  %243 = load i8*, i8** %4, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  store i8 -125, i8* %244, align 1
  store i32 2, i32* %3, align 4
  br label %365

245:                                              ; preds = %56
  %246 = load i8*, i8** %4, align 8
  store i8 -61, i8* %246, align 1
  %247 = load i8*, i8** %4, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  store i8 -93, i8* %248, align 1
  store i32 2, i32* %3, align 4
  br label %365

249:                                              ; preds = %56
  %250 = load i8*, i8** %4, align 8
  store i8 -61, i8* %250, align 1
  %251 = load i8*, i8** %4, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  store i8 -115, i8* %252, align 1
  store i32 2, i32* %3, align 4
  br label %365

253:                                              ; preds = %56
  %254 = load i8*, i8** %4, align 8
  store i8 -61, i8* %254, align 1
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 1
  store i8 -116, i8* %256, align 1
  store i32 2, i32* %3, align 4
  br label %365

257:                                              ; preds = %56
  %258 = load i8*, i8** %4, align 8
  store i8 -61, i8* %258, align 1
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  store i8 -84, i8* %260, align 1
  store i32 2, i32* %3, align 4
  br label %365

261:                                              ; preds = %56
  %262 = load i8*, i8** %4, align 8
  store i8 -61, i8* %262, align 1
  %263 = load i8*, i8** %4, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  store i8 -110, i8* %264, align 1
  store i32 2, i32* %3, align 4
  br label %365

265:                                              ; preds = %56
  %266 = load i8*, i8** %4, align 8
  store i8 -61, i8* %266, align 1
  %267 = load i8*, i8** %4, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 1
  store i8 -78, i8* %268, align 1
  store i32 2, i32* %3, align 4
  br label %365

269:                                              ; preds = %56
  %270 = load i8*, i8** %4, align 8
  store i8 -61, i8* %270, align 1
  %271 = load i8*, i8** %4, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  store i8 -107, i8* %272, align 1
  store i32 2, i32* %3, align 4
  br label %365

273:                                              ; preds = %56
  %274 = load i8*, i8** %4, align 8
  store i8 -61, i8* %274, align 1
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  store i8 -75, i8* %276, align 1
  store i32 2, i32* %3, align 4
  br label %365

277:                                              ; preds = %56
  %278 = load i8*, i8** %4, align 8
  store i8 123, i8* %278, align 1
  store i32 1, i32* %3, align 4
  br label %365

279:                                              ; preds = %56
  %280 = load i8*, i8** %4, align 8
  store i8 125, i8* %280, align 1
  store i32 1, i32* %3, align 4
  br label %365

281:                                              ; preds = %56
  %282 = load i8*, i8** %4, align 8
  store i8 92, i8* %282, align 1
  store i32 1, i32* %3, align 4
  br label %365

283:                                              ; preds = %56
  %284 = load i8*, i8** %4, align 8
  store i8 94, i8* %284, align 1
  store i32 1, i32* %3, align 4
  br label %365

285:                                              ; preds = %56
  %286 = load i8*, i8** %4, align 8
  store i8 95, i8* %286, align 1
  store i32 1, i32* %3, align 4
  br label %365

287:                                              ; preds = %56
  %288 = load i8*, i8** %4, align 8
  store i8 -62, i8* %288, align 1
  %289 = load i8*, i8** %4, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8 -90, i8* %290, align 1
  store i32 1, i32* %3, align 4
  br label %365

291:                                              ; preds = %56
  %292 = load i8*, i8** %4, align 8
  store i8 126, i8* %292, align 1
  store i32 1, i32* %3, align 4
  br label %365

293:                                              ; preds = %56
  %294 = load i8*, i8** %4, align 8
  store i8 -61, i8* %294, align 1
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  store i8 -124, i8* %296, align 1
  store i32 2, i32* %3, align 4
  br label %365

297:                                              ; preds = %56
  %298 = load i8*, i8** %4, align 8
  store i8 -61, i8* %298, align 1
  %299 = load i8*, i8** %4, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  store i8 -92, i8* %300, align 1
  store i32 2, i32* %3, align 4
  br label %365

301:                                              ; preds = %56
  %302 = load i8*, i8** %4, align 8
  store i8 -61, i8* %302, align 1
  %303 = load i8*, i8** %4, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 1
  store i8 -106, i8* %304, align 1
  store i32 2, i32* %3, align 4
  br label %365

305:                                              ; preds = %56
  %306 = load i8*, i8** %4, align 8
  store i8 -61, i8* %306, align 1
  %307 = load i8*, i8** %4, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 1
  store i8 -74, i8* %308, align 1
  store i32 2, i32* %3, align 4
  br label %365

309:                                              ; preds = %56
  %310 = load i8*, i8** %4, align 8
  store i8 -61, i8* %310, align 1
  %311 = load i8*, i8** %4, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  store i8 -97, i8* %312, align 1
  store i32 2, i32* %3, align 4
  br label %365

313:                                              ; preds = %56
  %314 = load i8*, i8** %4, align 8
  store i8 -62, i8* %314, align 1
  %315 = load i8*, i8** %4, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  store i8 -91, i8* %316, align 1
  store i32 2, i32* %3, align 4
  br label %365

317:                                              ; preds = %56
  %318 = load i8*, i8** %4, align 8
  store i8 -62, i8* %318, align 1
  %319 = load i8*, i8** %4, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  store i8 -92, i8* %320, align 1
  store i32 2, i32* %3, align 4
  br label %365

321:                                              ; preds = %56
  %322 = load i8*, i8** %4, align 8
  store i8 124, i8* %322, align 1
  store i32 1, i32* %3, align 4
  br label %365

323:                                              ; preds = %56
  %324 = load i8*, i8** %4, align 8
  store i8 -61, i8* %324, align 1
  %325 = load i8*, i8** %4, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 1
  store i8 -123, i8* %326, align 1
  store i32 2, i32* %3, align 4
  br label %365

327:                                              ; preds = %56
  %328 = load i8*, i8** %4, align 8
  store i8 -61, i8* %328, align 1
  %329 = load i8*, i8** %4, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  store i8 -91, i8* %330, align 1
  store i32 2, i32* %3, align 4
  br label %365

331:                                              ; preds = %56
  %332 = load i8*, i8** %4, align 8
  store i8 -61, i8* %332, align 1
  %333 = load i8*, i8** %4, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  store i8 -104, i8* %334, align 1
  store i32 2, i32* %3, align 4
  br label %365

335:                                              ; preds = %56
  %336 = load i8*, i8** %4, align 8
  store i8 -61, i8* %336, align 1
  %337 = load i8*, i8** %4, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 1
  store i8 -72, i8* %338, align 1
  store i32 2, i32* %3, align 4
  br label %365

339:                                              ; preds = %56
  %340 = load i8*, i8** %4, align 8
  store i8 -30, i8* %340, align 1
  %341 = load i8*, i8** %4, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 1
  store i8 -116, i8* %342, align 1
  %343 = load i8*, i8** %4, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 2
  store i8 -100, i8* %344, align 1
  store i32 3, i32* %3, align 4
  br label %365

345:                                              ; preds = %56
  %346 = load i8*, i8** %4, align 8
  store i8 -30, i8* %346, align 1
  %347 = load i8*, i8** %4, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 1
  store i8 -116, i8* %348, align 1
  %349 = load i8*, i8** %4, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 2
  store i8 -99, i8* %350, align 1
  store i32 3, i32* %3, align 4
  br label %365

351:                                              ; preds = %56
  %352 = load i8*, i8** %4, align 8
  store i8 -30, i8* %352, align 1
  %353 = load i8*, i8** %4, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 1
  store i8 -116, i8* %354, align 1
  %355 = load i8*, i8** %4, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 2
  store i8 -98, i8* %356, align 1
  store i32 3, i32* %3, align 4
  br label %365

357:                                              ; preds = %56
  %358 = load i8*, i8** %4, align 8
  store i8 -30, i8* %358, align 1
  %359 = load i8*, i8** %4, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 1
  store i8 -116, i8* %360, align 1
  %361 = load i8*, i8** %4, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 2
  store i8 -97, i8* %362, align 1
  store i32 3, i32* %3, align 4
  br label %365

363:                                              ; preds = %56
  %364 = load i8*, i8** %4, align 8
  store i8 63, i8* %364, align 1
  store i32 1, i32* %3, align 4
  br label %365

365:                                              ; preds = %363, %357, %351, %345, %339, %335, %331, %327, %323, %321, %317, %313, %309, %305, %301, %297, %293, %291, %287, %285, %283, %281, %279, %277, %273, %269, %265, %261, %257, %253, %249, %245, %241, %237, %233, %229, %225, %221, %217, %213, %209, %205, %201, %197, %193, %189, %185, %181, %177, %175, %173, %171, %165, %161, %159, %157, %155, %151, %149, %145, %141, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %99, %95, %89, %85, %81, %75, %71, %67, %63, %59, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %9
  %366 = load i32, i32* %3, align 4
  ret i32 %366
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
