; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_StartL2TPThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_StartL2TPThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Thread Created for Session %u/%u on Tunnel %u/%u\0A\00", align 1
@L2TP_IPC_CLIENT_NAME_TAG = common dso_local global i32 0, align 4
@L2TP_IPC_CLIENT_NAME_NO_TAG = common dso_local global i32 0, align 4
@L2TP_IPC_POSTFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartL2TPThread(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp eq %struct.TYPE_10__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  br label %106

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %106

23:                                               ; preds = %18
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = call i32 @NewTubePair(i32* %44, i32* %46, i32 0)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SetTubeSockEvent(i32 %50, i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IsEmptyStr(i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %23
  %61 = trunc i64 %25 to i32
  %62 = load i32, i32* @L2TP_IPC_CLIENT_NAME_TAG, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Format(i8* %27, i32 %61, i32 %62, i32 %65)
  br label %71

67:                                               ; preds = %23
  %68 = trunc i64 %25 to i32
  %69 = load i32, i32* @L2TP_IPC_CLIENT_NAME_NO_TAG, align 4
  %70 = call i32 @StrCpy(i8* %27, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @L2TP_IPC_POSTFIX, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = call i32 @CalcL2TPMss(%struct.TYPE_12__* %98, %struct.TYPE_10__* %99, %struct.TYPE_11__* %100)
  %102 = call i32 @NewPPPSession(i32 %74, i32* %76, i32 %79, i32* %81, i32 %84, i32 %87, i32 %90, i32 %91, i8* %27, i32 %94, i32 %97, i32 %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %105)
  br label %106

106:                                              ; preds = %17, %71, %18
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Debug(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @NewTubePair(i32*, i32*, i32) #2

declare dso_local i32 @SetTubeSockEvent(i32, i32) #2

declare dso_local i32 @IsEmptyStr(i32) #2

declare dso_local i32 @Format(i8*, i32, i32, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i32) #2

declare dso_local i32 @NewPPPSession(i32, i32*, i32, i32*, i32, i32, i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @CalcL2TPMss(%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
