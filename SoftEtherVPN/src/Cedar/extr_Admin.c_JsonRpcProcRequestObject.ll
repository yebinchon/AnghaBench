; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_JsonRpcProcRequestObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_JsonRpcProcRequestObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"function_name\00", align 1
@AdminDispatch = common dso_local global i32 0, align 4
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"LS_API_RPC_CALL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @JsonRpcProcRequestObject(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %13, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %5
  store i32* null, i32** %6, align 8
  br label %93

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @JsonToPack(i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @PackAddStr(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %91

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = load i32, i32* @AdminDispatch, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = call i32* @StartRpcServer(%struct.TYPE_9__* %38, i32 %39, %struct.TYPE_10__* %40)
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @CallRpcDispatcher(i32* %45, i32* %46)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  %52 = call i32* @PackError(i32 %51)
  store i32* %52, i32** %15, align 8
  br label %53

53:                                               ; preds = %50, %37
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @RpcFreeEx(i32* %54, i32 1)
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @FreePack(i32* %56)
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @GetErrorFromPack(i32* %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @_E(i64 %64)
  %66 = call i32* @JsonRpcNewError(i64 %63, i32 %65)
  store i32* %66, i32** %13, align 8
  br label %70

67:                                               ; preds = %53
  %68 = load i32*, i32** %15, align 8
  %69 = call i32* @JsonRpcNewResponse(i32* %68)
  store i32* %69, i32** %13, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @_E(i64 %86)
  %88 = call i32 @SLog(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %77, i32 %80, i32 %83, i8* %84, i64 %85, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @FreePack(i32* %89)
  br label %91

91:                                               ; preds = %70, %29
  %92 = load i32*, i32** %13, align 8
  store i32* %92, i32** %6, align 8
  br label %93

93:                                               ; preds = %91, %28
  %94 = load i32*, i32** %6, align 8
  ret i32* %94
}

declare dso_local i32* @JsonToPack(i32*) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32* @StartRpcServer(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32* @CallRpcDispatcher(i32*, i32*) #1

declare dso_local i32* @PackError(i32) #1

declare dso_local i32 @RpcFreeEx(i32*, i32) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i64 @GetErrorFromPack(i32*) #1

declare dso_local i32* @JsonRpcNewError(i64, i32) #1

declare dso_local i32 @_E(i64) #1

declare dso_local i32* @JsonRpcNewResponse(i32*) #1

declare dso_local i32 @SLog(i32, i8*, i32*, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
