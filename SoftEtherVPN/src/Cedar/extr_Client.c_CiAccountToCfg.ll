; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiAccountToCfg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiAccountToCfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@TAG_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CiAccountToCfg(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @TAG_ROOT, align 4
  %12 = call i32* @CfgCreateFolder(i32* null, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = call i32 @Zero(%struct.TYPE_7__* %6, i32 24)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @CiWriteAccountData(i32* %38, %struct.TYPE_7__* %6)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32* @CfgFolderToBufEx(i32* %40, i32 1, i32 1)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @CfgDeleteFolder(i32* %42)
  %44 = load i32*, i32** %4, align 8
  store i32* %44, i32** %2, align 8
  br label %45

45:                                               ; preds = %10, %9
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i32* @CfgCreateFolder(i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @CiWriteAccountData(i32*, %struct.TYPE_7__*) #1

declare dso_local i32* @CfgFolderToBufEx(i32*, i32, i32) #1

declare dso_local i32 @CfgDeleteFolder(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
