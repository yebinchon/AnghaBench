; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminReconnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdminReconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdminReconnect(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %11
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %6, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AddRef(i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %5, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i32 @Disconnect(%struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = call i32 @ReleaseSock(%struct.TYPE_14__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32 @ReleaseSession(%struct.TYPE_15__* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_15__* @AdminConnectMain(%struct.TYPE_17__* %42, i32* %44, i32 %47, i32 %50, i32* %7, i32 %53, i32* null, i32* %8)
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %4, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = call i32 @ReleaseCedar(%struct.TYPE_17__* %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = icmp eq %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %18
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %87

61:                                               ; preds = %18
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @HashAdminPassword(i32 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %72, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %79, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @AddRef(i32 %84)
  %86 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %69, %59, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseSession(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @AdminConnectMain(%struct.TYPE_17__*, i32*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ReleaseCedar(%struct.TYPE_17__*) #1

declare dso_local i32 @HashAdminPassword(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
