; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoLoadRegistry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoLoadRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@ctx = common dso_local global %struct.TYPE_11__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@NEO_MAC_ADDRESS_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"MatchingDeviceId\00", align 1
@NdisParameterString = common dso_local global i64 0, align 8
@MAX_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"MaxSpeed\00", align 1
@NdisParameterInteger = common dso_local global i64 0, align 8
@NEO_MAX_SPEED_DEFAULT = common dso_local global i64 0, align 8
@max_speed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"KeepLink\00", align 1
@keep_link = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NeoLoadRegistry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NdisOpenConfiguration(i32* %3, i32* %5, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @NG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %250

22:                                               ; preds = %0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @NdisReadNetworkAddress(i32* %3, i8** %2, i64* %4, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @NG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @NdisCloseConfiguration(i32 %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %1, align 4
  br label %250

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @NEO_MAC_ADDRESS_SIZE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NdisCloseConfiguration(i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %1, align 4
  br label %250

40:                                               ; preds = %32
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = load i64, i64* @NEO_MAC_ADDRESS_SIZE, align 8
  %46 = call i32 @NeoCopy(i32* %43, i8* %44, i64 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %40
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %132

60:                                               ; preds = %53
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %132

67:                                               ; preds = %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %67
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %132

88:                                               ; preds = %81
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %90 = ptrtoint %struct.TYPE_11__* %89 to i32
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %12, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 173, i32* %99, align 4
  %100 = bitcast i64* %12 to i8**
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32 %103, i32* %107, align 4
  %108 = bitcast i64* %12 to i8**
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  store i32 %111, i32* %115, align 4
  %116 = bitcast i64* %12 to i8**
  %117 = getelementptr inbounds i8*, i8** %116, i64 2
  %118 = load i8*, i8** %117, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  store i32 %119, i32* %123, align 4
  %124 = bitcast i64* %12 to i8**
  %125 = getelementptr inbounds i8*, i8** %124, i64 3
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %88, %81, %74, %67, %60, %53, %40
  %133 = call i32* @NewUnicode(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %133, i32** %7, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @GetUnicode(i32* %135)
  %137 = load i64, i64* @NdisParameterString, align 8
  %138 = call i32 @NdisReadConfiguration(i32* %3, %struct.TYPE_9__** %6, i32 %134, i32 %136, i64 %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @FreeUnicode(i32* %139)
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @NG(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @NdisCloseConfiguration(i32 %145)
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %1, align 4
  br label %250

148:                                              ; preds = %132
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NdisParameterString, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @NdisCloseConfiguration(i32 %155)
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %1, align 4
  br label %250

158:                                              ; preds = %148
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  store i32* %161, i32** %9, align 8
  %162 = call i32 @NeoZero(%struct.TYPE_10__* %8, i32 16)
  %163 = load i64, i64* @MAX_SIZE, align 8
  %164 = sub nsw i64 %163, 1
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* @MAX_SIZE, align 8
  %167 = call i32 @NeoZeroMalloc(i64 %166)
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @NdisUnicodeStringToAnsiString(%struct.TYPE_10__* %8, i32* %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @strcpy(i32 %173, i32 %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @strcpy(i32 %179, i32 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ctx, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @_strupr(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @NeoFree(i32 %189)
  %191 = call i32* @NewUnicode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* %191, i32** %7, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @GetUnicode(i32* %193)
  %195 = load i64, i64* @NdisParameterInteger, align 8
  %196 = call i32 @NdisReadConfiguration(i32* %3, %struct.TYPE_9__** %6, i32 %192, i32 %194, i64 %195)
  %197 = load i32*, i32** %7, align 8
  %198 = call i32 @FreeUnicode(i32* %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i64 @NG(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %158
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @NdisParameterInteger, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202, %158
  %209 = load i64, i64* @NEO_MAX_SPEED_DEFAULT, align 8
  store i64 %209, i64* %10, align 8
  br label %217

210:                                              ; preds = %202
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %214, 10000
  %216 = sext i32 %215 to i64
  store i64 %216, i64* %10, align 8
  br label %217

217:                                              ; preds = %210, %208
  %218 = load i64, i64* %10, align 8
  store i64 %218, i64* @max_speed, align 8
  %219 = call i32* @NewUnicode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %219, i32** %7, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 @GetUnicode(i32* %221)
  %223 = load i64, i64* @NdisParameterInteger, align 8
  %224 = call i32 @NdisReadConfiguration(i32* %3, %struct.TYPE_9__** %6, i32 %220, i32 %222, i64 %223)
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @FreeUnicode(i32* %225)
  %227 = load i32, i32* %3, align 4
  %228 = call i64 @NG(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %217
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @NdisParameterInteger, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %230, %217
  store i32 0, i32* %11, align 4
  br label %245

237:                                              ; preds = %230
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 0
  %243 = zext i1 %242 to i64
  %244 = select i1 %242, i32 0, i32 1
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %237, %236
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* @keep_link, align 4
  %247 = load i32, i32* %5, align 4
  %248 = call i32 @NdisCloseConfiguration(i32 %247)
  %249 = load i32, i32* @TRUE, align 4
  store i32 %249, i32* %1, align 4
  br label %250

250:                                              ; preds = %245, %154, %144, %36, %28, %20
  %251 = load i32, i32* %1, align 4
  ret i32 %251
}

declare dso_local i32 @NdisOpenConfiguration(i32*, i32*, i32) #1

declare dso_local i64 @NG(i32) #1

declare dso_local i32 @NdisReadNetworkAddress(i32*, i8**, i64*, i32) #1

declare dso_local i32 @NdisCloseConfiguration(i32) #1

declare dso_local i32 @NeoCopy(i32*, i8*, i64) #1

declare dso_local i32* @NewUnicode(i8*) #1

declare dso_local i32 @NdisReadConfiguration(i32*, %struct.TYPE_9__**, i32, i32, i64) #1

declare dso_local i32 @GetUnicode(i32*) #1

declare dso_local i32 @FreeUnicode(i32*) #1

declare dso_local i32 @NeoZero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @NeoZeroMalloc(i64) #1

declare dso_local i32 @NdisUnicodeStringToAnsiString(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @_strupr(i32) #1

declare dso_local i32 @NeoFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
