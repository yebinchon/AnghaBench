; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_ParsePPPPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_ParsePPPPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32*, i32 }

@PPP_PROTOCOL_LCP = common dso_local global i64 0, align 8
@PPP_PROTOCOL_PAP = common dso_local global i64 0, align 8
@PPP_PROTOCOL_CHAP = common dso_local global i64 0, align 8
@PPP_PROTOCOL_IPCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ParsePPPPacket(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %117

14:                                               ; preds = %10
  %15 = call %struct.TYPE_5__* @ZeroMalloc(i32 32)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %6, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %114

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %114

31:                                               ; preds = %23
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %114

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %114

45:                                               ; preds = %37
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @READ_USHORT(i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 2
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %7, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %77, label %59

59:                                               ; preds = %45
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PPP_PROTOCOL_PAP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PPP_PROTOCOL_CHAP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PPP_PROTOCOL_IPCP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71, %65, %59, %45
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @Clone(i32* %81, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %80
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @ParseLCP(i64 %96, i32 %99, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %93
  br label %114

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %80
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %3, align 8
  br label %117

114:                                              ; preds = %110, %44, %36, %30, %22
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = call i32 @FreePPPPacket(%struct.TYPE_5__* %115)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %117

117:                                              ; preds = %114, %112, %13
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %118
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i32) #1

declare dso_local i64 @READ_USHORT(i32*) #1

declare dso_local i32 @Clone(i32*, i32) #1

declare dso_local i32* @ParseLCP(i64, i32, i32) #1

declare dso_local i32 @FreePPPPacket(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
