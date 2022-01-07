; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_NewGroup.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_NewGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8*, i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NewGroup(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %44

18:                                               ; preds = %14
  %19 = call %struct.TYPE_4__* @ZeroMalloc(i32 48)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %8, align 8
  %20 = call i32 (...) @NewLock()
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @NewRef()
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @CopyStr(i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @CopyUniStr(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @CopyUniStr(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = call i32 (...) @NewTraffic()
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %4, align 8
  br label %44

44:                                               ; preds = %18, %17
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %45
}

declare dso_local %struct.TYPE_4__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i8* @CopyUniStr(i32*) #1

declare dso_local i32 @NewTraffic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
