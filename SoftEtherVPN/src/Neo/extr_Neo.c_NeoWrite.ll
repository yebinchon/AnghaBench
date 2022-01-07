; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_Neo.c_NeoWrite.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_Neo.c_NeoWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@NEO_MAX_PACKET_EXCHANGE = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@NEO_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@NEO_PACKET_HEADER_SIZE = common dso_local global i64 0, align 8
@g_is_win8 = common dso_local global i32 0, align 4
@NDIS_STATUS_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoWrite(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %140

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @NEO_NUM_PACKET(i8* %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @NEO_MAX_PACKET_EXCHANGE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %140

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %140

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %140

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FALSE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %140

36:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %117, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %44, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %7, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @NEO_SIZE_OF_PACKET(i8* %48, i64 %49)
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @NEO_MAX_PACKET_SIZE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i64, i64* @NEO_MAX_PACKET_SIZE, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** %2, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i8* @NEO_ADDR_OF_PACKET(i8* %63, i64 %64)
  store i8* %65, i8** %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @NeoCopy(i64 %68, i8* %69, i64 %70)
  %72 = load i32, i32* @g_is_win8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %62
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @NdisAdjustBufferLength(i32 %77, i64 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NDIS_STATUS_RESOURCES, align 4
  %84 = call i32 @NDIS_SET_PACKET_STATUS(i32 %82, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %89 = call i32 @NDIS_SET_PACKET_HEADER_SIZE(i32 %87, i64 %88)
  br label %116

90:                                               ; preds = %62
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @NEO_PACKET_HEADER_SIZE, align 8
  %110 = sub nsw i64 %108, %109
  %111 = call i32 @NdisMEthIndicateReceive(i32 %93, %struct.TYPE_7__* %94, i64 %97, i64 %98, i32* %104, i64 %107, i64 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @NdisMEthIndicateReceiveComplete(i32 %114)
  br label %116

116:                                              ; preds = %90, %74
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %4, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %4, align 8
  br label %37

120:                                              ; preds = %37
  %121 = load i64, i64* %3, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %121
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load i32, i32* @g_is_win8, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ctx, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %3, align 8
  %139 = call i32 @NdisMIndicateReceivePacket(i32 %134, i32 %137, i64 %138)
  br label %140

140:                                              ; preds = %10, %17, %21, %28, %35, %131, %120
  ret void
}

declare dso_local i64 @NEO_NUM_PACKET(i8*) #1

declare dso_local i64 @NEO_SIZE_OF_PACKET(i8*, i64) #1

declare dso_local i8* @NEO_ADDR_OF_PACKET(i8*, i64) #1

declare dso_local i32 @NeoCopy(i64, i8*, i64) #1

declare dso_local i32 @NdisAdjustBufferLength(i32, i64) #1

declare dso_local i32 @NDIS_SET_PACKET_STATUS(i32, i32) #1

declare dso_local i32 @NDIS_SET_PACKET_HEADER_SIZE(i32, i64) #1

declare dso_local i32 @NdisMEthIndicateReceive(i32, %struct.TYPE_7__*, i64, i64, i32*, i64, i64) #1

declare dso_local i32 @NdisMEthIndicateReceiveComplete(i32) #1

declare dso_local i32 @NdisMIndicateReceivePacket(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
