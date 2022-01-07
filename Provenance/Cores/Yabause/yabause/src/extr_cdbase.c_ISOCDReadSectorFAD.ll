; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cdbase.c_ISOCDReadSectorFAD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cdbase.c_ISOCDReadSectorFAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i64, i64, i64, i32 }

@disc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [40 x i8] c"Warning: Sector not found in track list\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@__const.ISOCDReadSectorFAD.deint_offsets = private unnamed_addr constant [96 x i32] [i32 0, i32 66, i32 125, i32 191, i32 100, i32 50, i32 150, i32 175, i32 8, i32 33, i32 58, i32 83, i32 108, i32 133, i32 158, i32 183, i32 16, i32 41, i32 25, i32 91, i32 116, i32 141, i32 166, i32 75, i32 24, i32 90, i32 149, i32 215, i32 124, i32 74, i32 174, i32 199, i32 32, i32 57, i32 82, i32 107, i32 132, i32 157, i32 182, i32 207, i32 40, i32 65, i32 49, i32 115, i32 140, i32 165, i32 190, i32 99, i32 48, i32 114, i32 173, i32 239, i32 148, i32 98, i32 198, i32 223, i32 56, i32 81, i32 106, i32 131, i32 156, i32 181, i32 206, i32 231, i32 64, i32 89, i32 73, i32 139, i32 164, i32 189, i32 214, i32 123, i32 72, i32 138, i32 197, i32 263, i32 172, i32 122, i32 222, i32 247, i32 80, i32 105, i32 130, i32 155, i32 180, i32 205, i32 230, i32 255, i32 88, i32 113, i32 97, i32 163, i32 188, i32 213, i32 238, i32 147], align 16
@SEEK_CUR = common dso_local global i32 0, align 4
@syncHdr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @ISOCDReadSectorFAD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ISOCDReadSectorFAD(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca [96 x i32], align 16
  %11 = alloca [288 x i8], align 16
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 1), align 8
  %13 = call i32 @assert(%struct.TYPE_6__* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @memset(i8* %14, i32 0, i32 2448)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %73, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 1), align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %22, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 1), align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %31, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %30
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 1), align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %45, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @disc, i32 0, i32 1), align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %9, align 8
  br label %72

68:                                               ; preds = %44, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %21

72:                                               ; preds = %58, %21
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = icmp eq %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @CDLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %242

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %4, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = mul nsw i64 %93, %96
  %98 = add nsw i64 %88, %97
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @SEEK_SET, align 4
  %101 = call i32 @fseek(i64 %84, i32 %99, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %81
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %4, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = mul nsw i64 %118, 96
  %120 = add nsw i64 %113, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @SEEK_SET, align 4
  %123 = call i32 @fseek(i64 %109, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %106, %81
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 2448
  br i1 %128, label %129, label %213

129:                                              ; preds = %124
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load i8*, i8** %5, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @fread(i8* %140, i32 2352, i32 1, i64 %143)
  store i64 %144, i64* %8, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2352
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @fread(i8* %146, i32 96, i32 1, i64 %149)
  store i64 %150, i64* %8, align 8
  br label %157

151:                                              ; preds = %134
  %152 = load i8*, i8** %5, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @fread(i8* %152, i32 2448, i32 1, i64 %155)
  store i64 %156, i64* %8, align 8
  br label %157

157:                                              ; preds = %151, %139
  br label %212

158:                                              ; preds = %129
  %159 = bitcast [96 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %159, i8* align 16 bitcast ([96 x i32]* @__const.ISOCDReadSectorFAD.deint_offsets to i8*), i64 384, i1 false)
  %160 = load i8*, i8** %5, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @fread(i8* %160, i32 2352, i32 1, i64 %163)
  store i64 %164, i64* %8, align 8
  %165 = getelementptr inbounds [288 x i8], [288 x i8]* %11, i64 0, i64 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @fread(i8* %165, i32 96, i32 1, i64 %168)
  store i64 %169, i64* %8, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* @SEEK_CUR, align 4
  %174 = call i32 @fseek(i64 %172, i32 2352, i32 %173)
  %175 = getelementptr inbounds [288 x i8], [288 x i8]* %11, i64 0, i64 0
  %176 = getelementptr inbounds i8, i8* %175, i64 96
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @fread(i8* %176, i32 96, i32 1, i64 %179)
  store i64 %180, i64* %8, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @SEEK_CUR, align 4
  %185 = call i32 @fseek(i64 %183, i32 2352, i32 %184)
  %186 = getelementptr inbounds [288 x i8], [288 x i8]* %11, i64 0, i64 0
  %187 = getelementptr inbounds i8, i8* %186, i64 192
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @fread(i8* %187, i32 96, i32 1, i64 %190)
  store i64 %191, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %208, %158
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 96
  br i1 %194, label %195, label %211

195:                                              ; preds = %192
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [96 x i32], [96 x i32]* %10, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [288 x i8], [288 x i8]* %11, i64 0, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 2352, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  store i8 %202, i8* %207, align 1
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %192

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %157
  br label %241

213:                                              ; preds = %124
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 2352
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i8*, i8** %5, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = call i64 @fread(i8* %219, i32 2352, i32 1, i64 %222)
  store i64 %223, i64* %8, align 8
  br label %240

224:                                              ; preds = %213
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 2048
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i8*, i8** %5, align 8
  %231 = load i32, i32* @syncHdr, align 4
  %232 = call i32 @memcpy(i8* %230, i32 %231, i32 12)
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 16
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = call i64 @fread(i8* %234, i32 2048, i32 1, i64 %237)
  store i64 %238, i64* %8, align 8
  br label %239

239:                                              ; preds = %229, %224
  br label %240

240:                                              ; preds = %239, %218
  br label %241

241:                                              ; preds = %240, %212
  store i32 1, i32* %3, align 4
  br label %242

242:                                              ; preds = %241, %79
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @CDLOG(i8*) #1

declare dso_local i32 @fseek(i64, i32, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
