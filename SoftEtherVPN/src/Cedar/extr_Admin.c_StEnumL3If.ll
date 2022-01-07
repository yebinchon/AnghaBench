; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumL3If.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumL3If.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumL3If(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %27 = trunc i64 %23 to i32
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @StrCpy(i8* %25, i32 %27, i8* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = call i32 @FreeRpcEnumL3If(%struct.TYPE_17__* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = call i32 @Zero(%struct.TYPE_17__* %34, i32 24)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @StrCpy(i8* %38, i32 8, i8* %25)
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.TYPE_18__* @L3GetSw(i32* %40, i8* %43)
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = icmp eq %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i64, i64* @ERR_LAYER3_SW_NOT_FOUND, align 8
  store i64 %48, i64* %7, align 8
  br label %121

49:                                               ; preds = %2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @Lock(i32 %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LIST_NUM(i32 %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 24, %63
  %65 = trunc i64 %64 to i32
  %66 = call %struct.TYPE_16__* @ZeroMalloc(i32 %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %68, align 8
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %111, %49
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %70, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %69
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %11, align 8
  %81 = call %struct.TYPE_19__* @LIST_DATA(i32 %79, i64 %80)
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %12, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %85
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %13, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @StrCpy(i8* %89, i32 8, i8* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @StrCpy(i8* %96, i32 8, i8* %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %76
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %69

114:                                              ; preds = %69
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @Unlock(i32 %117)
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %120 = call i32 @ReleaseL3Sw(%struct.TYPE_18__* %119)
  br label %121

121:                                              ; preds = %114, %47
  %122 = load i64, i64* %7, align 8
  %123 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %123)
  ret i64 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumL3If(%struct.TYPE_17__*) #2

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #2

declare dso_local %struct.TYPE_18__* @L3GetSw(i32*, i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_16__* @ZeroMalloc(i32) #2

declare dso_local %struct.TYPE_19__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseL3Sw(%struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
