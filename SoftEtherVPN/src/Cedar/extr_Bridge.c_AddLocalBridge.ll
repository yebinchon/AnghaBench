; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_AddLocalBridge.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_AddLocalBridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }

@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddLocalBridge(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %8
  br label %262

32:                                               ; preds = %28
  %33 = call %struct.TYPE_15__* (...) @GetOsInfo()
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @OS_IS_UNIX(i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @LockList(i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LockList(i32 %46)
  store i32 0, i32* %20, align 4
  store i64 0, i64* %17, align 8
  br label %48

48:                                               ; preds = %85, %39
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @LIST_NUM(i32 %52)
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %88

55:                                               ; preds = %48
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %17, align 8
  %60 = call i8* @LIST_DATA(i32 %58, i64 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %21, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @StrCmpi(i8* %64, i8* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i64 @StrCmpi(i8* %71, i8* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %20, align 4
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %82, %68
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %17, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %17, align 8
  br label %48

88:                                               ; preds = %48
  %89 = load i32, i32* %20, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %179

91:                                               ; preds = %88
  %92 = call %struct.TYPE_12__* @ZeroMalloc(i32 48)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %19, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @StrCpy(i8* %95, i32 8, i8* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @StrCpy(i8* %100, i32 8, i8* %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %91
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i8*, i8** %15, align 8
  %126 = call i32 @IsZero(i8* %125, i32 6)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @Copy(i32 %131, i8* %132, i32 6)
  br label %139

134:                                              ; preds = %124, %121
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @GenMacAddress(i32 %137)
  br label %139

139:                                              ; preds = %134, %128
  br label %140

140:                                              ; preds = %139, %91
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %145 = call i32 @Add(i32 %143, %struct.TYPE_12__* %144)
  store i64 0, i64* %17, align 8
  br label %146

146:                                              ; preds = %175, %140
  %147 = load i64, i64* %17, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @LIST_NUM(i32 %150)
  %152 = icmp slt i64 %147, %151
  br i1 %152, label %153, label %178

153:                                              ; preds = %146
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %17, align 8
  %158 = call i8* @LIST_DATA(i32 %156, i64 %157)
  %159 = bitcast i8* %158 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %22, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @StrCmpi(i8* %162, i8* %165)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %153
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %18, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @AddRef(i32 %172)
  br label %178

174:                                              ; preds = %153
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %17, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %17, align 8
  br label %146

178:                                              ; preds = %168, %146
  br label %179

179:                                              ; preds = %178, %88
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @UnlockList(i32 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @UnlockList(i32 %186)
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %189 = icmp ne %struct.TYPE_13__* %188, null
  br i1 %189, label %190, label %259

190:                                              ; preds = %179
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %192 = icmp ne %struct.TYPE_12__* %191, null
  br i1 %192, label %193, label %259

193:                                              ; preds = %190
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %259

199:                                              ; preds = %193
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @Lock(i32 %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %254

208:                                              ; preds = %199
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @LockList(i32 %211)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %217 = call i64 @IsInList(i32 %215, %struct.TYPE_12__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %208
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 7
  %222 = load i32*, i32** %221, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %248

224:                                              ; preds = %219
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %245 = call i32* @BrNewBridge(%struct.TYPE_13__* %225, i8* %228, i32* null, i32 %231, i32 %234, i32 %237, i32 %240, i32 %243, %struct.TYPE_12__* %244)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 7
  store i32* %245, i32** %247, align 8
  br label %248

248:                                              ; preds = %224, %219
  br label %249

249:                                              ; preds = %248, %208
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @UnlockList(i32 %252)
  br label %254

254:                                              ; preds = %249, %199
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @Unlock(i32 %257)
  br label %259

259:                                              ; preds = %254, %193, %190, %179
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %261 = call i32 @ReleaseHub(%struct.TYPE_13__* %260)
  br label %262

262:                                              ; preds = %259, %31
  ret void
}

declare dso_local i32 @OS_IS_UNIX(i32) #1

declare dso_local %struct.TYPE_15__* @GetOsInfo(...) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @IsZero(i8*, i32) #1

declare dso_local i32 @Copy(i32, i8*, i32) #1

declare dso_local i32 @GenMacAddress(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i64 @IsInList(i32, %struct.TYPE_12__*) #1

declare dso_local i32* @BrNewBridge(%struct.TYPE_13__*, i8*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
