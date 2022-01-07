; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNewNoticeErrorNoProposalChosenPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNewNoticeErrorNoProposalChosenPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@IKE_PROTOCOL_ID_IPSEC_ESP = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IKE = common dso_local global i32 0, align 4
@IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeNewNoticeErrorNoProposalChosenPayload(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @WriteBufInt64(%struct.TYPE_5__* %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @WriteBufInt64(%struct.TYPE_5__* %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @IKE_PROTOCOL_ID_IPSEC_ESP, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IKE_PROTOCOL_ID_IKE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* @IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @IkeNewNoticePayload(i32 %23, i32 %24, i32 %27, i32 %30, i32* null, i32 0)
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = call i32 @FreeBuf(%struct.TYPE_5__* %32)
  %34 = load i32*, i32** %8, align 8
  ret i32* %34
}

declare dso_local %struct.TYPE_5__* @NewBuf(...) #1

declare dso_local i32 @WriteBufInt64(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @IkeNewNoticePayload(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
