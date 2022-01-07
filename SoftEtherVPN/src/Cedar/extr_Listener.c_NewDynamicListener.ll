; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_NewDynamicListener.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_NewDynamicListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i8*, i8*, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @NewDynamicListener(%struct.TYPE_8__* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %45

17:                                               ; preds = %13
  %18 = call %struct.TYPE_7__* @ZeroMalloc(i32 48)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AddRef(i32 %26)
  %28 = call i32 (...) @NewLock()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = call i32 @ApplyDynamicListener(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  br label %45

45:                                               ; preds = %17, %16
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %46
}

declare dso_local %struct.TYPE_7__* @ZeroMalloc(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @ApplyDynamicListener(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
