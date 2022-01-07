; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_NewEtherIPServer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_EtherIP.c_NewEtherIPServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_8__*, i8*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"LE_START_MODULE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @NewEtherIPServer(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32* %5, i8* %6, i8* %7, i32 %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i8* %4, i8** %18, align 8
  store i32* %5, i32** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store i32 %8, i32* %22, align 4
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store i8* %11, i8** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %12
  %30 = load i32*, i32** %15, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** %17, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %19, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %24, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38, %35, %32, %29, %12
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %13, align 8
  br label %110

45:                                               ; preds = %41
  %46 = call %struct.TYPE_7__* @ZeroMalloc(i32 112)
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %26, align 8
  %47 = call i32 (...) @NewRef()
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %25, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 14
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 13
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 13
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AddRef(i32 %60)
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 12
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 11
  store i32* %65, i32** %67, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %24, align 8
  %75 = call i32 @StrCpy(i32 %73, i32 4, i8* %74)
  %76 = call i32 @NewList(i32* null)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = call i32 (...) @Tick64()
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = call i32 (...) @NewLock()
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 6
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @Copy(i32* %86, i32* %87, i32 4)
  %89 = load i8*, i8** %18, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 4
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @Copy(i32* %93, i32* %94, i32 4)
  %96 = load i8*, i8** %20, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %21, align 8
  %103 = call i32 @StrCpy(i32 %101, i32 4, i8* %102)
  %104 = load i8*, i8** %23, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %108 = call i32 @EtherIPLog(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %13, align 8
  br label %110

110:                                              ; preds = %45, %44
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  ret %struct.TYPE_7__* %111
}

declare dso_local %struct.TYPE_7__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @NewList(i32*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @EtherIPLog(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
