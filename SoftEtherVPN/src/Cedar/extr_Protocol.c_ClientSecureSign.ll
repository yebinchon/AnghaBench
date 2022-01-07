; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientSecureSign.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientSecureSign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__*, i32*, i32*, i64, i32, i32, i32*, i32, i32, i32, %struct.TYPE_18__* }

@SHA1_SIZE = common dso_local global i32 0, align 4
@ClientSecureSignThread = common dso_local global i32 0, align 4
@CONNECTING_POOLING_SPAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientSecureSign(%struct.TYPE_18__* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = icmp eq %struct.TYPE_18__* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32**, i32*** %9, align 8
  %28 = icmp eq i32** %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %4
  store i32 0, i32* %5, align 4
  br label %132

30:                                               ; preds = %26
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %12, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %13, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %14, align 8
  %40 = call %struct.TYPE_17__* @ZeroMalloc(i32 80)
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %10, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 11
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %43, align 8
  %44 = call %struct.TYPE_17__* @ZeroMallocEx(i32 80, i32 1)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %11, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @StrCpy(i32 %49, i32 4, i32 %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @StrCpy(i32 %56, i32 4, i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @SHA1_SIZE, align 4
  %75 = call i32 @Copy(i32* %72, i32* %73, i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @ClientSecureSignThread, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = call i32* @NewThread(i32 %81, %struct.TYPE_17__* %82)
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @WaitThreadInit(i32* %84)
  %86 = call i64 (...) @Tick64()
  store i64 %86, i64* %16, align 8
  br label %87

87:                                               ; preds = %30, %103
  %88 = call i64 (...) @Tick64()
  %89 = load i64, i64* %16, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i64, i64* @CONNECTING_POOLING_SPAN, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = call i64 (...) @Tick64()
  store i64 %94, i64* %16, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = call i32 @ClientUploadNoop(%struct.TYPE_18__* %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %106

103:                                              ; preds = %97
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @WaitThread(i32* %104, i32 500)
  br label %87

106:                                              ; preds = %102
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @ReleaseThread(i32* %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @Copy(i32* %115, i32* %118, i32 8)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32**, i32*** %9, align 8
  store i32* %122, i32** %123, align 8
  br label %124

124:                                              ; preds = %114, %106
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = call i32 @Free(%struct.TYPE_17__* %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = call i32 @Free(%struct.TYPE_17__* %129)
  %131 = load i32, i32* %17, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %124, %29
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_17__* @ZeroMallocEx(i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @ClientUploadNoop(%struct.TYPE_18__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
