; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeBuildPayload(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %83

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %58 [
    i32 131, label %12
    i32 133, label %17
    i32 129, label %22
    i32 141, label %27
    i32 145, label %32
    i32 144, label %37
    i32 134, label %42
    i32 143, label %47
    i32 137, label %52
    i32 136, label %52
    i32 135, label %52
    i32 140, label %57
    i32 142, label %57
    i32 130, label %57
    i32 132, label %57
    i32 128, label %57
    i32 139, label %57
    i32 138, label %57
  ]

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  %16 = call i32* @IkeBuildSaPayload(i32* %15)
  store i32* %16, i32** %4, align 8
  br label %63

17:                                               ; preds = %8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = call i32* @IkeBuildProposalPayload(i32* %20)
  store i32* %21, i32** %4, align 8
  br label %63

22:                                               ; preds = %8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 7
  %26 = call i32* @IkeBuildTransformPayload(i32* %25)
  store i32* %26, i32** %4, align 8
  br label %63

27:                                               ; preds = %8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = call i32* @IkeBuildIdPayload(i32* %30)
  store i32* %31, i32** %4, align 8
  br label %63

32:                                               ; preds = %8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = call i32* @IkeBuildCertPayload(i32* %35)
  store i32* %36, i32** %4, align 8
  br label %63

37:                                               ; preds = %8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = call i32* @IkeBuildCertRequestPayload(i32* %40)
  store i32* %41, i32** %4, align 8
  br label %63

42:                                               ; preds = %8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = call i32* @IkeBuildNoticePayload(i32* %45)
  store i32* %46, i32** %4, align 8
  br label %63

47:                                               ; preds = %8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = call i32* @IkeBuildDeletePayload(i32* %50)
  store i32* %51, i32** %4, align 8
  br label %63

52:                                               ; preds = %8, %8, %8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32* @IkeBuildNatOaPayload(i32* %55)
  store i32* %56, i32** %4, align 8
  br label %63

57:                                               ; preds = %8, %8, %8, %8, %8, %8, %8
  br label %58

58:                                               ; preds = %8, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32* @IkeBuildDataPayload(i32* %61)
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %58, %52, %47, %42, %37, %32, %27, %22, %17, %12
  %64 = load i32*, i32** %4, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @FreeBuf(i32* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32*, i32** %4, align 8
  %78 = call i32* @CloneBuf(i32* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  br label %81

81:                                               ; preds = %76, %63
  %82 = load i32*, i32** %4, align 8
  store i32* %82, i32** %2, align 8
  br label %83

83:                                               ; preds = %81, %7
  %84 = load i32*, i32** %2, align 8
  ret i32* %84
}

declare dso_local i32* @IkeBuildSaPayload(i32*) #1

declare dso_local i32* @IkeBuildProposalPayload(i32*) #1

declare dso_local i32* @IkeBuildTransformPayload(i32*) #1

declare dso_local i32* @IkeBuildIdPayload(i32*) #1

declare dso_local i32* @IkeBuildCertPayload(i32*) #1

declare dso_local i32* @IkeBuildCertRequestPayload(i32*) #1

declare dso_local i32* @IkeBuildNoticePayload(i32*) #1

declare dso_local i32* @IkeBuildDeletePayload(i32*) #1

declare dso_local i32* @IkeBuildNatOaPayload(i32*) #1

declare dso_local i32* @IkeBuildDataPayload(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32* @CloneBuf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
