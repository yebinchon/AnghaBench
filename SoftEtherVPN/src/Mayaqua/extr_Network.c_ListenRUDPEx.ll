; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ListenRUDPEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ListenRUDPEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SOCK_RUDP_LISTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ListenRUDPEx(i8* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32*, i32** %19, align 8
  %32 = load i32, i32* %20, align 4
  %33 = load i32*, i32** %21, align 8
  %34 = call %struct.TYPE_9__* @NewRUDPServer(i8* %24, i32* %25, i32* %26, i8* %27, i32 %28, i32 %29, i32 %30, i32* %31, i32 %32, i32* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %23, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %10
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %58

38:                                               ; preds = %10
  %39 = call %struct.TYPE_8__* (...) @NewSock()
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %22, align 8
  %40 = load i32, i32* @SOCK_RUDP_LISTEN, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %11, align 8
  br label %58

58:                                               ; preds = %38, %37
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %59
}

declare dso_local %struct.TYPE_9__* @NewRUDPServer(i8*, i32*, i32*, i8*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @NewSock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
