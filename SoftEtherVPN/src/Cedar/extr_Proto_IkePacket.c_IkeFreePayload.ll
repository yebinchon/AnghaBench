; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeFreePayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeFreePayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeFreePayload(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %70

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %52 [
    i32 131, label %10
    i32 133, label %15
    i32 129, label %20
    i32 141, label %25
    i32 145, label %30
    i32 144, label %35
    i32 134, label %40
    i32 143, label %45
    i32 137, label %50
    i32 136, label %50
    i32 135, label %50
    i32 140, label %51
    i32 142, label %51
    i32 130, label %51
    i32 132, label %51
    i32 128, label %51
    i32 139, label %51
    i32 138, label %51
  ]

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  %14 = call i32 @IkeFreeSaPayload(i32* %13)
  br label %57

15:                                               ; preds = %6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = call i32 @IkeFreeProposalPayload(i32* %18)
  br label %57

20:                                               ; preds = %6
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  %24 = call i32 @IkeFreeTransformPayload(i32* %23)
  br label %57

25:                                               ; preds = %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = call i32 @IkeFreeIdPayload(i32* %28)
  br label %57

30:                                               ; preds = %6
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = call i32 @IkeFreeCertPayload(i32* %33)
  br label %57

35:                                               ; preds = %6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = call i32 @IkeFreeCertRequestPayload(i32* %38)
  br label %57

40:                                               ; preds = %6
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = call i32 @IkeFreeNoticePayload(i32* %43)
  br label %57

45:                                               ; preds = %6
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i32 @IkeFreeDeletePayload(i32* %48)
  br label %57

50:                                               ; preds = %6, %6, %6
  br label %57

51:                                               ; preds = %6, %6, %6, %6, %6, %6, %6
  br label %52

52:                                               ; preds = %6, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @IkeFreeDataPayload(i32* %55)
  br label %57

57:                                               ; preds = %52, %50, %45, %40, %35, %30, %25, %20, %15, %10
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @FreeBuf(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = call i32 @Free(%struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %67, %5
  ret void
}

declare dso_local i32 @IkeFreeSaPayload(i32*) #1

declare dso_local i32 @IkeFreeProposalPayload(i32*) #1

declare dso_local i32 @IkeFreeTransformPayload(i32*) #1

declare dso_local i32 @IkeFreeIdPayload(i32*) #1

declare dso_local i32 @IkeFreeCertPayload(i32*) #1

declare dso_local i32 @IkeFreeCertRequestPayload(i32*) #1

declare dso_local i32 @IkeFreeNoticePayload(i32*) #1

declare dso_local i32 @IkeFreeDeletePayload(i32*) #1

declare dso_local i32 @IkeFreeDataPayload(i32*) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @Free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
