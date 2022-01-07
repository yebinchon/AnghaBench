; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_EnumHub.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_EnumHub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"enum_hub\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NumHub\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"HubName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @EnumHub(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @SetTimeout(i32* %29, i32 10000)
  %31 = call i32* (...) @NewPack()
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @PackAddStr(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @PackAddClientVersion(i32* %34, %struct.TYPE_8__* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @HttpClientSend(i32* %39, i32* %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @FreePack(i32* %44)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

46:                                               ; preds = %28
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @FreePack(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @HttpClientRecv(i32* %49)
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %101

54:                                               ; preds = %46
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @PackGetInt(i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = call i8* @ZeroMalloc(i32 16)
  %58 = bitcast i8* %57 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  %66 = call i8* @ZeroMalloc(i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %94, %54
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i32, i32* @MAX_SIZE, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %9, align 8
  %78 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %10, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = trunc i64 %76 to i32
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @PackGetStrEx(i32* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %78, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = call i32 @CopyStr(i8* %78)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %74
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %70

97:                                               ; preds = %70
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @FreePack(i32* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %2, align 8
  br label %101

101:                                              ; preds = %97, %53, %43, %27, %18
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %102
}

declare dso_local i32 @SetTimeout(i32*, i32) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddClientVersion(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @HttpClientSend(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local i32* @HttpClientRecv(i32*) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PackGetStrEx(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @CopyStr(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
