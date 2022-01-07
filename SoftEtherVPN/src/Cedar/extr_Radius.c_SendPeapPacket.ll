; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_SendPeapPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_SendPeapPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendPeapPacket(%struct.TYPE_21__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store i32 0, i32* %4, align 4
  br label %93

22:                                               ; preds = %18
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = icmp eq %struct.TYPE_23__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %93

28:                                               ; preds = %22
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %9, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %10, align 8
  %43 = call i32 @Zero(%struct.TYPE_20__* %12, i32 4)
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @MIN(i64 %45, i32 4)
  %47 = call i32 @Copy(%struct.TYPE_20__* %12, i8* %44, i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = sub nsw i64 %56, 4
  %58 = call i32 @WriteFifo(i32 %54, i32* %55, i64 %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %60, align 8
  %62 = call i32 @SyncSslPipe(%struct.TYPE_23__* %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = call %struct.TYPE_22__* @ReadFifoAll(%struct.TYPE_19__* %63)
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %11, align 8
  br label %65

65:                                               ; preds = %28, %81
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SendPeapRawPacket(%struct.TYPE_21__* %66, i32 %69, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %75 = call i32 @FreeBuf(%struct.TYPE_22__* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %84

81:                                               ; preds = %65
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = call %struct.TYPE_22__* @ReadFifoAll(%struct.TYPE_19__* %82)
  store %struct.TYPE_22__* %83, %struct.TYPE_22__** %11, align 8
  br label %65

84:                                               ; preds = %80
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %84, %27, %21
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @Zero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @Copy(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @WriteFifo(i32, i32*, i64) #1

declare dso_local i32 @SyncSslPipe(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ReadFifoAll(%struct.TYPE_19__*) #1

declare dso_local i32 @SendPeapRawPacket(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
