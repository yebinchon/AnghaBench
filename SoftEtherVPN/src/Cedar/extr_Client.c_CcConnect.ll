; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcConnect.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Connect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CcConnect(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp eq %struct.TYPE_4__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @CcSetServiceToForegroundProcess(%struct.TYPE_4__* %17)
  %19 = call i32* (...) @NewPack()
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @OutRpcClientConnect(i32* %20, i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @RpcCall(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @RpcIsOk(i32* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @RpcGetError(i32* %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %16
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @FreePack(i32* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @CcSetServiceToForegroundProcess(%struct.TYPE_4__*) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @OutRpcClientConnect(i32*, i32*) #1

declare dso_local i32* @RpcCall(i32, i8*, i32*) #1

declare dso_local i32 @RpcIsOk(i32*) #1

declare dso_local i32 @RpcGetError(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
