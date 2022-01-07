; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcCallInternal.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Remote.c_RpcCallInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }

@MAX_PACK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RpcCallInternal(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32* null, i32** %3, align 8
  br label %115

16:                                               ; preds = %12
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %115

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_14__* @PackToBuf(i32* %23)
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %6, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @Endian32(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = call i32 @SendAdd(%struct.TYPE_15__* %31, i32* %7, i32 4)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @SendAdd(%struct.TYPE_15__* %35, i32* %38, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = call i32 @FreeBuf(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @SendNow(%struct.TYPE_15__* %47, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %115

56:                                               ; preds = %22
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = bitcast i32* %7 to i8*
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RecvAll(%struct.TYPE_15__* %59, i8* %60, i32 4, i32 %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32* null, i32** %3, align 8
  br label %115

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @Endian32(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MAX_PACK_SIZE, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32* null, i32** %3, align 8
  br label %115

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @MallocEx(i32 %77, i32 1)
  store i8* %78, i8** %9, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @RecvAll(%struct.TYPE_15__* %81, i8* %82, i32 %83, i32 %88)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @Free(i8* %92)
  store i32* null, i32** %3, align 8
  br label %115

94:                                               ; preds = %76
  %95 = call %struct.TYPE_14__* (...) @NewBuf()
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %6, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @WriteBuf(%struct.TYPE_14__* %96, i8* %97, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = call i32 @SeekBuf(%struct.TYPE_14__* %100, i32 0, i32 0)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @Free(i8* %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = call i32* @BufToPack(%struct.TYPE_14__* %104)
  store i32* %105, i32** %8, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %94
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = call i32 @FreeBuf(%struct.TYPE_14__* %109)
  store i32* null, i32** %3, align 8
  br label %115

111:                                              ; preds = %94
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = call i32 @FreeBuf(%struct.TYPE_14__* %112)
  %114 = load i32*, i32** %8, align 8
  store i32* %114, i32** %3, align 8
  br label %115

115:                                              ; preds = %111, %108, %91, %75, %68, %55, %21, %15
  %116 = load i32*, i32** %3, align 8
  ret i32* %116
}

declare dso_local %struct.TYPE_14__* @PackToBuf(i32*) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local i32 @SendAdd(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_14__*) #1

declare dso_local i32 @SendNow(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @RecvAll(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i8* @MallocEx(i32, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local %struct.TYPE_14__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @BufToPack(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
