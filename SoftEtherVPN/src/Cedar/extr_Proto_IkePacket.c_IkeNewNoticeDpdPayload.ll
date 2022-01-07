; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNewNoticeDpdPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeNewNoticeDpdPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@IKE_PROTOCOL_ID_IKE = common dso_local global i32 0, align 4
@IKE_NOTICE_DPD_RESPONSE = common dso_local global i32 0, align 4
@IKE_NOTICE_DPD_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IkeNewNoticeDpdPayload(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call %struct.TYPE_5__* (...) @NewBuf()
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @Endian32(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @WriteBufInt64(%struct.TYPE_5__* %14, i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @WriteBufInt64(%struct.TYPE_5__* %17, i32 %18)
  %20 = load i32, i32* @IKE_PROTOCOL_ID_IKE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @IKE_NOTICE_DPD_RESPONSE, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @IKE_NOTICE_DPD_REQUEST, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @IkeNewNoticePayload(i32 %20, i32 %28, i32 %31, i32 %34, i32* %8, i32 4)
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %37 = call i32 @FreeBuf(%struct.TYPE_5__* %36)
  %38 = load i32*, i32** %9, align 8
  ret i32* %38
}

declare dso_local %struct.TYPE_5__* @NewBuf(...) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local i32 @WriteBufInt64(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @IkeNewNoticePayload(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
