; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF8toUTF16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_ConvertUTF8toUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conversionOK = common dso_local global i32 0, align 4
@trailingBytesForUTF8 = common dso_local global i16* null, align 8
@sourceExhausted = common dso_local global i32 0, align 4
@sourceIllegal = common dso_local global i32 0, align 4
@offsetsFromUTF8 = common dso_local global i64* null, align 8
@targetExhausted = common dso_local global i32 0, align 4
@UNI_MAX_BMP = common dso_local global i32 0, align 4
@UNI_SUR_HIGH_START = common dso_local global i32 0, align 4
@UNI_SUR_LOW_END = common dso_local global i32 0, align 4
@strictConversion = common dso_local global i64 0, align 8
@UNI_REPLACEMENT_CHAR = common dso_local global i8* null, align 8
@UNI_MAX_UTF16 = common dso_local global i32 0, align 4
@halfBase = common dso_local global i64 0, align 8
@halfShift = common dso_local global i32 0, align 4
@halfMask = common dso_local global i32 0, align 4
@UNI_SUR_LOW_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ConvertUTF8toUTF16(i64** %0, i64* %1, i8*** %2, i8** %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @conversionOK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i64**, i64*** %6, align 8
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %12, align 8
  %19 = load i8***, i8**** %8, align 8
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %13, align 8
  br label %21

21:                                               ; preds = %231, %5
  %22 = load i64*, i64** %12, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = icmp ult i64* %22, %23
  br i1 %24, label %25, label %232

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  %26 = load i16*, i16** @trailingBytesForUTF8, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  store i16 %30, i16* %15, align 2
  %31 = load i64*, i64** %12, align 8
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64*, i64** %7, align 8
  %37 = icmp uge i64* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @sourceExhausted, align 4
  store i32 %39, i32* %11, align 4
  br label %232

40:                                               ; preds = %25
  %41 = load i64*, i64** %12, align 8
  %42 = load i16, i16* %15, align 2
  %43 = zext i16 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = trunc i32 %44 to i16
  %46 = call i32 @isLegalUTF8(i64* %41, i16 zeroext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @sourceIllegal, align 4
  store i32 %49, i32* %11, align 4
  br label %232

50:                                               ; preds = %40
  %51 = load i16, i16* %15, align 2
  %52 = zext i16 %51 to i32
  switch i32 %52, label %111 [
    i32 5, label %53
    i32 4, label %63
    i32 3, label %73
    i32 2, label %83
    i32 1, label %93
    i32 0, label %103
  ]

53:                                               ; preds = %50
  %54 = load i64*, i64** %12, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %12, align 8
  %56 = load i64, i64* %54, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %61, 6
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %50, %53
  %64 = load i64*, i64** %12, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %12, align 8
  %66 = load i64, i64* %64, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 %71, 6
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %50, %63
  %74 = load i64*, i64** %12, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 1
  store i64* %75, i64** %12, align 8
  %76 = load i64, i64* %74, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = shl i32 %81, 6
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %50, %73
  %84 = load i64*, i64** %12, align 8
  %85 = getelementptr inbounds i64, i64* %84, i32 1
  store i64* %85, i64** %12, align 8
  %86 = load i64, i64* %84, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %50, %83
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %12, align 8
  %96 = load i64, i64* %94, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = shl i32 %101, 6
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %50, %93
  %104 = load i64*, i64** %12, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %12, align 8
  %106 = load i64, i64* %104, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %103, %50
  %112 = load i64*, i64** @offsetsFromUTF8, align 8
  %113 = load i16, i16* %15, align 2
  %114 = zext i16 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = sub nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %14, align 4
  %121 = load i8**, i8*** %13, align 8
  %122 = load i8**, i8*** %9, align 8
  %123 = icmp uge i8** %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %111
  %125 = load i16, i16* %15, align 2
  %126 = zext i16 %125 to i32
  %127 = add nsw i32 %126, 1
  %128 = load i64*, i64** %12, align 8
  %129 = sext i32 %127 to i64
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64* %131, i64** %12, align 8
  %132 = load i32, i32* @targetExhausted, align 4
  store i32 %132, i32* %11, align 4
  br label %232

133:                                              ; preds = %111
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @UNI_MAX_BMP, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %170

137:                                              ; preds = %133
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @UNI_SUR_LOW_END, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load i64, i64* %10, align 8
  %147 = load i64, i64* @strictConversion, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i16, i16* %15, align 2
  %151 = zext i16 %150 to i32
  %152 = add nsw i32 %151, 1
  %153 = load i64*, i64** %12, align 8
  %154 = sext i32 %152 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  store i64* %156, i64** %12, align 8
  %157 = load i32, i32* @sourceIllegal, align 4
  store i32 %157, i32* %11, align 4
  br label %232

158:                                              ; preds = %145
  %159 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %160 = load i8**, i8*** %13, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %13, align 8
  store i8* %159, i8** %160, align 8
  br label %162

162:                                              ; preds = %158
  br label %169

163:                                              ; preds = %141, %137
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load i8**, i8*** %13, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i32 1
  store i8** %168, i8*** %13, align 8
  store i8* %166, i8** %167, align 8
  br label %169

169:                                              ; preds = %163, %162
  br label %231

170:                                              ; preds = %133
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @UNI_MAX_UTF16, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @strictConversion, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32, i32* @sourceIllegal, align 4
  store i32 %179, i32* %11, align 4
  %180 = load i16, i16* %15, align 2
  %181 = zext i16 %180 to i32
  %182 = add nsw i32 %181, 1
  %183 = load i64*, i64** %12, align 8
  %184 = sext i32 %182 to i64
  %185 = sub i64 0, %184
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64* %186, i64** %12, align 8
  br label %232

187:                                              ; preds = %174
  %188 = load i8*, i8** @UNI_REPLACEMENT_CHAR, align 8
  %189 = load i8**, i8*** %13, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i32 1
  store i8** %190, i8*** %13, align 8
  store i8* %188, i8** %189, align 8
  br label %191

191:                                              ; preds = %187
  br label %230

192:                                              ; preds = %170
  %193 = load i8**, i8*** %13, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  %195 = load i8**, i8*** %9, align 8
  %196 = icmp uge i8** %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load i16, i16* %15, align 2
  %199 = zext i16 %198 to i32
  %200 = add nsw i32 %199, 1
  %201 = load i64*, i64** %12, align 8
  %202 = sext i32 %200 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64* %204, i64** %12, align 8
  %205 = load i32, i32* @targetExhausted, align 4
  store i32 %205, i32* %11, align 4
  br label %232

206:                                              ; preds = %192
  %207 = load i64, i64* @halfBase, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @halfShift, align 4
  %214 = ashr i32 %212, %213
  %215 = load i32, i32* @UNI_SUR_HIGH_START, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8**, i8*** %13, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i32 1
  store i8** %220, i8*** %13, align 8
  store i8* %218, i8** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* @halfMask, align 4
  %223 = and i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @UNI_SUR_LOW_START, align 8
  %226 = add nsw i64 %224, %225
  %227 = inttoptr i64 %226 to i8*
  %228 = load i8**, i8*** %13, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %229, i8*** %13, align 8
  store i8* %227, i8** %228, align 8
  br label %230

230:                                              ; preds = %206, %191
  br label %231

231:                                              ; preds = %230, %169
  br label %21

232:                                              ; preds = %197, %178, %149, %124, %48, %38, %21
  %233 = load i64*, i64** %12, align 8
  %234 = load i64**, i64*** %6, align 8
  store i64* %233, i64** %234, align 8
  %235 = load i8**, i8*** %13, align 8
  %236 = load i8***, i8**** %8, align 8
  store i8** %235, i8*** %236, align 8
  %237 = load i32, i32* %11, align 4
  ret i32 %237
}

declare dso_local i32 @isLegalUTF8(i64*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
