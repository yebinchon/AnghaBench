; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtsAcceptProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_TtsAcceptProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i64, %struct.TYPE_16__* }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"TTS_ACCEPTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TtsAcceptProc(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = icmp eq %struct.TYPE_15__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = icmp eq %struct.TYPE_16__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32 1, i32* %8, align 4
  br label %118

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %116, %42, %24
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %25
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = call %struct.TYPE_16__* @Accept(%struct.TYPE_16__* %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = icmp eq %struct.TYPE_16__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @SleepThread(i32 10)
  br label %42

42:                                               ; preds = %40, %35
  br label %25

43:                                               ; preds = %30
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = call i32 @AcceptInitEx(%struct.TYPE_16__* %44, i32 1)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @LIST_NUM(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.TYPE_13__* @LIST_DATA(i32 %57, i32 %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %12, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LockList(i32 %64)
  %66 = call %struct.TYPE_14__* @ZeroMalloc(i32 32)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %13, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  store i64 600000, i64* %77, align 8
  %78 = call i32 (...) @Tick64()
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = mul nuw i64 4, %15
  %82 = trunc i64 %81 to i32
  %83 = call i32 @_UU(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @UniFormat(i32* %17, i32 %82, i32 %83, i64 %86, i32 %89, i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @TtPrint(i32 %96, i32 %99, i32* %17)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %105 = call i32 @Insert(i32 %103, %struct.TYPE_14__* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @UnlockList(i32 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SetSockEvent(i32 %114)
  br label %116

116:                                              ; preds = %43
  br label %25

117:                                              ; preds = %25
  store i32 0, i32* %8, align 4
  br label %118

118:                                              ; preds = %117, %23
  %119 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %8, align 4
  switch i32 %120, label %122 [
    i32 0, label %121
    i32 1, label %121
  ]

121:                                              ; preds = %118, %118
  ret void

122:                                              ; preds = %118
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @Accept(%struct.TYPE_16__*) #2

declare dso_local i32 @SleepThread(i32) #2

declare dso_local i32 @AcceptInitEx(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i32) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local %struct.TYPE_14__* @ZeroMalloc(i32) #2

declare dso_local i32 @Tick64(...) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i64, i32, i32) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @TtPrint(i32, i32, i32*) #2

declare dso_local i32 @Insert(i32, %struct.TYPE_14__*) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @SetSockEvent(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
