; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcSockConnectEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcSockConnectEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PROXY_DIRECT = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_CONNECT_FAILED = common dso_local global i32 0, align 4
@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WpcSockConnect(): Unknown proxy type: %u!\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"ClientConnectGetSocket(): Connection via proxy server failed with error %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @WpcSockConnectEx(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_14__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %123

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* %11, i32** %7, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PROXY_DIRECT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @TcpConnectEx3(i32 %31, i32 %34, i32 %35, i32* %36, i32* null, i32 1, i32* null, i32 0, i32* null)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @ERR_NO_ERROR, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @ERR_CONNECT_FAILED, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  store i32* %47, i32** %5, align 8
  br label %123

48:                                               ; preds = %22
  %49 = call i32 @Zero(%struct.TYPE_14__* %13, i32 32)
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @StrCpy(i32 %53, i32 4, i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @StrCpy(i32 %63, i32 4, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @StrCpy(i32 %73, i32 4, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @StrCpy(i32 %79, i32 4, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @StrCpy(i32 %85, i32 4, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %102 [
    i32 130, label %93
    i32 129, label %96
    i32 128, label %99
  ]

93:                                               ; preds = %48
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @ProxyHttpConnect(%struct.TYPE_13__* %12, %struct.TYPE_14__* %13, i32* %94)
  store i32 %95, i32* %14, align 4
  br label %109

96:                                               ; preds = %48
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @ProxySocks4Connect(%struct.TYPE_13__* %12, %struct.TYPE_14__* %13, i32* %97)
  store i32 %98, i32* %14, align 4
  br label %109

99:                                               ; preds = %48
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @ProxySocks5Connect(%struct.TYPE_13__* %12, %struct.TYPE_14__* %13, i32* %100)
  store i32 %101, i32* %14, align 4
  br label %109

102:                                              ; preds = %48
  %103 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @Debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i32* null, i32** %5, align 8
  br label %123

109:                                              ; preds = %99, %96, %93
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @ProxyCodeToCedar(i32 %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ERR_NO_ERROR, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @Debug(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  store i32* null, i32** %5, align 8
  br label %123

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %5, align 8
  br label %123

123:                                              ; preds = %120, %117, %102, %44, %17
  %124 = load i32*, i32** %5, align 8
  ret i32* %124
}

declare dso_local i32* @TcpConnectEx3(i32, i32, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @ProxyHttpConnect(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ProxySocks4Connect(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ProxySocks5Connect(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @Debug(i8*, i32) #1

declare dso_local i32 @ProxyCodeToCedar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
