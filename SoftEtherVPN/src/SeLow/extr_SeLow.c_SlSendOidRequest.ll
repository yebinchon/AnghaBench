; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlSendOidRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_SlSendOidRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, i64, i8* }
%struct.TYPE_13__ = type { i64, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@NDIS_OBJECT_TYPE_OID_REQUEST = common dso_local global i32 0, align 4
@NDIS_OID_REQUEST_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_OID_REQUEST_REVISION_1 = common dso_local global i32 0, align 4
@NdisRequestQueryInformation = common dso_local global i32 0, align 4
@NdisRequestSetInformation = common dso_local global i32 0, align 4
@NDIS_STATUS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SlSendOidRequest(%struct.TYPE_16__* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %5
  br label %149

23:                                               ; preds = %19
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %149

28:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  %29 = call %struct.TYPE_17__* @SlZeroMalloc(i32 64)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %11, align 8
  %30 = load i32, i32* @NDIS_OBJECT_TYPE_OID_REQUEST, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @NDIS_OID_REQUEST_REVISION_1, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @NDIS_SIZEOF_OID_REQUEST_REVISION_1, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %28
  %45 = load i32, i32* @NdisRequestQueryInformation, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  store i8* %48, i8** %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  store i8* %53, i8** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i64 %58, i64* %62, align 8
  br label %84

63:                                               ; preds = %28
  %64 = load i32, i32* @NdisRequestSetInformation, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call %struct.TYPE_17__* @SlClone(i8* %72, i64 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %78, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %63, %44
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @SlLock(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = call i32 @InterlockedIncrement(i32* %100)
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %93, %84
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @SlUnlock(i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %102
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %114 = call i64 @NdisOidRequest(i32* %112, %struct.TYPE_17__* %113)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @NDIS_STATUS_PENDING, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %109
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = call i32 @InterlockedDecrement(i32* %120)
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = call i32 @SlFree(%struct.TYPE_17__* %129)
  br label %131

131:                                              ; preds = %124, %118
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %133 = call i32 @SlFree(%struct.TYPE_17__* %132)
  br label %134

134:                                              ; preds = %131, %109
  br label %148

135:                                              ; preds = %102
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i32 @SlFree(%struct.TYPE_17__* %143)
  br label %145

145:                                              ; preds = %138, %135
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %147 = call i32 @SlFree(%struct.TYPE_17__* %146)
  br label %148

148:                                              ; preds = %145, %134
  br label %149

149:                                              ; preds = %22, %148, %23
  ret void
}

declare dso_local %struct.TYPE_17__* @SlZeroMalloc(i32) #1

declare dso_local %struct.TYPE_17__* @SlClone(i8*, i64) #1

declare dso_local i32 @SlLock(i32) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @SlUnlock(i32) #1

declare dso_local i64 @NdisOidRequest(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @SlFree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
