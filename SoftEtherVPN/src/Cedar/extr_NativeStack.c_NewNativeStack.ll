; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NewNativeStack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NewNativeStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"NewNativeStack: MAC Address = %s\0A\00", align 1
@NsMainThread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @NewNativeStack(%struct.TYPE_15__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %101

19:                                               ; preds = %15
  %20 = call i32 @GetLocalHostIP4(i32* %10)
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.TYPE_14__* @OpenEth(i8* %21, i32 0, i32 0, i32* null)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %8, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %101

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = icmp eq %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call %struct.TYPE_15__* @NewCedar(i32* null, i32* null)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %5, align 8
  store i32 1, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = call %struct.TYPE_13__* @ZeroMalloc(i32 56)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 9
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = call i32 @NewSocketPair(i32* %34, i32* %36, i32* %10, i32 1, i32* %10, i32 1)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 8
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @AddRef(i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @NsGenMacAddress(i32 %49, i8* %50, i8* %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @BinToStr(i8* %53, i32 64, i32 %56, i32 4)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %59 = call i32 @Debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @NewIPCBySock(%struct.TYPE_15__* %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @StrCpy(i32 %72, i32 4, i8* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = call i32 @EthGetCancel(%struct.TYPE_14__* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @NsMainThread, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = call i32 @NewThread(i32 %82, %struct.TYPE_13__* %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %31
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = call i32 @ReleaseCedar(%struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %89, %31
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %4, align 8
  br label %101

101:                                              ; preds = %92, %25, %18
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %102
}

declare dso_local i32 @GetLocalHostIP4(i32*) #1

declare dso_local %struct.TYPE_14__* @OpenEth(i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @NewCedar(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewSocketPair(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @NsGenMacAddress(i32, i8*, i8*) #1

declare dso_local i32 @BinToStr(i8*, i32, i32, i32) #1

declare dso_local i32 @Debug(i8*, i8*) #1

declare dso_local i32 @NewIPCBySock(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @EthGetCancel(%struct.TYPE_14__*) #1

declare dso_local i32 @NewThread(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseCedar(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
