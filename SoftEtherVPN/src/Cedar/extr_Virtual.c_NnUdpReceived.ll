; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnUdpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnUdpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@NAT_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NnUdpReceived(%struct.TYPE_11__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = icmp eq %struct.TYPE_11__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %7
  br label %105

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ule i64 %28, 12
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %105

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %15, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  store i32* %36, i32** %16, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 12
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Endian16(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 12
  %49 = icmp ult i64 %42, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  br label %105

51:                                               ; preds = %31
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Endian16(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 12
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* @NAT_UDP, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @Endian16(i32 %63)
  %65 = call i32 @NnSetNat(%struct.TYPE_10__* %18, i32 %59, i32 0, i32 0, i32 0, i32 0, i32 %60, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.TYPE_10__* @SearchHash(i32 %68, %struct.TYPE_10__* %18)
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %19, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %51
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Endian16(i32 %100)
  %102 = load i32*, i32** %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @SendUdp(%struct.TYPE_12__* %90, i32 %93, i32 %96, i32 %97, i32 %101, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %25, %30, %50, %72, %51
  ret void
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @NnSetNat(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @SearchHash(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @SendUdp(%struct.TYPE_12__*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
