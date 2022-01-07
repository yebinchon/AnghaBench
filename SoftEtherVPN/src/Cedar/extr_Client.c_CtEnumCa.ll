; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtEnumCa.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtEnumCa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtEnumCa(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = icmp eq %struct.TYPE_15__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %116

14:                                               ; preds = %10
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i32 @Zero(%struct.TYPE_14__* %15, i32 16)
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LockList(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LIST_NUM(i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @ZeroMalloc(i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_11__**
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store %struct.TYPE_11__** %38, %struct.TYPE_11__*** %40, align 8
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %106, %14
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %109

48:                                               ; preds = %41
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call %struct.TYPE_13__* @LIST_DATA(i32 %53, i64 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %7, align 8
  %56 = call i8* @ZeroMalloc(i32 4)
  %57 = bitcast i8* %56 to %struct.TYPE_11__*
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 %61
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GetAllNameFromNameEx(i32 %70, i32 4, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %77, i64 %78
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GetAllNameFromNameEx(i32 %82, i32 4, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %92, i64 %93
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = call i32 @POINTER_TO_KEY(%struct.TYPE_13__* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %101, i64 %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %48
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %6, align 8
  br label %41

109:                                              ; preds = %41
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @UnlockList(i32 %114)
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %109, %13
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @GetAllNameFromNameEx(i32, i32, i32) #1

declare dso_local i32 @POINTER_TO_KEY(%struct.TYPE_13__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
