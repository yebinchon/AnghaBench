; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParsePayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParsePayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @IkeParsePayload(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %93

11:                                               ; preds = %2
  %12 = call %struct.TYPE_7__* @ZeroMalloc(i32 48)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %74 [
    i32 131, label %19
    i32 133, label %25
    i32 129, label %31
    i32 141, label %37
    i32 145, label %43
    i32 144, label %49
    i32 134, label %55
    i32 143, label %61
    i32 137, label %67
    i32 136, label %67
    i32 135, label %67
    i32 140, label %73
    i32 142, label %73
    i32 130, label %73
    i32 132, label %73
    i32 128, label %73
    i32 139, label %73
    i32 138, label %73
  ]

19:                                               ; preds = %11
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 9
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @IkeParseSaPayload(i32* %22, i32* %23)
  store i32 %24, i32* %7, align 4
  br label %80

25:                                               ; preds = %11
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @IkeParseProposalPayload(i32* %28, i32* %29)
  store i32 %30, i32* %7, align 4
  br label %80

31:                                               ; preds = %11
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @IkeParseTransformPayload(i32* %34, i32* %35)
  store i32 %36, i32* %7, align 4
  br label %80

37:                                               ; preds = %11
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @IkeParseIdPayload(i32* %40, i32* %41)
  store i32 %42, i32* %7, align 4
  br label %80

43:                                               ; preds = %11
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @IkeParseCertPayload(i32* %46, i32* %47)
  store i32 %48, i32* %7, align 4
  br label %80

49:                                               ; preds = %11
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @IkeParseCertRequestPayload(i32* %52, i32* %53)
  store i32 %54, i32* %7, align 4
  br label %80

55:                                               ; preds = %11
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @IkeParseNoticePayload(i32* %58, i32* %59)
  store i32 %60, i32* %7, align 4
  br label %80

61:                                               ; preds = %11
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @IkeParseDeletePayload(i32* %64, i32* %65)
  store i32 %66, i32* %7, align 4
  br label %80

67:                                               ; preds = %11, %11, %11
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @IkeParseNatOaPayload(i32* %70, i32* %71)
  store i32 %72, i32* %7, align 4
  br label %80

73:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  br label %74

74:                                               ; preds = %11, %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @IkeParseDataPayload(i32* %77, i32* %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %67, %61, %55, %49, %43, %37, %31, %25, %19
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = call i32 @Free(%struct.TYPE_7__* %84)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %91

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @CloneBuf(i32* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %3, align 8
  br label %93

93:                                               ; preds = %91, %10
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %94
}

declare dso_local %struct.TYPE_7__* @ZeroMalloc(i32) #1

declare dso_local i32 @IkeParseSaPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseProposalPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseTransformPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseIdPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseCertPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseCertRequestPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseNoticePayload(i32*, i32*) #1

declare dso_local i32 @IkeParseDeletePayload(i32*, i32*) #1

declare dso_local i32 @IkeParseNatOaPayload(i32*, i32*) #1

declare dso_local i32 @IkeParseDataPayload(i32*, i32*) #1

declare dso_local i32 @Free(%struct.TYPE_7__*) #1

declare dso_local i32 @CloneBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
