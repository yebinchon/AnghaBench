; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumIpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_SiEnumIpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }

@ERR_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SiEnumIpTable(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %3
  %22 = load i64, i64* @ERR_INTERNAL_ERROR, align 8
  store i64 %22, i64* %4, align 8
  br label %141

23:                                               ; preds = %18
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @LockHubList(i32* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call %struct.TYPE_19__* @GetHub(i32* %29, i8* %30)
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %10, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @UnlockHubList(i32* %32)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %35 = icmp eq %struct.TYPE_19__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %37, i64* %4, align 8
  br label %141

38:                                               ; preds = %23
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @StrCpy(i32 %41, i32 4, i8* %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LockList(i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LIST_NUM(i32 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 48, %57
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_16__* @ZeroMalloc(i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %62, align 8
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %130, %38
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  store %struct.TYPE_16__* %75, %struct.TYPE_16__** %11, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = call %struct.TYPE_18__* @LIST_DATA(i32 %78, i64 %79)
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %12, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %82 = call i32 @POINTER_TO_KEY(%struct.TYPE_18__* %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @StrCpy(i32 %87, i32 4, i8* %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 3
  %96 = call i32 @IPToUINT(i32* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = call i32 @Copy(i32* %100, i32* %102, i32 4)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 3
  %108 = call i32 @Copy(i32* %105, i32* %107, i32 4)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @TickToTime(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @TickToTime(i32 %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @GetMachineName(i32 %128, i32 4)
  br label %130

130:                                              ; preds = %70
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %63

133:                                              ; preds = %63
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @UnlockList(i32 %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %139 = call i32 @ReleaseHub(%struct.TYPE_19__* %138)
  %140 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %140, i64* %4, align 8
  br label %141

141:                                              ; preds = %133, %36, %21
  %142 = load i64, i64* %4, align 8
  ret i64 %142
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_19__* @GetHub(i32*, i8*) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_16__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_18__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @POINTER_TO_KEY(%struct.TYPE_18__*) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i8* @TickToTime(i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
