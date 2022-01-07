; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpSendPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_SSTP.c_SstpSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"SSTP Control Packet Send: Msg = %u, Num = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SstpSendPacket(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = icmp eq %struct.TYPE_12__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %54

13:                                               ; preds = %9
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @LIST_NUM(i32 %24)
  %26 = call i32 @Debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  br label %28

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call %struct.TYPE_14__* @SstpBuildPacket(%struct.TYPE_13__* %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %5, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = icmp eq %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %54

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_15__* @NewBlock(i32 %37, i32 %40, i32 0)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %6, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = call i32 @Free(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = call i32 @InsertQueue(i32 %51, %struct.TYPE_15__* %52)
  br label %54

54:                                               ; preds = %34, %33, %12
  ret void
}

declare dso_local i32 @Debug(i8*, i32, i32) #1

declare dso_local i32 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_14__* @SstpBuildPacket(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @NewBlock(i32, i32, i32) #1

declare dso_local i32 @Free(%struct.TYPE_14__*) #1

declare dso_local i32 @InsertQueue(i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
