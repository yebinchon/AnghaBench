; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcCall.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"function_name\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error_code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RpcCall(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = icmp eq %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32* null, i32** %4, align 8
  br label %83

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @Lock(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32* (...) @NewPack()
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @PackAddStr(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %57, %26
  store i32 0, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @RpcCallInternal(%struct.TYPE_5__* %31, i32* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = call i32 @AdminReconnect(%struct.TYPE_5__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ERR_NO_ERROR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %30

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %41, %36
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @FreePack(i32* %62)
  %64 = load i32*, i32** %8, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @ERR_DISCONNECTED, align 4
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %10, align 4
  %73 = call i32* @PackError(i32 %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @PackAddInt(i32* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %61
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @Unlock(i32 %80)
  %82 = load i32*, i32** %8, align 8
  store i32* %82, i32** %4, align 8
  br label %83

83:                                               ; preds = %77, %16
  %84 = load i32*, i32** %4, align 8
  ret i32* %84
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32* @RpcCallInternal(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @AdminReconnect(%struct.TYPE_5__*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @PackError(i32) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
