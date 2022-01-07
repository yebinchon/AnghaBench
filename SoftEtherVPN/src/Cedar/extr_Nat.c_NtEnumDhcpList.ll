; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtEnumDhcpList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtEnumDhcpList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@ERR_OFFLINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NtEnumDhcpList(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %10 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %10, i64* %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @Lock(i32 %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %2
  %26 = load i64, i64* @ERR_OFFLINE, align 8
  store i64 %26, i64* %5, align 8
  br label %130

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = call i32 @LockVirtual(%struct.TYPE_14__* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @ERR_OFFLINE, align 8
  store i64 %35, i64* %5, align 8
  br label %127

36:                                               ; preds = %27
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = call i32 @FreeRpcEnumDhcp(%struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i32 @Zero(%struct.TYPE_16__* %39, i32 16)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LockList(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @LIST_NUM(i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 40, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.TYPE_15__* @ZeroMalloc(i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %59, align 8
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %119, %36
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %61, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %60
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call %struct.TYPE_18__* @LIST_DATA(i32 %70, i64 %71)
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %8, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %76
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %9, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @TickToTime(i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @TickToTime(i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Copy(i32 %97, i32 %100, i32 6)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @StrCpy(i32 %114, i32 4, i32 %117)
  br label %119

119:                                              ; preds = %67
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %60

122:                                              ; preds = %60
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @UnlockList(i32 %125)
  br label %127

127:                                              ; preds = %122, %34
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = call i32 @UnlockVirtual(%struct.TYPE_14__* %128)
  br label %130

130:                                              ; preds = %127, %25
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @Unlock(i32 %133)
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @LockVirtual(%struct.TYPE_14__*) #1

declare dso_local i32 @FreeRpcEnumDhcp(%struct.TYPE_16__*) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_15__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #1

declare dso_local i8* @TickToTime(i32) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @UnlockVirtual(%struct.TYPE_14__*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
