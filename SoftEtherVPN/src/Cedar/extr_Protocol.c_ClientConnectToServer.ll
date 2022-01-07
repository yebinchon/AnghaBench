; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientConnectToServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientConnectToServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__*, i32, i64 }

@ERR_USER_CANCEL = common dso_local global i8* null, align 8
@CONNECTING_TIMEOUT = common dso_local global i32 0, align 4
@ERR_SERVER_IS_NOT_VPN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ClientConnectToServer(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i8*, i8** @ERR_USER_CANCEL, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

19:                                               ; preds = %10
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call %struct.TYPE_11__* @ClientConnectGetSocket(%struct.TYPE_12__* %20, i32 0)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i8*, i8** @ERR_USER_CANCEL, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = call i32 @ReleaseSock(%struct.TYPE_11__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

41:                                               ; preds = %25
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = load i32, i32* @CONNECTING_TIMEOUT, align 4
  %44 = call i32 @SetTimeout(%struct.TYPE_11__* %42, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @StartSSLEx(%struct.TYPE_11__* %45, i32* %46, i32* %47, i32 0, i32 %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = call i32 @Disconnect(%struct.TYPE_11__* %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = call i32 @ReleaseSock(%struct.TYPE_11__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %59, align 8
  %60 = load i8*, i8** @ERR_SERVER_IS_NOT_VPN, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

63:                                               ; preds = %41
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = call i32 @Disconnect(%struct.TYPE_11__* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = call i32 @ReleaseSock(%struct.TYPE_11__* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %74, align 8
  %75 = load i8*, i8** @ERR_SERVER_IS_NOT_VPN, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %80

78:                                               ; preds = %63
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %2, align 8
  br label %80

80:                                               ; preds = %78, %68, %53, %33, %24, %15, %9
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %81
}

declare dso_local %struct.TYPE_11__* @ClientConnectGetSocket(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_11__*) #1

declare dso_local i32 @SetTimeout(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @StartSSLEx(%struct.TYPE_11__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
