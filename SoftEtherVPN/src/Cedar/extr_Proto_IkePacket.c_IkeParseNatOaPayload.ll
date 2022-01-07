; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseNatOaPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseNatOaPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IkeParseNatOaPayload(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca [4 x %struct.TYPE_11__], align 16
  %8 = alloca [16 x %struct.TYPE_11__], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp eq %struct.TYPE_12__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %71

16:                                               ; preds = %12
  %17 = call i32 @Zero(i32* %9, i32 4)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @ReadBuf(i32* %18, %struct.TYPE_11__* %6, i32 4)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %71

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %66 [
    i32 129, label %35
    i32 128, label %56
  ]

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %38 = call i32 @ReadBuf(i32* %36, %struct.TYPE_11__* %37, i32 16)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %71

42:                                               ; preds = %35
  %43 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 1
  %45 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 2
  %46 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %7, i64 0, i64 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SetIP(i32* %9, i32 %48, i32 %50, i32 %52, i32 %54)
  br label %67

56:                                               ; preds = %32
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds [16 x %struct.TYPE_11__], [16 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %59 = call i32 @ReadBuf(i32* %57, %struct.TYPE_11__* %58, i32 64)
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 64
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %71

63:                                               ; preds = %56
  %64 = getelementptr inbounds [16 x %struct.TYPE_11__], [16 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %65 = call i32 @SetIP6(i32* %9, %struct.TYPE_11__* %64)
  br label %67

66:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %71

67:                                               ; preds = %63, %42
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = call i32 @Copy(i32* %69, i32* %9, i32 4)
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %66, %62, %41, %31, %22, %15
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @ReadBuf(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @SetIP6(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
