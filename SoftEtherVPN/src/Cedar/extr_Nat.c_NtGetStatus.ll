; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtGetStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NtGetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NtGetStatus(%struct.TYPE_22__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @Lock(i32 %12)
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = call i32 @FreeRpcNatStatus(%struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = call i32 @Zero(%struct.TYPE_18__* %19, i32 32)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = call i32 @LockVirtual(%struct.TYPE_17__* %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @LockList(i32 %25)
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %65, %2
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @LIST_NUM(i32 %31)
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %27
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @LIST_DATA(i32 %37, i64 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %7, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %64 [
    i32 129, label %44
    i32 128, label %49
    i32 130, label %54
    i32 131, label %59
  ]

44:                                               ; preds = %34
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %64

49:                                               ; preds = %34
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %64

54:                                               ; preds = %34
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %64

59:                                               ; preds = %34
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %34, %59, %54, %49, %44
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %6, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %27

68:                                               ; preds = %27
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = call i64 @NnIsActive(%struct.TYPE_17__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %68
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = icmp ne %struct.TYPE_21__* %75, null
  br i1 %76, label %77, label %127

77:                                               ; preds = %72
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %123, %77
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @LIST_NUM(i32 %87)
  %89 = icmp slt i64 %82, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %81
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %6, align 8
  %97 = call i8* @LIST_DATA(i32 %95, i64 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %9, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %122 [
    i32 129, label %102
    i32 128, label %107
    i32 130, label %112
    i32 131, label %117
  ]

102:                                              ; preds = %90
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %122

107:                                              ; preds = %90
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %122

112:                                              ; preds = %90
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %122

117:                                              ; preds = %90
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %90, %117, %112, %107, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %6, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %6, align 8
  br label %81

126:                                              ; preds = %81
  br label %127

127:                                              ; preds = %126, %72, %68
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @UnlockList(i32 %130)
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @LIST_NUM(i32 %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = call i32 @NnIsActiveEx(%struct.TYPE_17__* %138, i32* %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = call i32 @UnlockVirtual(%struct.TYPE_17__* %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @Unlock(i32 %148)
  %150 = load i64, i64* @ERR_NO_ERROR, align 8
  ret i64 %150
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @FreeRpcNatStatus(%struct.TYPE_18__*) #1

declare dso_local i32 @Zero(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @LockVirtual(%struct.TYPE_17__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i8* @LIST_DATA(i32, i64) #1

declare dso_local i64 @NnIsActive(%struct.TYPE_17__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @NnIsActiveEx(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @UnlockVirtual(%struct.TYPE_17__*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
