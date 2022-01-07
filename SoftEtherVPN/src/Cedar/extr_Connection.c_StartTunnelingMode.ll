; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_StartTunnelingMode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_StartTunnelingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_14__*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i64, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@CONNECTION_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartTunnelingMode(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = icmp eq %struct.TYPE_19__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CONNECTION_TCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %85

20:                                               ; preds = %11
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %3, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AddRef(i32 %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 6
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %35, align 8
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = call %struct.TYPE_16__* @NewTcpSock(%struct.TYPE_18__* %37)
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %5, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = call i64 (...) @Tick64()
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %53, %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %52, %43
  br label %67

67:                                               ; preds = %66, %36
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LockList(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = call i32 @Add(i32 %74, %struct.TYPE_16__* %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @UnlockList(i32 %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %82 = call i32 @ReleaseSock(%struct.TYPE_18__* %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %84, align 8
  br label %146

85:                                               ; preds = %11
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %3, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = call i32 @Copy(i32* %6, i32* %90, i32 4)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = call i32 @Disconnect(%struct.TYPE_18__* %94)
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = call i32 @ReleaseSock(%struct.TYPE_18__* %96)
  %98 = call %struct.TYPE_20__* @ZeroMalloc(i32 4)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %100, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %85
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 @AddUDPEntry(i32 %108, %struct.TYPE_14__* %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  br label %140

117:                                              ; preds = %85
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %7, align 4
  %125 = call i32* @NewUDP(i32 0)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 3
  store i32* %125, i32** %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  %134 = call i32 @Copy(i32* %133, i32* %6, i32 4)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  br label %140

140:                                              ; preds = %117, %105
  %141 = call i32 (...) @NewQueue()
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  br label %146

146:                                              ; preds = %10, %140, %67
  ret void
}

declare dso_local i32 @AddRef(i32) #1

declare dso_local %struct.TYPE_16__* @NewTcpSock(%struct.TYPE_18__*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i32 @Add(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_18__*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddUDPEntry(i32, %struct.TYPE_14__*) #1

declare dso_local i32* @NewUDP(i32) #1

declare dso_local i32 @NewQueue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
