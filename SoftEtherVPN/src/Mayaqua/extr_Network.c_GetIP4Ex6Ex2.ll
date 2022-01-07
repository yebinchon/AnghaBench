; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP4Ex6Ex2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetIP4Ex6Ex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, i64, i32 }

@TIMEOUT_GETIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"GetIP4Ex6Ex2: Worker thread quota exceeded: max=%u current=%u\0A\00", align 1
@getip_thread_counter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"GetIP4Ex6Ex2: Waited for %u msecs to create a worker thread.\0A\00", align 1
@GetIP4Ex6ExThread = common dso_local global i32 0, align 4
@FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE = common dso_local global i64 0, align 8
@FLETS_DETECT_TYPE_EAST_NGN_PRIVATE = common dso_local global i64 0, align 8
@FLETS_DETECT_TYPE_WEST_NGN_PRIVATE = common dso_local global i64 0, align 8
@FLETS_NGN_EAST_DNS_PROXY_HOSTNAME = common dso_local global i32* null, align 8
@FLETS_NGN_WEST_DNS_PROXY_HOSTNAME = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetIP4Ex6Ex2(i32* %0, i8* %1, i64 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca [260 x i8], align 16
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %6
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %6
  store i32 0, i32* %7, align 4
  br label %261

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @TIMEOUT_GETIP, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %42
  %48 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %49 = call i32 @Zero(i8* %48, i32 260)
  %50 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @StrCpy(i8* %50, i32 260, i8* %51)
  %53 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %54 = call i64 @SearchStrEx(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  store i64 %54, i64* %24, align 8
  %55 = load i64, i64* %24, align 8
  %56 = load i64, i64* @INFINITE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i64, i64* %24, align 8
  %60 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 %59
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %66 = call i64 @StrToIP(i32* %26, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = call i32 @IsZeroIp(i32* %26)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = call i64 @IsIP4(i32* %26)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @Copy(i32* %75, i32* %26, i32 4)
  store i32 1, i32* %7, align 4
  br label %261

77:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %261

78:                                               ; preds = %68, %64
  br label %94

79:                                               ; preds = %61
  %80 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %81 = call i64 @StrToIP(i32* %27, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = call i32 @IsZeroIp(i32* %27)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = call i64 @IsIP6(i32* %27)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @Copy(i32* %90, i32* %27, i32 4)
  store i32 1, i32* %7, align 4
  br label %261

92:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %261

93:                                               ; preds = %83, %79
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = call i64 (...) @IsUseDnsProxy()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* %22, align 4
  br label %104

104:                                              ; preds = %103, %100
  br label %105

105:                                              ; preds = %104, %97
  br label %106

106:                                              ; preds = %105, %94
  %107 = call i64 (...) @Tick64()
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %10, align 8
  %110 = add nsw i64 %108, %109
  store i64 %110, i64* %18, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %25, align 4
  br label %111

111:                                              ; preds = %106, %130
  %112 = call i64 (...) @Tick64()
  store i64 %112, i64* %28, align 8
  %113 = call i64 (...) @GetGetIpThreadMaxNum()
  %114 = call i64 (...) @GetCurrentGetIpThreadNum()
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %140

117:                                              ; preds = %111
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %18, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 1, i32* %25, align 4
  br label %140

122:                                              ; preds = %117
  %123 = load i32*, i32** %12, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 1, i32* %25, align 4
  br label %140

130:                                              ; preds = %125, %122
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* %28, align 8
  %133 = sub nsw i64 %131, %132
  store i64 %133, i64* %29, align 8
  %134 = load i64, i64* %29, align 8
  %135 = call i64 @MIN(i64 %134, i32 100)
  store i64 %135, i64* %30, align 8
  %136 = load i64, i64* %30, align 8
  %137 = call i32 @SleepThread(i64 %136)
  %138 = load i64, i64* %21, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %21, align 8
  br label %111

140:                                              ; preds = %129, %121, %116
  %141 = call i64 (...) @Tick64()
  store i64 %141, i64* %20, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* %17, align 8
  %144 = sub nsw i64 %142, %143
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %21, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i64 0, i64* %19, align 8
  br label %148

148:                                              ; preds = %147, %140
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 1, i32* %25, align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32, i32* %25, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %158 = call i64 @QueryDnsCache(i32* %31, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  store i32 1, i32* %16, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @Copy(i32* %161, i32* %31, i32 4)
  br label %163

163:                                              ; preds = %160, %156
  %164 = call i64 (...) @GetGetIpThreadMaxNum()
  %165 = call i64 (...) @GetCurrentGetIpThreadNum()
  %166 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %164, i64 %165)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %7, align 4
  br label %261

168:                                              ; preds = %153
  %169 = load i32, i32* @getip_thread_counter, align 4
  %170 = call i32 @Inc(i32 %169)
  %171 = load i64, i64* %19, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i64, i64* %19, align 8
  %175 = call i32 (i8*, i64, ...) @Debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %10, align 8
  %179 = sub nsw i64 %178, %177
  store i64 %179, i64* %10, align 8
  %180 = call %struct.TYPE_5__* @ZeroMalloc(i32 40)
  store %struct.TYPE_5__* %180, %struct.TYPE_5__** %14, align 8
  %181 = call i32 (...) @NewRef()
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %188 = call i32 @StrCpy(i8* %186, i32 8, i8* %187)
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 4
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i32 0, i32* %196, align 4
  %197 = load i32, i32* @GetIP4Ex6ExThread, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %199 = call i32* @NewThread(i32 %197, %struct.TYPE_5__* %198)
  store i32* %199, i32** %15, align 8
  %200 = load i32*, i32** %15, align 8
  %201 = call i32 @WaitThreadInit(i32* %200)
  %202 = load i32*, i32** %12, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %176
  %205 = load i32*, i32** %15, align 8
  %206 = load i64, i64* %10, align 8
  %207 = call i64 @WaitThread(i32* %205, i64 %206)
  br label %237

208:                                              ; preds = %176
  %209 = call i64 (...) @Tick64()
  store i64 %209, i64* %17, align 8
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* %10, align 8
  %212 = add nsw i64 %210, %211
  store i64 %212, i64* %18, align 8
  br label %213

213:                                              ; preds = %208, %235
  %214 = call i64 (...) @Tick64()
  store i64 %214, i64* %32, align 8
  %215 = load i32*, i32** %12, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %236

219:                                              ; preds = %213
  %220 = load i64, i64* %32, align 8
  %221 = load i64, i64* %18, align 8
  %222 = icmp sge i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %236

224:                                              ; preds = %219
  %225 = load i64, i64* %18, align 8
  %226 = load i64, i64* %32, align 8
  %227 = sub nsw i64 %225, %226
  store i64 %227, i64* %33, align 8
  %228 = load i64, i64* %33, align 8
  %229 = call i64 @MIN(i64 %228, i32 100)
  store i64 %229, i64* %34, align 8
  %230 = load i32*, i32** %15, align 8
  %231 = load i64, i64* %34, align 8
  %232 = call i64 @WaitThread(i32* %230, i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %224
  br label %236

235:                                              ; preds = %224
  br label %213

236:                                              ; preds = %234, %223, %218
  br label %237

237:                                              ; preds = %236, %204
  %238 = load i32*, i32** %15, align 8
  %239 = call i32 @ReleaseThread(i32* %238)
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  store i32 1, i32* %16, align 4
  %245 = load i32*, i32** %8, align 8
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 3
  %248 = call i32 @Copy(i32* %245, i32* %247, i32 4)
  br label %257

249:                                              ; preds = %237
  %250 = getelementptr inbounds [260 x i8], [260 x i8]* %23, i64 0, i64 0
  %251 = call i64 @QueryDnsCache(i32* %35, i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  store i32 1, i32* %16, align 4
  %254 = load i32*, i32** %8, align 8
  %255 = call i32 @Copy(i32* %254, i32* %35, i32 4)
  br label %256

256:                                              ; preds = %253, %249
  br label %257

257:                                              ; preds = %256, %244
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %259 = call i32 @ReleaseGetIPThreadParam(%struct.TYPE_5__* %258)
  %260 = load i32, i32* %16, align 4
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %257, %163, %92, %89, %77, %74, %41
  %262 = load i32, i32* %7, align 4
  ret i32 %262
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local i64 @StrToIP(i32*, i8*) #1

declare dso_local i32 @IsZeroIp(i32*) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i64 @IsUseDnsProxy(...) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i64 @GetGetIpThreadMaxNum(...) #1

declare dso_local i64 @GetCurrentGetIpThreadNum(...) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @SleepThread(i64) #1

declare dso_local i64 @QueryDnsCache(i32*, i8*) #1

declare dso_local i32 @Debug(i8*, i64, ...) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i64 @WaitThread(i32*, i64) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @ReleaseGetIPThreadParam(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
