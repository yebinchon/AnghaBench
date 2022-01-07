; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumL3Table.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumL3Table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@MAX_HUBNAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumL3Table(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @MAX_HUBNAME_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IsEmptyStr(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %34, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %133

35:                                               ; preds = %2
  %36 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %37 = trunc i64 %25 to i32
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @StrCpy(i8* %27, i32 %37, i8* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = call i32 @FreeRpcEnumL3Table(%struct.TYPE_17__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = call i32 @Zero(%struct.TYPE_17__* %44, i32 24)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @StrCpy(i8* %48, i32 8, i8* %27)
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.TYPE_19__* @L3GetSw(i32* %50, i8* %53)
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %9, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = icmp eq %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %35
  %58 = load i64, i64* @ERR_LAYER3_SW_NOT_FOUND, align 8
  store i64 %58, i64* %8, align 8
  br label %131

59:                                               ; preds = %35
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @Lock(i32 %62)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LIST_NUM(i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 24, %73
  %75 = trunc i64 %74 to i32
  %76 = call %struct.TYPE_16__* @ZeroMalloc(i32 %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %121, %59
  %80 = load i64, i64* %13, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %80, %84
  br i1 %85, label %86, label %124

86:                                               ; preds = %79
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %13, align 8
  %91 = call %struct.TYPE_18__* @LIST_DATA(i32 %89, i64 %90)
  store %struct.TYPE_18__* %91, %struct.TYPE_18__** %14, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i64 %95
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %15, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @StrCpy(i8* %99, i32 8, i8* %27)
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %86
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %79

124:                                              ; preds = %79
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @Unlock(i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %130 = call i32 @ReleaseL3Sw(%struct.TYPE_19__* %129)
  br label %131

131:                                              ; preds = %124, %57
  %132 = load i64, i64* %8, align 8
  store i64 %132, i64* %3, align 8
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %131, %33
  %134 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @FreeRpcEnumL3Table(%struct.TYPE_17__*) #2

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #2

declare dso_local %struct.TYPE_19__* @L3GetSw(i32*, i8*) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_16__* @ZeroMalloc(i32) #2

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseL3Sw(%struct.TYPE_19__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
