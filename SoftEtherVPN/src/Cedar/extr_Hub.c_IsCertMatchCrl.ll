; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsCertMatchCrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IsCertMatchCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32* }

@MD5_SIZE = common dso_local global i32 0, align 4
@SHA1_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsCertMatchCrl(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 1, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %260

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @CompareXSerial(i32* %32, i32* %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %24
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %29
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IsZero(i32 %43, i32 4)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, i32* @MD5_SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %7, align 8
  %50 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = call i32 @GetXDigest(%struct.TYPE_7__* %51, i32* %50, i32 0)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MD5_SIZE, align 4
  %57 = call i64 @Cmp(i32* %50, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  br label %62

62:                                               ; preds = %60, %40
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @IsZero(i32 %65, i32 4)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load i32, i32* @SHA1_SIZE, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %9, align 8
  %72 = alloca i32, i64 %70, align 16
  store i64 %70, i64* %10, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = call i32 @GetXDigest(%struct.TYPE_7__* %73, i32* %72, i32 1)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SHA1_SIZE, align 4
  %79 = call i64 @Cmp(i32* %72, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %68
  %83 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %84

84:                                               ; preds = %82, %62
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = icmp ne %struct.TYPE_8__* %87, null
  br i1 %88, label %89, label %258

89:                                               ; preds = %84
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %11, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %12, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %122

100:                                              ; preds = %89
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @UniIsEmptyStr(i32* %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @UniSoftStrCmp(i32* %114, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111, %106
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %120, %111
  br label %122

122:                                              ; preds = %121, %100, %89
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %149

127:                                              ; preds = %122
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @UniIsEmptyStr(i32* %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %147, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @UniSoftStrCmp(i32* %141, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138, %133
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %148, %127, %122
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %176

154:                                              ; preds = %149
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @UniIsEmptyStr(i32* %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = call i64 @UniSoftStrCmp(i32* %168, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %165, %160
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %165
  br label %176

176:                                              ; preds = %175, %154, %149
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %203

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @UniIsEmptyStr(i32* %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %181
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = icmp eq i32* %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %187
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = call i64 @UniSoftStrCmp(i32* %195, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %192, %187
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %192
  br label %203

203:                                              ; preds = %202, %181, %176
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %230

208:                                              ; preds = %203
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @UniIsEmptyStr(i32* %211)
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %228, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @UniSoftStrCmp(i32* %222, i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219, %214
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %228, %219
  br label %230

230:                                              ; preds = %229, %208, %203
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %257

235:                                              ; preds = %230
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @UniIsEmptyStr(i32* %238)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %235
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %255, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = call i64 @UniSoftStrCmp(i32* %249, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %246, %241
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %255, %246
  br label %257

257:                                              ; preds = %256, %235, %230
  br label %258

258:                                              ; preds = %257, %84
  %259 = load i32, i32* %6, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %258, %18
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32 @CompareXSerial(i32*, i32*) #1

declare dso_local i32 @IsZero(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetXDigest(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @Cmp(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UniIsEmptyStr(i32*) #1

declare dso_local i64 @UniSoftStrCmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
