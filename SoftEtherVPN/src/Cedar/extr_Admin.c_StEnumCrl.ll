; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumCrl.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumCrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_15__ = type { i8*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@CHECK_RIGHT = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumCrl(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @CHECK_RIGHT, align 4
  %29 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %36, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %140

37:                                               ; preds = %2
  %38 = trunc i64 %25 to i32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @StrCpy(i8* %27, i32 %38, i8* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call i32 @FreeRpcEnumCrl(%struct.TYPE_15__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = call i32 @Zero(%struct.TYPE_15__* %45, i32 24)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @StrCpy(i8* %49, i32 8, i8* %27)
  %51 = load i32*, i32** %7, align 8
  %52 = call %struct.TYPE_16__* @GetHub(i32* %51, i8* %27)
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %8, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = icmp eq %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %56, i64* %9, align 8
  br label %138

57:                                               ; preds = %37
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = icmp eq %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* @ERR_NOT_SUPPORTED, align 8
  store i64 %63, i64* %9, align 8
  br label %135

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @LockList(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LIST_NUM(i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  %84 = call %struct.TYPE_18__* @ZeroMalloc(i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store %struct.TYPE_18__* %84, %struct.TYPE_18__** %86, align 8
  store i64 0, i64* %13, align 8
  br label %87

87:                                               ; preds = %125, %64
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @LIST_NUM(i32 %93)
  %95 = icmp ult i64 %88, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %87
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %13, align 8
  %103 = call i32* @LIST_DATA(i32 %101, i64 %102)
  store i32* %103, i32** %14, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32* @GenerateCrlStr(i32* %104)
  store i32* %105, i32** %15, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i64, i64* %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @UniStrCpy(i32 %112, i32 4, i32* %113)
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @Free(i32* %115)
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @POINTER_TO_KEY(i32* %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %96
  %126 = load i64, i64* %13, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %13, align 8
  br label %87

128:                                              ; preds = %87
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @UnlockList(i32 %133)
  br label %135

135:                                              ; preds = %128, %62
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %137 = call i32 @ReleaseHub(%struct.TYPE_16__* %136)
  br label %138

138:                                              ; preds = %135, %55
  %139 = load i64, i64* %9, align 8
  store i64 %139, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %138, %35
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i64, i64* %3, align 8
  ret i64 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumCrl(%struct.TYPE_15__*) #2

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #2

declare dso_local %struct.TYPE_16__* @GetHub(i32*, i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i64 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #2

declare dso_local i32* @LIST_DATA(i32, i64) #2

declare dso_local i32* @GenerateCrlStr(i32*) #2

declare dso_local i32 @UniStrCpy(i32, i32, i32*) #2

declare dso_local i32 @Free(i32*) #2

declare dso_local i32 @POINTER_TO_KEY(i32*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @ReleaseHub(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
