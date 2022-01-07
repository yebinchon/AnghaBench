; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsProcessData.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_OpenVPN.c_OvsProcessData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64*, i32 }

@OPENVPN_TCP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"OvsProcessData(): Invalid payload size: %u bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"OvsProcessData(): ReadFifo() failed to read the packet\0A\00", align 1
@OPENVPN_PROTOCOL_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OvsProcessData(i8* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %22 = load i32, i32* @OPENVPN_TCP_MAX_PACKET_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = icmp eq %struct.TYPE_11__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %10, align 8
  br label %38

38:                                               ; preds = %78, %35
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %17, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = call i32 @FifoSize(i32* %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %102

49:                                               ; preds = %39
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @FifoPtr(i32* %50)
  %52 = call i64 @READ_USHORT(i32 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, 8
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %16, align 8
  %59 = mul nuw i64 4, %23
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49
  store i32 0, i32* %8, align 4
  %62 = load i64, i64* %15, align 8
  %63 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %102

64:                                               ; preds = %57
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %16, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %102

70:                                               ; preds = %64
  %71 = load i32*, i32** %17, align 8
  %72 = load i64, i64* %16, align 8
  %73 = call i64 @ReadFifo(i32* %71, i32* %25, i64 %72)
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  %77 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %102

78:                                               ; preds = %70
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds i32, i32* %25, i64 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @Clone(i32* %89, i64 %90)
  %92 = load i64, i64* %15, align 8
  %93 = call %struct.TYPE_10__* @NewUdpPacket(i32* %80, i32 %83, i32* %85, i32 %88, i32 %91, i64 %92)
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %14, align 8
  %94 = load i32, i32* @OPENVPN_PROTOCOL_TCP, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %101 = call i32 @Add(i32 %99, %struct.TYPE_10__* %100)
  br label %38

102:                                              ; preds = %76, %69, %61, %48
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @OvsRecvPacket(%struct.TYPE_12__* %103, i32 %106)
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %123, %102
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @LIST_NUM(i32 %112)
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call %struct.TYPE_10__* @LIST_DATA(i32 %118, i32 %119)
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %19, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %122 = call i32 @FreeUdpPacket(%struct.TYPE_10__* %121)
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %108

126:                                              ; preds = %108
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @DeleteAll(i32 %129)
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %161, %126
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @LIST_NUM(i32 %135)
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %164

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call %struct.TYPE_10__* @LIST_DATA(i32 %141, i32 %142)
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %20, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i64 @Endian16(i64 %147)
  store i64 %148, i64* %21, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @WriteFifo(i32* %149, i64* %21, i32 8)
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @WriteFifo(i32* %151, i64* %154, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %160 = call i32 @FreeUdpPacket(%struct.TYPE_10__* %159)
  br label %161

161:                                              ; preds = %138
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %131

164:                                              ; preds = %131
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DeleteAll(i32 %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %164, %34
  %171 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FifoSize(i32*) #2

declare dso_local i64 @READ_USHORT(i32) #2

declare dso_local i32 @FifoPtr(i32*) #2

declare dso_local i32 @Debug(i8*, ...) #2

declare dso_local i64 @ReadFifo(i32*, i32*, i64) #2

declare dso_local %struct.TYPE_10__* @NewUdpPacket(i32*, i32, i32*, i32, i32, i64) #2

declare dso_local i32 @Clone(i32*, i64) #2

declare dso_local i32 @Add(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @OvsRecvPacket(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @LIST_NUM(i32) #2

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32, i32) #2

declare dso_local i32 @FreeUdpPacket(%struct.TYPE_10__*) #2

declare dso_local i32 @DeleteAll(i32) #2

declare dso_local i64 @Endian16(i64) #2

declare dso_local i32 @WriteFifo(i32*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
