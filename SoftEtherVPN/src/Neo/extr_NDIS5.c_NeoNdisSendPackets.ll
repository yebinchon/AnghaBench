; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisSendPackets.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisSendPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ctx = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@NEO_MIN_PACKET_SIZE = common dso_local global i64 0, align 8
@NEO_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@g_is_win8 = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoNdisSendPackets(i32 %0, i32** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %167

17:                                               ; preds = %3
  %18 = call i32 (...) @NeoCheckConnectState()
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %167

22:                                               ; preds = %17
  %23 = load i32**, i32*** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @NeoNdisSendPacketsHaltCheck(i32** %23, i64 %24)
  %26 = load i64, i64* @FALSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %167

29:                                               ; preds = %22
  %30 = call i32 (...) @NeoLockPacketQueue()
  %31 = load i32**, i32*** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @NeoNdisSendPacketsHaltCheck(i32** %31, i64 %32)
  %34 = load i64, i64* @FALSE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (...) @NeoUnlockPacketQueue()
  br label %167

38:                                               ; preds = %29
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %158, %38
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %161

43:                                               ; preds = %39
  %44 = load i32**, i32*** %5, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @NdisQueryPacket(i32* %47, i32* null, i32* null, i64* %9, i64* %11)
  %49 = load i64, i64* %11, align 8
  %50 = call i32* @NeoMalloc(i64 %49)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %61, %43
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @NdisQueryBuffer(i64 %56, i32** %10, i64* %12)
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %71

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @NeoCopy(i32* %62, i32* %63, i64 %64)
  %66 = load i64, i64* %12, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @NdisGetNextBuffer(i64 %69, i64* %9)
  br label %52

71:                                               ; preds = %60, %52
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @NEO_MIN_PACKET_SIZE, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %135

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @NEO_MAX_PACKET_SIZE, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load i32**, i32*** %5, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i32*, i32** %80, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  %85 = call i32 @NDIS_SET_PACKET_STATUS(i32* %83, i32 %84)
  %86 = load i64, i64* @g_is_win8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32**, i32*** %5, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  %97 = call i32 @NdisMSendComplete(i32 %91, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %79
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @NeoFree(i32* %104)
  br label %134

106:                                              ; preds = %75
  %107 = load i32*, i32** %7, align 8
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @NeoInsertQueue(i32* %107, i64 %108)
  %110 = load i32**, i32*** %5, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %115 = call i32 @NDIS_SET_PACKET_STATUS(i32* %113, i32 %114)
  %116 = load i64, i64* @g_is_win8, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %106
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32**, i32*** %5, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %127 = call i32 @NdisMSendComplete(i32 %121, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %106
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %98
  br label %157

135:                                              ; preds = %71
  %136 = load i32**, i32*** %5, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i32*, i32** %136, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %141 = call i32 @NDIS_SET_PACKET_STATUS(i32* %139, i32 %140)
  %142 = load i64, i64* @g_is_win8, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %135
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32**, i32*** %5, align 8
  %149 = load i64, i64* %13, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %153 = call i32 @NdisMSendComplete(i32 %147, i32* %151, i32 %152)
  br label %154

154:                                              ; preds = %144, %135
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @NeoFree(i32* %155)
  br label %157

157:                                              ; preds = %154, %134
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %13, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %39

161:                                              ; preds = %39
  %162 = call i32 (...) @NeoUnlockPacketQueue()
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @NeoSet(i32 %165)
  br label %167

167:                                              ; preds = %161, %36, %28, %21, %16
  ret void
}

declare dso_local i32 @NeoCheckConnectState(...) #1

declare dso_local i64 @NeoNdisSendPacketsHaltCheck(i32**, i64) #1

declare dso_local i32 @NeoLockPacketQueue(...) #1

declare dso_local i32 @NeoUnlockPacketQueue(...) #1

declare dso_local i32 @NdisQueryPacket(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32* @NeoMalloc(i64) #1

declare dso_local i32 @NdisQueryBuffer(i64, i32**, i64*) #1

declare dso_local i32 @NeoCopy(i32*, i32*, i64) #1

declare dso_local i32 @NdisGetNextBuffer(i64, i64*) #1

declare dso_local i32 @NDIS_SET_PACKET_STATUS(i32*, i32) #1

declare dso_local i32 @NdisMSendComplete(i32, i32*, i32) #1

declare dso_local i32 @NeoFree(i32*) #1

declare dso_local i32 @NeoInsertQueue(i32*, i64) #1

declare dso_local i32 @NeoSet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
