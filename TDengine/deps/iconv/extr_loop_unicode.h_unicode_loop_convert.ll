; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_unicode_loop_convert.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_unicode_loop_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i8*, %struct.TYPE_12__, %struct.TYPE_11__, i64, i64, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32 (i32, i32)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i8*, i32, i64)* }
%struct.TYPE_11__ = type { i32, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)*, i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)* }
%struct.uc_to_mb_fallback_locals = type { i8*, i64, i64 }
%struct.mb_to_uc_fallback_locals = type { i8*, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_14__*, i32*, i8*, i64)* }

@RET_ILSEQ = common dso_local global i32 0, align 4
@mb_to_uc_write_replacement = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@uc_to_mb_write_replacement = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8**, i64*, i8**, i64*)* @unicode_loop_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unicode_loop_convert(i32 %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.mb_to_uc_fallback_locals, align 8
  %24 = alloca %struct.uc_to_mb_fallback_locals, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %12, align 8
  store i64 0, i64* %13, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %15, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %16, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  br label %36

36:                                               ; preds = %318, %5
  %37 = load i64, i64* %15, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %327

39:                                               ; preds = %36
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %18, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_14__*, i32*, i8*, i64)*, i32 (%struct.TYPE_14__*, i32*, i8*, i64)** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 %46(%struct.TYPE_14__* %47, i32* %19, i8* %48, i64 %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %162

53:                                               ; preds = %39
  %54 = load i32, i32* %20, align 4
  %55 = sub nsw i32 -1, %54
  %56 = urem i32 %55, 2
  %57 = load i32, i32* @RET_ILSEQ, align 4
  %58 = sub nsw i32 -1, %57
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %153

61:                                               ; preds = %53
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @DECODE_SHIFT_ILSEQ(i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %78 [
    i32 138, label %72
    i32 137, label %72
    i32 135, label %72
    i32 130, label %72
    i32 129, label %72
    i32 128, label %72
    i32 136, label %72
    i32 134, label %72
    i32 143, label %75
    i32 142, label %75
    i32 140, label %75
    i32 133, label %75
    i32 132, label %75
    i32 131, label %75
    i32 141, label %75
    i32 139, label %75
  ]

72:                                               ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %20, align 4
  br label %81

75:                                               ; preds = %68, %68, %68, %68, %68, %68, %68, %68
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %20, align 4
  br label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %81

81:                                               ; preds = %78, %75, %72
  br label %311

82:                                               ; preds = %61
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)*, i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)** %85, align 8
  %87 = icmp ne i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)* %86, null
  br i1 %87, label %88, label %142

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %94 [
    i32 138, label %92
    i32 137, label %92
    i32 135, label %92
    i32 130, label %92
    i32 129, label %92
    i32 128, label %92
    i32 136, label %92
    i32 134, label %92
    i32 143, label %93
    i32 142, label %93
    i32 140, label %93
    i32 133, label %93
    i32 132, label %93
    i32 131, label %93
    i32 141, label %93
    i32 139, label %93
  ]

92:                                               ; preds = %88, %88, %88, %88, %88, %88, %88, %88
  store i32 4, i32* %22, align 4
  br label %95

93:                                               ; preds = %88, %88, %88, %88, %88, %88, %88, %88
  store i32 2, i32* %22, align 4
  br label %95

94:                                               ; preds = %88
  store i32 1, i32* %22, align 4
  br label %95

95:                                               ; preds = %94, %93, %92
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 3
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %97, align 8
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)*, i32 (i8*, i32, i32, %struct.mb_to_uc_fallback_locals*, i32)** %105, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* @mb_to_uc_write_replacement, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 %106(i8* %110, i32 %111, i32 %112, %struct.mb_to_uc_fallback_locals* %23, i32 %116)
  %118 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %95
  %122 = load i32, i32* %20, align 4
  %123 = load i8*, i8** %14, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %14, align 8
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %15, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %15, align 8
  %130 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

132:                                              ; preds = %95
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %20, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %20, align 4
  %136 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %16, align 8
  %138 = getelementptr inbounds %struct.mb_to_uc_fallback_locals, %struct.mb_to_uc_fallback_locals* %23, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %13, align 8
  br label %311

142:                                              ; preds = %82
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %20, align 4
  %145 = load i8*, i8** %14, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %14, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %15, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %15, align 8
  %152 = load i64, i64* @EILSEQ, align 8
  store i64 %152, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

153:                                              ; preds = %53
  %154 = load i32, i32* %20, align 4
  %155 = call i32 @RET_TOOFEW(i32 0)
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i64, i64* @EINVAL, align 8
  store i64 %158, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

159:                                              ; preds = %153
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @DECODE_TOOFEW(i32 %160)
  store i32 %161, i32* %20, align 4
  br label %310

162:                                              ; preds = %39
  %163 = load i64, i64* %17, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i8*, i8** %18, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load i64, i64* @E2BIG, align 8
  store i64 %169, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

170:                                              ; preds = %162
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_14__*, i8*, i32, i64)*, i32 (%struct.TYPE_14__*, i8*, i32, i64)** %173, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %176 = load i8*, i8** %16, align 8
  %177 = load i32, i32* %19, align 4
  %178 = load i64, i64* %17, align 8
  %179 = call i32 %174(%struct.TYPE_14__* %175, i8* %176, i32 %177, i64 %178)
  store i32 %179, i32* %21, align 4
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* @RET_ILUNI, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  br label %269

184:                                              ; preds = %170
  %185 = load i32, i32* %19, align 4
  %186 = ashr i32 %185, 7
  %187 = icmp eq i32 %186, 7168
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %311

189:                                              ; preds = %184
  %190 = load i64, i64* %13, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %13, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %189
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %198 = load i32, i32* %19, align 4
  %199 = load i8*, i8** %16, align 8
  %200 = load i64, i64* %17, align 8
  %201 = call i32 @unicode_transliterate(%struct.TYPE_14__* %197, i32 %198, i8* %199, i64 %200)
  store i32 %201, i32* %21, align 4
  %202 = load i32, i32* %21, align 4
  %203 = load i32, i32* @RET_ILUNI, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %269

206:                                              ; preds = %196
  br label %207

207:                                              ; preds = %206, %189
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 0, i32* %21, align 4
  br label %269

213:                                              ; preds = %207
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 1
  %217 = load i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)*, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)** %216, align 8
  %218 = icmp ne i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)* %217, null
  br i1 %218, label %219, label %250

219:                                              ; preds = %213
  %220 = load i8*, i8** %16, align 8
  %221 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 0
  store i8* %220, i8** %221, align 8
  %222 = load i64, i64* %17, align 8
  %223 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 1
  store i64 %222, i64* %223, align 8
  %224 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 2
  store i64 0, i64* %224, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)*, i32 (i32, i32, %struct.uc_to_mb_fallback_locals*, i32)** %227, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* @uc_to_mb_write_replacement, align 4
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 %228(i32 %229, i32 %230, %struct.uc_to_mb_fallback_locals* %24, i32 %234)
  %236 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %219
  %240 = load i8*, i8** %18, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  %243 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* @errno, align 8
  store i64 -1, i64* %6, align 8
  br label %337

245:                                              ; preds = %219
  %246 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %16, align 8
  %248 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %24, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %17, align 8
  store i32 0, i32* %21, align 4
  br label %269

250:                                              ; preds = %213
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32 (%struct.TYPE_14__*, i8*, i32, i64)*, i32 (%struct.TYPE_14__*, i8*, i32, i64)** %254, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %257 = load i8*, i8** %16, align 8
  %258 = load i64, i64* %17, align 8
  %259 = call i32 %255(%struct.TYPE_14__* %256, i8* %257, i32 65533, i64 %258)
  store i32 %259, i32* %21, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* @RET_ILUNI, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %251
  br label %269

264:                                              ; preds = %251
  %265 = load i8*, i8** %18, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 2
  store i8* %265, i8** %267, align 8
  %268 = load i64, i64* @EILSEQ, align 8
  store i64 %268, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

269:                                              ; preds = %263, %245, %212, %205, %183
  %270 = load i32, i32* %21, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load i8*, i8** %18, align 8
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load i64, i64* @E2BIG, align 8
  store i64 %276, i64* @errno, align 8
  store i64 -1, i64* %13, align 8
  br label %327

277:                                              ; preds = %269
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load i32 (i32, i32)*, i32 (i32, i32)** %280, align 8
  %282 = icmp ne i32 (i32, i32)* %281, null
  br i1 %282, label %283, label %294

283:                                              ; preds = %277
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32 (i32, i32)*, i32 (i32, i32)** %286, align 8
  %288 = load i32, i32* %19, align 4
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 %287(i32 %288, i32 %292)
  br label %294

294:                                              ; preds = %283, %277
  %295 = load i32, i32* %21, align 4
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %17, align 8
  %298 = icmp ule i64 %296, %297
  br i1 %298, label %301, label %299

299:                                              ; preds = %294
  %300 = call i32 (...) @abort() #3
  unreachable

301:                                              ; preds = %294
  %302 = load i32, i32* %21, align 4
  %303 = load i8*, i8** %16, align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8* %305, i8** %16, align 8
  %306 = load i32, i32* %21, align 4
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %17, align 8
  %309 = sub i64 %308, %307
  store i64 %309, i64* %17, align 8
  br label %310

310:                                              ; preds = %301, %159
  br label %311

311:                                              ; preds = %310, %188, %132, %81
  %312 = load i32, i32* %20, align 4
  %313 = sext i32 %312 to i64
  %314 = load i64, i64* %15, align 8
  %315 = icmp ule i64 %313, %314
  br i1 %315, label %318, label %316

316:                                              ; preds = %311
  %317 = call i32 (...) @abort() #3
  unreachable

318:                                              ; preds = %311
  %319 = load i32, i32* %20, align 4
  %320 = load i8*, i8** %14, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %14, align 8
  %323 = load i32, i32* %20, align 4
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* %15, align 8
  %326 = sub i64 %325, %324
  store i64 %326, i64* %15, align 8
  br label %36

327:                                              ; preds = %272, %264, %165, %157, %143, %121, %36
  %328 = load i8*, i8** %14, align 8
  %329 = load i8**, i8*** %8, align 8
  store i8* %328, i8** %329, align 8
  %330 = load i64, i64* %15, align 8
  %331 = load i64*, i64** %9, align 8
  store i64 %330, i64* %331, align 8
  %332 = load i8*, i8** %16, align 8
  %333 = load i8**, i8*** %10, align 8
  store i8* %332, i8** %333, align 8
  %334 = load i64, i64* %17, align 8
  %335 = load i64*, i64** %11, align 8
  store i64 %334, i64* %335, align 8
  %336 = load i64, i64* %13, align 8
  store i64 %336, i64* %6, align 8
  br label %337

337:                                              ; preds = %327, %239
  %338 = load i64, i64* %6, align 8
  ret i64 %338
}

declare dso_local i32 @DECODE_SHIFT_ILSEQ(i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @DECODE_TOOFEW(i32) #1

declare dso_local i32 @unicode_transliterate(%struct.TYPE_14__*, i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
