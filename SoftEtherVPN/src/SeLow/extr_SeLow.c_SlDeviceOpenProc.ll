; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlDeviceOpenProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlDeviceOpenProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__*, i32, i32, i64 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i32, i8, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32 }

@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SL_EVENT_NAME_SIZE = common dso_local global i32 0, align 4
@sl = common dso_local global %struct.TYPE_21__* null, align 8
@SL_EVENT_NAME = common dso_local global i8* null, align 8
@SL_EVENT_NAME_WIN32 = common dso_local global i8* null, align 8
@NDIS_OBJECT_TYPE_DEFAULT = common dso_local global i32 0, align 4
@NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_PROTOCOL_ID_DEFAULT = common dso_local global i32 0, align 4
@SL_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@NDIS_PACKET_TYPE_PROMISCUOUS = common dso_local global i64 0, align 8
@OID_GEN_CURRENT_PACKET_FILTER = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SlDeviceOpenProc(%struct.TYPE_31__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_28__, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_27__**
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %5, align 8
  %25 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %27 = call %struct.TYPE_30__* @IoGetCurrentIrpStackLocation(%struct.TYPE_29__* %26)
  store %struct.TYPE_30__* %27, %struct.TYPE_30__** %7, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %33, i32* %6, align 4
  br label %203

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i64* null, i64** %9, align 8
  %35 = load i32, i32* @SL_EVENT_NAME_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %11, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %39 = load i32, i32* @SL_EVENT_NAME_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %42 = call i32 @KeQueryPerformanceCounter(i32* %16)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sl, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = call i32 @InterlockedIncrement(i64* %44)
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %47 = ptrtoint %struct.TYPE_31__* %46 to i32
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sl, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %47, %52
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i8*, i8** @SL_EVENT_NAME, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 32
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sl, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @sprintf(i8* %38, i8* %56, i64 %58, i64 %65)
  %67 = load i8*, i8** @SL_EVENT_NAME_WIN32, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %10, align 4
  %71 = ashr i32 %70, 32
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sl, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = call i32 @sprintf(i8* %41, i8* %67, i64 %69, i64 %76)
  %78 = call i32* @SlNewEvent(i8* %38)
  store i32* %78, i32** %14, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @SlLock(i32 %81)
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SlLockList(i32 %85)
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %170

91:                                               ; preds = %34
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = icmp ne %struct.TYPE_22__* %94, null
  br i1 %95, label %96, label %170

96:                                               ; preds = %91
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %170

103:                                              ; preds = %96
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %170

110:                                              ; preds = %103
  %111 = call %struct.TYPE_26__* @SlZeroMalloc(i32 48)
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %17, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 6
  store %struct.TYPE_27__* %112, %struct.TYPE_27__** %114, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 5
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %119, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 4
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %129, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %134 = call i32 @SlAdd(i32 %132, %struct.TYPE_26__* %133)
  %135 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %135, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 3
  store i32* %136, i32** %138, align 8
  store i32* null, i32** %14, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @strcpy(i32 %141, i8* %41)
  %143 = call i32 (...) @SlNewLock()
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = call i32 @SlZero(%struct.TYPE_28__* %18, i32 32)
  %147 = load i32, i32* @NDIS_OBJECT_TYPE_DEFAULT, align 4
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1, align 4
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 5
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1, align 4
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @NDIS_PROTOCOL_ID_DEFAULT, align 4
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 4
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  store i32 1, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 1
  store i32 80, i32* %159, align 4
  %160 = load i32, i32* @SL_MAX_PACKET_SIZE, align 4
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 3
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 2
  store i8 72, i8* %162, align 4
  %163 = call i32 @NdisAllocateNetBufferListPool(i32* null, %struct.TYPE_28__* %18)
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  store i64* %169, i64** %9, align 8
  br label %170

170:                                              ; preds = %110, %103, %96, %91, %34
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @SlUnlockList(i32 %173)
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @SlUnlock(i32 %177)
  %179 = load i32*, i32** %14, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %170
  %182 = load i32*, i32** %14, align 8
  %183 = call i32 @SlFreeEvent(i32* %182)
  br label %184

184:                                              ; preds = %181, %170
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load i64, i64* @NDIS_PACKET_TYPE_PROMISCUOUS, align 8
  store i64 %188, i64* %19, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %190, align 8
  %192 = load i32, i32* @OID_GEN_CURRENT_PACKET_FILTER, align 4
  %193 = call i32 @SlSendOidRequest(%struct.TYPE_22__* %191, i32 1, i32 %192, i64* %19, i32 8)
  br label %194

194:                                              ; preds = %198, %187
  %195 = load i64*, i64** %9, align 8
  %196 = load volatile i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 @SlSleep(i32 50)
  br label %194

200:                                              ; preds = %194
  br label %201

201:                                              ; preds = %200, %184
  %202 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %202)
  br label %203

203:                                              ; preds = %201, %32
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 4
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %209 = load i32, i32* @IO_NO_INCREMENT, align 4
  %210 = call i32 @IoCompleteRequest(%struct.TYPE_29__* %208, i32 %209)
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local %struct.TYPE_30__* @IoGetCurrentIrpStackLocation(%struct.TYPE_29__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @KeQueryPerformanceCounter(i32*) #1

declare dso_local i32 @InterlockedIncrement(i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

declare dso_local i32* @SlNewEvent(i8*) #1

declare dso_local i32 @SlLock(i32) #1

declare dso_local i32 @SlLockList(i32) #1

declare dso_local %struct.TYPE_26__* @SlZeroMalloc(i32) #1

declare dso_local i32 @SlAdd(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @SlNewLock(...) #1

declare dso_local i32 @SlZero(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @NdisAllocateNetBufferListPool(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @SlUnlockList(i32) #1

declare dso_local i32 @SlUnlock(i32) #1

declare dso_local i32 @SlFreeEvent(i32*) #1

declare dso_local i32 @SlSendOidRequest(%struct.TYPE_22__*, i32, i32, i64*, i32) #1

declare dso_local i32 @SlSleep(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
