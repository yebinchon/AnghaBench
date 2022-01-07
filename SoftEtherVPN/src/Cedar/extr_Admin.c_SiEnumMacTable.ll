; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumMacTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumMacTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SiEnumMacTable(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__**, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = icmp eq %struct.TYPE_15__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %21 = icmp eq %struct.TYPE_17__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %16, %3
  %23 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %23, i64* %4, align 8
  br label %136

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @LockHubList(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.TYPE_19__* @GetHub(i32* %30, i8* %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %10, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @UnlockHubList(i32* %33)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %36 = icmp eq %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %38, i64* %4, align 8
  br label %136

39:                                               ; preds = %24
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @StrCpy(i32 %42, i32 4, i8* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LockHashList(i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = call i64 @HashListToArray(i32 %51, i32* %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_18__**
  store %struct.TYPE_18__** %55, %struct.TYPE_18__*** %11, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 40, %59
  %61 = trunc i64 %60 to i32
  %62 = call %struct.TYPE_16__* @ZeroMalloc(i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %64, align 8
  store i64 0, i64* %9, align 8
  br label %65

65:                                               ; preds = %123, %39
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %65
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 %76
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %12, align 8
  %78 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %78, i64 %79
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %13, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %83 = call i32 @POINTER_TO_KEY(%struct.TYPE_18__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @StrCpy(i32 %88, i32 4, i8* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Copy(i32 %97, i32 %100, i32 4)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @TickToTime(i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @TickToTime(i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @GetMachineName(i32 %121, i32 4)
  br label %123

123:                                              ; preds = %72
  %124 = load i64, i64* %9, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %65

126:                                              ; preds = %65
  %127 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %11, align 8
  %128 = call i32 @Free(%struct.TYPE_18__** %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @UnlockHashList(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %134 = call i32 @ReleaseHub(%struct.TYPE_19__* %133)
  %135 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %126, %37, %22
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_19__* @GetHub(i32*, i8*) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @LockHashList(i32) #1

declare dso_local i64 @HashListToArray(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @ZeroMalloc(i32) #1

declare dso_local i32 @POINTER_TO_KEY(%struct.TYPE_18__*) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i8* @TickToTime(i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_18__**) #1

declare dso_local i32 @UnlockHashList(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
