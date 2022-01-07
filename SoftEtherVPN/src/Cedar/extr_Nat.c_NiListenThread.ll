; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiListenThread.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiListenThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32*, %struct.TYPE_15__* }

@DEFAULT_NAT_ADMIN_PORT = common dso_local global i32 0, align 4
@NAT_ADMIN_PORT_LISTEN_INTERVAL = common dso_local global i32 0, align 4
@NiAdminThread = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NiListenThread(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  br label %137

21:                                               ; preds = %17
  %22 = call i32 @NewList(i32* null)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %48
  %26 = load i32, i32* @DEFAULT_NAT_ADMIN_PORT, align 4
  %27 = call %struct.TYPE_13__* @Listen(i32 %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @NoticeThreadInit(i32* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %49

37:                                               ; preds = %33
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NAT_ADMIN_PORT_LISTEN_INTERVAL, align 4
  %42 = call i32 @Wait(i32 %40, i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %137

48:                                               ; preds = %37
  br label %25

49:                                               ; preds = %36
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @AddRef(i32 %55)
  br label %57

57:                                               ; preds = %49, %71
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = call %struct.TYPE_13__* @Accept(%struct.TYPE_13__* %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %9, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = icmp eq %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %86

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = call i32 @ReleaseSock(%struct.TYPE_13__* %69)
  br label %86

71:                                               ; preds = %63
  %72 = call %struct.TYPE_14__* @ZeroMalloc(i32 24)
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %11, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load i32, i32* @NiAdminThread, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = call i32* @NewThread(i32 %79, %struct.TYPE_14__* %80)
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @WaitThreadInit(i32* %82)
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @ReleaseThread(i32* %84)
  br label %57

86:                                               ; preds = %68, %62
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @LockList(i32 %89)
  store i64 0, i64* %7, align 8
  br label %91

91:                                               ; preds = %123, %86
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @LIST_NUM(i32 %95)
  %97 = icmp slt i64 %92, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %91
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call %struct.TYPE_14__* @LIST_DATA(i32 %101, i64 %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %12, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = call i32 @Disconnect(%struct.TYPE_13__* %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @INFINITE, align 4
  %112 = call i32 @WaitThread(i32* %110, i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @ReleaseThread(i32* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = call i32 @ReleaseSock(%struct.TYPE_13__* %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %122 = call i32 @Free(%struct.TYPE_14__* %121)
  br label %123

123:                                              ; preds = %98
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %7, align 8
  br label %91

126:                                              ; preds = %91
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @UnlockList(i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ReleaseList(i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = call i32 @ReleaseSock(%struct.TYPE_13__* %135)
  br label %137

137:                                              ; preds = %126, %47, %20
  ret void
}

declare dso_local i32 @NewList(i32*) #1

declare dso_local %struct.TYPE_13__* @Listen(i32) #1

declare dso_local i32 @NoticeThreadInit(i32*) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local %struct.TYPE_13__* @Accept(%struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @ZeroMalloc(i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @Disconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_14__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @ReleaseList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
