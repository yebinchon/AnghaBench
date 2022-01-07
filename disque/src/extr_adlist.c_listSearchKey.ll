; ModuleID = '/home/carl/AnghaBench/disque/src/extr_adlist.c_listSearchKey.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_adlist.c_listSearchKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i64 (i8*, i8*)* }

@AL_START_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @listSearchKey(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = load i32, i32* @AL_START_HEAD, align 4
  %10 = call i32* @listGetIterator(%struct.TYPE_8__* %8, i32 %9)
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.TYPE_7__* @listNext(i32* %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %17, align 8
  %19 = icmp ne i64 (i8*, i8*)* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 %23(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @listReleaseIterator(i32* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %3, align 8
  br label %50

34:                                               ; preds = %20
  br label %46

35:                                               ; preds = %15
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @listReleaseIterator(i32* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %3, align 8
  br label %50

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %34
  br label %11

47:                                               ; preds = %11
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @listReleaseIterator(i32* %48)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %50

50:                                               ; preds = %47, %41, %30
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %51
}

declare dso_local i32* @listGetIterator(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_7__* @listNext(i32*) #1

declare dso_local i32 @listReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
