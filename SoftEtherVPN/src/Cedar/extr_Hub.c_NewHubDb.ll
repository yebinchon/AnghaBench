; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_NewHubDb.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_NewHubDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8* }

@CompareGroupName = common dso_local global i32* null, align 8
@CompareUserName = common dso_local global i32* null, align 8
@CompareCert = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewHubDb() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call %struct.TYPE_4__* @ZeroMalloc(i32 40)
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  %3 = load i32*, i32** @CompareGroupName, align 8
  %4 = call i8* @NewList(i32* %3)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i8* %4, i8** %6, align 8
  %7 = load i32*, i32** @CompareUserName, align 8
  %8 = call i8* @NewList(i32* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  %11 = load i32*, i32** @CompareCert, align 8
  %12 = call i8* @NewList(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = call i8* @NewList(i32* null)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = call i32 (...) @NewAcList()
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %21
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i8* @NewList(i32*) #1

declare dso_local i32 @NewAcList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
