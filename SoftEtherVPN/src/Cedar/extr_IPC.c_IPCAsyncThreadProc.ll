; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCAsyncThreadProc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCAsyncThreadProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i64, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"IPCDhcpAllocateIP() start...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"IPCDhcpAllocateIP() Ok.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"IPCDhcpAllocateIP() Error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPCAsyncThreadProc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %118

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 9
  %27 = call i32* @NewIPCByParam(i32 %22, %struct.TYPE_9__* %24, i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %106

34:                                               ; preds = %17
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %105

40:                                               ; preds = %34
  %41 = call i32 @Zero(%struct.TYPE_8__* %6, i32 20)
  %42 = call i32 @Debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IPCDhcpAllocateIP(i32* %45, %struct.TYPE_8__* %6, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %94

51:                                               ; preds = %40
  %52 = call i32 @Debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 600, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %7, align 4
  %60 = sdiv i32 %59, 3
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 6
  %67 = call i32 @Copy(i32* %66, %struct.TYPE_8__* %6, i32 20)
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @UINTToIP(i32* %8, i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @UINTToIP(i32* %9, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @UINTToIP(i32* %10, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %85 = call i32 @IPCSetIPv4Parameters(i32* %83, i32* %8, i32* %9, i32* %10, i32* %84)
  %86 = call i64 (...) @Tick64()
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %86, %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  br label %104

94:                                               ; preds = %40
  %95 = call i32 @Debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @FreeIPC(i32* %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %94, %64
  br label %105

105:                                              ; preds = %104, %34
  br label %106

106:                                              ; preds = %105, %17
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @SetSockEvent(i32* %116)
  br label %118

118:                                              ; preds = %16, %113, %106
  ret void
}

declare dso_local i32* @NewIPCByParam(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i64 @IPCDhcpAllocateIP(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Copy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @UINTToIP(i32*, i32) #1

declare dso_local i32 @IPCSetIPv4Parameters(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @FreeIPC(i32*) #1

declare dso_local i32 @SetSockEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
