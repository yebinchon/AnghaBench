; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_NewUpdateClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_NewUpdateClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32* }

@UpdateClientThreadProc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @NewUpdateClient(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32* %5, i64 %6, i32 %7, i8* %8, i32* %9, i8* %10) #0 {
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i8* %10, i8** %23, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %11
  %28 = load i32*, i32** %18, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %17, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %19, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %21, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %22, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %11
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  br label %101

46:                                               ; preds = %42
  %47 = call %struct.TYPE_5__* @ZeroMalloc(i32 72)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %24, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 12
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 11
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %23, align 8
  %58 = call i32 @StrCpy(i32 %56, i32 4, i8* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = call i32 @StrCpy(i32 %61, i32 4, i8* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = call i32 @StrCpy(i32 %66, i32 4, i8* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %18, align 8
  %73 = call i32 @UniStrCpy(i32 %71, i32 4, i32* %72)
  %74 = load i64, i64* %19, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @StrCpy(i32 %82, i32 4, i8* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @Copy(i32* %86, i32* %87, i32 4)
  %89 = load i8*, i8** %15, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = call i32 (...) @NewEvent()
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @UpdateClientThreadProc, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %97 = call i32 @NewThread(i32 %95, %struct.TYPE_5__* %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %12, align 8
  br label %101

101:                                              ; preds = %46, %45
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  ret %struct.TYPE_5__* %102
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
