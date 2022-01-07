; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcGetUseSecure.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcGetUseSecure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"GetUseSecure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CcGetUseSecure(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %11
  %17 = call i32* (...) @NewPack()
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @RpcCall(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @RpcIsOk(i32* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @RpcGetError(i32* %27)
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @InRpcUseSecure(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @FreePack(i32* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32* @RpcCall(i32, i8*, i32*) #1

declare dso_local i32 @RpcIsOk(i32*) #1

declare dso_local i32 @RpcGetError(i32*) #1

declare dso_local i32 @InRpcUseSecure(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
