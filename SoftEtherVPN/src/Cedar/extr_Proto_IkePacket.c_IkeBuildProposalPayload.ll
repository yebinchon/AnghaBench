; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildProposalPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildProposalPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @IkeBuildProposalPayload(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %49

10:                                               ; preds = %1
  %11 = call i32 @Zero(%struct.TYPE_14__* %4, i32 16)
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @LIST_NUM(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call i32 @WriteBuf(%struct.TYPE_16__* %32, %struct.TYPE_14__* %4, i32 16)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = call i32 @WriteBufBuf(%struct.TYPE_16__* %34, %struct.TYPE_16__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_16__* @IkeBuildPayloadList(i32 %41)
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %6, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = call i32 @WriteBufBuf(%struct.TYPE_16__* %43, %struct.TYPE_16__* %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = call i32 @FreeBuf(%struct.TYPE_16__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %2, align 8
  br label %49

49:                                               ; preds = %10, %9
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %50
}

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_16__* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @WriteBufBuf(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @IkeBuildPayloadList(i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
