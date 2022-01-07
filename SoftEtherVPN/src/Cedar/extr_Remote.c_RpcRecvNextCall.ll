; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcRecvNextCall.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcRecvNextCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32* }

@MAX_PACK_SIZE = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RpcRecvNextCall(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = icmp eq %struct.TYPE_16__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = bitcast i32* %4 to i8*
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RecvAll(%struct.TYPE_15__* %17, i8* %18, i32 4, i32 %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %105

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @Endian32(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MAX_PACK_SIZE, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %105

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @MallocEx(i32 %33, i32 1)
  store i8* %34, i8** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RecvAll(%struct.TYPE_15__* %35, i8* %36, i32 %37, i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @Free(i8* %44)
  store i32 0, i32* %2, align 4
  br label %105

46:                                               ; preds = %32
  %47 = call %struct.TYPE_17__* (...) @NewBuf()
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %7, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WriteBuf(%struct.TYPE_17__* %48, i8* %49, i32 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = call i32 @SeekBuf(%struct.TYPE_17__* %52, i32 0, i32 0)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @Free(i8* %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = call i32* @BufToPack(%struct.TYPE_17__* %56)
  store i32* %57, i32** %8, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = call i32 @FreeBuf(%struct.TYPE_17__* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %105

63:                                               ; preds = %46
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @CallRpcDispatcher(%struct.TYPE_16__* %64, i32* %65)
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @FreePack(i32* %67)
  %69 = load i32*, i32** %9, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  %73 = call i32* @PackError(i32 %72)
  store i32* %73, i32** %9, align 8
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i32*, i32** %9, align 8
  %76 = call %struct.TYPE_17__* @PackToBuf(i32* %75)
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %7, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @FreePack(i32* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @Endian32(i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = call i32 @SendAdd(%struct.TYPE_15__* %83, i32* %4, i32 4)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @SendAdd(%struct.TYPE_15__* %85, i32* %88, i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SendNow(%struct.TYPE_15__* %93, i32 %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %74
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = call i32 @FreeBuf(%struct.TYPE_17__* %100)
  store i32 0, i32* %2, align 4
  br label %105

102:                                              ; preds = %74
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = call i32 @FreeBuf(%struct.TYPE_17__* %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %99, %62, %43, %31, %24, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @RecvAll(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local i8* @MallocEx(i32, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local %struct.TYPE_17__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32* @BufToPack(%struct.TYPE_17__*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_17__*) #1

declare dso_local i32* @CallRpcDispatcher(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @PackError(i32) #1

declare dso_local %struct.TYPE_17__* @PackToBuf(i32*) #1

declare dso_local i32 @SendAdd(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @SendNow(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
