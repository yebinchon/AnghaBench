; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumConnection.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StEnumConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StEnumConnection(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = call i32 @FreeRpcEnumConnection(%struct.TYPE_17__* %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = call i32 @Zero(%struct.TYPE_17__* %20, i32 16)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LockList(i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LIST_NUM(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_16__* @ZeroMalloc(i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %40, align 8
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %109, %2
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %41
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %52
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %8, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call %struct.TYPE_18__* @LIST_DATA(i32 %56, i64 %57)
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %9, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Lock(i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  store %struct.TYPE_14__* %65, %struct.TYPE_14__** %10, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = icmp ne %struct.TYPE_14__* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %48
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = call i32 @IPToUINT(i32* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @StrCpy(i32 %81, i32 4, i32 %84)
  br label %86

86:                                               ; preds = %68, %48
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @StrCpy(i32 %89, i32 4, i32 %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @TickToTime(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @Unlock(i32 %107)
  br label %109

109:                                              ; preds = %86
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %7, align 8
  br label %41

112:                                              ; preds = %41
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @UnlockList(i32 %115)
  %117 = load i64, i64* @ERR_NO_ERROR, align 8
  ret i64 %117
}

declare dso_local i32 @FreeRpcEnumConnection(%struct.TYPE_17__*) #1

declare dso_local i32 @Zero(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_16__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @TickToTime(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
