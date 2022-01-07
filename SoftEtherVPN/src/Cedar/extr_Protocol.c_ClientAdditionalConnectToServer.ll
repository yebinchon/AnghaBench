; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientAdditionalConnectToServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientAdditionalConnectToServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64 }

@CONNECTING_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ClientAdditionalConnectToServer(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = icmp eq %struct.TYPE_16__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %112

8:                                                ; preds = %1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = call %struct.TYPE_15__* @ClientConnectGetSocket(%struct.TYPE_16__* %9, i32 1)
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %112

14:                                               ; preds = %8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LockList(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32 @Add(i32 %21, %struct.TYPE_15__* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AddRef(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @UnlockList(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %14
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = call i32 @Disconnect(%struct.TYPE_15__* %39)
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @LockList(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = call i64 @Delete(i32 %47, %struct.TYPE_15__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = call i32 @ReleaseSock(%struct.TYPE_15__* %52)
  br label %54

54:                                               ; preds = %51, %38
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UnlockList(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = call i32 @ReleaseSock(%struct.TYPE_15__* %59)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %112

61:                                               ; preds = %14
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = load i32, i32* @CONNECTING_TIMEOUT, align 4
  %64 = call i32 @SetTimeout(%struct.TYPE_15__* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @StartSSLEx(%struct.TYPE_15__* %65, i32* null, i32* null, i32 0, i32 %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %61
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = call i32 @Disconnect(%struct.TYPE_15__* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LockList(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = call i64 @Delete(i32 %80, %struct.TYPE_15__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = call i32 @ReleaseSock(%struct.TYPE_15__* %85)
  br label %87

87:                                               ; preds = %84, %71
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @UnlockList(i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = call i32 @ReleaseSock(%struct.TYPE_15__* %92)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  br label %112

94:                                               ; preds = %61
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @CompareX(i32 %97, i32 %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = call i32 @Disconnect(%struct.TYPE_15__* %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %94
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %2, align 8
  br label %112

112:                                              ; preds = %110, %87, %54, %13, %7
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  ret %struct.TYPE_15__* %113
}

declare dso_local %struct.TYPE_15__* @ClientConnectGetSocket(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_15__*) #1

declare dso_local i64 @Delete(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_15__*) #1

declare dso_local i32 @SetTimeout(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @StartSSLEx(%struct.TYPE_15__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CompareX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
