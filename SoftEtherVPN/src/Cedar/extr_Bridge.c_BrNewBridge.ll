; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_BrNewBridge.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Bridge.c_BrNewBridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@BrBridgeThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @BrNewBridge(%struct.TYPE_13__* %0, i8* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %9
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %19, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %9
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  br label %120

32:                                               ; preds = %28
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call %struct.TYPE_12__* (...) @GetDefaultPolicy()
  %37 = call %struct.TYPE_12__* @ClonePolicy(%struct.TYPE_12__* %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %21, align 8
  br label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = call %struct.TYPE_12__* @ClonePolicy(%struct.TYPE_12__* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %21, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = call %struct.TYPE_14__* @ZeroMalloc(i32 64)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %20, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @StrCpy(i32 %53, i32 4, i8* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 6
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %41
  %79 = load i8*, i8** %17, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @IsZero(i8* %82, i32 6)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @Copy(i32 %88, i8* %89, i32 6)
  br label %96

91:                                               ; preds = %81, %78
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @GenMacAddress(i32 %94)
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96, %41
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* @BrBridgeThread, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %114 = call i32* @NewThread(i32 %112, %struct.TYPE_14__* %113)
  store i32* %114, i32** %22, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = call i32 @WaitThreadInit(i32* %115)
  %117 = load i32*, i32** %22, align 8
  %118 = call i32 @ReleaseThread(i32* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %119, %struct.TYPE_14__** %10, align 8
  br label %120

120:                                              ; preds = %111, %31
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  ret %struct.TYPE_14__* %121
}

declare dso_local %struct.TYPE_12__* @ClonePolicy(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @GetDefaultPolicy(...) #1

declare dso_local %struct.TYPE_14__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @IsZero(i8*, i32) #1

declare dso_local i32 @Copy(i32, i8*, i32) #1

declare dso_local i32 @GenMacAddress(i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
