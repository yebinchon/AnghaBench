; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_NewOpenVpnServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_NewOpenVpnServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i32, i32*, i32*, i32* }

@OvsCompareSessionList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"LO_START\00", align 1
@DH_PARAM_BITS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @NewOpenVpnServer(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %45

12:                                               ; preds = %3
  %13 = call %struct.TYPE_5__* @ZeroMalloc(i32 64)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 8
  store i32* %14, i32** %16, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @OvsCompareSessionList, align 4
  %24 = call i32 @NewList(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = call i8* @NewListFast(i32* null)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = call i8* @NewListFast(i32* null)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = call i32 (...) @Tick64()
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = call i32 @OvsLog(%struct.TYPE_5__* %38, i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @DH_PARAM_BITS_DEFAULT, align 4
  %41 = call i32 @DhNewFromBits(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %4, align 8
  br label %45

45:                                               ; preds = %12, %11
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %46
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewList(i32) #1

declare dso_local i8* @NewListFast(i32*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @OvsLog(%struct.TYPE_5__*, i32*, i32*, i8*) #1

declare dso_local i32 @DhNewFromBits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
