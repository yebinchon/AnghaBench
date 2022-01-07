; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTimeRange.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTimeRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@TK_ID = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TK_SET = common dso_local global i64 0, align 8
@TK_IN = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MICRO = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@TK_LE = common dso_local global i64 0, align 8
@TK_LT = common dso_local global i64 0, align 8
@TK_GT = common dso_local global i64 0, align 8
@TK_GE = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @getTimeRange(i32* %0, i32* %1, %struct.TYPE_5__* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TK_ID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %24, i64* %6, align 8
  br label %250

25:                                               ; preds = %5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TK_SET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @TK_IN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %25
  %36 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %36, i64* %6, align 8
  br label %250

37:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @strdequote(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i64 %49, i64* %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @strnchr(i32 %56, i8 signext 45, i64 %60, i32 0)
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %44
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %74 = call i64 @taosParseTime(i32 %68, i32* %12, i64 %72, i32 %73)
  %75 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %80

78:                                               ; preds = %64
  %79 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %79, i64* %6, align 8
  br label %250

80:                                               ; preds = %77
  br label %119

81:                                               ; preds = %44
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %82, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %88 = load i64, i64* @TK_ID, align 8
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %89, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %99 = call i64 @tSQLGetToken(i32 %97, i64* %98)
  store i64 %99, i64* %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TK_INTEGER, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %81
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_FLOAT, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %104, %81
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109, %104
  %117 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %117, i64* %6, align 8
  br label %250

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %80
  br label %163

120:                                              ; preds = %37
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TK_INTEGER, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %120
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %126
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @INT64_MAX, align 4
  %136 = sdiv i32 %135, 1000
  %137 = icmp sle i32 %134, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 1000
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %130
  br label %162

145:                                              ; preds = %126, %120
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @TK_FLOAT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %159, 1000
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %151, %145
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %119
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %191, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = bitcast i32* %12 to i8*
  %170 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %171 = call i32 @tVariantDump(%struct.TYPE_7__* %168, i8* %169, i32 %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TK_STRING, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %166
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @INT64_MAX, align 4
  %184 = sdiv i32 %183, 1000
  %185 = icmp sle i32 %182, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i32, i32* %12, align 4
  %188 = mul nsw i32 %187, 1000
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %186, %181
  br label %190

190:                                              ; preds = %189, %177, %166
  br label %191

191:                                              ; preds = %190, %163
  store i64 1, i64* %17, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i64, i64* %17, align 8
  %197 = mul nsw i64 %196, 1000
  store i64 %197, i64* %17, align 8
  br label %198

198:                                              ; preds = %195, %191
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* @TK_LE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i32, i32* %12, align 4
  %204 = load i32*, i32** %8, align 8
  store i32 %203, i32* %204, align 4
  br label %248

205:                                              ; preds = %198
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* @TK_LT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %17, align 8
  %213 = sub nsw i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** %8, align 8
  store i32 %214, i32* %215, align 4
  br label %247

216:                                              ; preds = %205
  %217 = load i64, i64* %10, align 8
  %218 = load i64, i64* @TK_GT, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %17, align 8
  %224 = add nsw i64 %222, %223
  %225 = trunc i64 %224 to i32
  %226 = load i32*, i32** %7, align 8
  store i32 %225, i32* %226, align 4
  br label %246

227:                                              ; preds = %216
  %228 = load i64, i64* %10, align 8
  %229 = load i64, i64* @TK_GE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i32, i32* %12, align 4
  %233 = load i32*, i32** %7, align 8
  store i32 %232, i32* %233, align 4
  br label %245

234:                                              ; preds = %227
  %235 = load i64, i64* %10, align 8
  %236 = load i64, i64* @TK_EQ, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i32, i32* %12, align 4
  %240 = load i32*, i32** %7, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32*, i32** %7, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %8, align 8
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %238, %234
  br label %245

245:                                              ; preds = %244, %231
  br label %246

246:                                              ; preds = %245, %220
  br label %247

247:                                              ; preds = %246, %209
  br label %248

248:                                              ; preds = %247, %202
  %249 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %249, i64* %6, align 8
  br label %250

250:                                              ; preds = %248, %116, %78, %35, %23
  %251 = load i64, i64* %6, align 8
  ret i64 %251
}

declare dso_local i64 @strdequote(i32) #1

declare dso_local i8* @strnchr(i32, i8 signext, i64, i32) #1

declare dso_local i64 @taosParseTime(i32, i32*, i64, i32) #1

declare dso_local i64 @tSQLGetToken(i32, i64*) #1

declare dso_local i32 @tVariantDump(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
