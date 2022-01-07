; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_TubeSendEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_TubeSendEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TubeSendEx2(%struct.TYPE_7__* %0, i8* %1, i64 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = load i8*, i8** %9, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %6
  store i32 0, i32* %7, align 4
  br label %73

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = call i32 @IsTubeConnected(%struct.TYPE_7__* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %73

28:                                               ; preds = %23
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i32 @LockQueue(%struct.TYPE_8__* %31)
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35, %28
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @NewTubeData(i8* %47, i64 %48, i8* %49, i32 %52)
  %54 = call i32 @InsertQueue(%struct.TYPE_8__* %46, i32 %53)
  br label %56

55:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @UnlockQueue(%struct.TYPE_8__* %59)
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @Set(i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @SetSockEvent(i32 %70)
  br label %72

72:                                               ; preds = %63, %56
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %27, %22
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @IsTubeConnected(%struct.TYPE_7__*) #1

declare dso_local i32 @LockQueue(%struct.TYPE_8__*) #1

declare dso_local i32 @InsertQueue(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @NewTubeData(i8*, i64, i8*, i32) #1

declare dso_local i32 @UnlockQueue(%struct.TYPE_8__*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @SetSockEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
