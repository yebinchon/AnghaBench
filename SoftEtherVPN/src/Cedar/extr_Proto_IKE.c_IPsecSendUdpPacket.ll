; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSendUdpPacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IPsecSendUdpPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8* }

@IP_PROTO_UDP = common dso_local global i32 0, align 4
@IPSEC_PORT_L2TP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IPsecSendUdpPacket(i32* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca [1600 x i32], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %6
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = icmp eq %struct.TYPE_15__* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %20, %6
  br label %122

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 32, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %36, 6400
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  %40 = call i32* @Malloc(i32 %39)
  store i32* %40, i32** %13, align 8
  br label %43

41:                                               ; preds = %30
  %42 = getelementptr inbounds [1600 x i32], [1600 x i32]* %16, i64 0, i64 0
  store i32* %42, i32** %13, align 8
  store i32 1, i32* %17, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32*, i32** %13, align 8
  %45 = bitcast i32* %44 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %15, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @Endian16(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @Endian16(i32 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = call i8* @Endian16(i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 32
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @Copy(i32* %61, i32* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 5
  %67 = call i64 @IsIP6(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %43
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IsIPsecSaTunnelMode(i32 %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %69
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* @IP_PROTO_UDP, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i8* @CalcChecksumForIPv6(i32* %80, i32* %85, i32 %86, %struct.TYPE_14__* %87, i32 %88, i32 0)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %109

92:                                               ; preds = %69
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32, i32* @IP_PROTO_UDP, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i8* @CalcChecksumForIPv6(i32* %97, i32* %102, i32 %103, %struct.TYPE_14__* %104, i32 %105, i32 0)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %92, %75
  br label %110

110:                                              ; preds = %109, %43
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @IP_PROTO_UDP, align 4
  %116 = call i32 @IPsecSendPacketByIkeClient(i32* %111, %struct.TYPE_15__* %112, i32* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @Free(i32* %120)
  br label %122

122:                                              ; preds = %29, %119, %110
  ret void
}

declare dso_local i32* @Malloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i32 @IsIPsecSaTunnelMode(i32) #1

declare dso_local i8* @CalcChecksumForIPv6(i32*, i32*, i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @IPsecSendPacketByIkeClient(i32*, %struct.TYPE_15__*, i32*, i32, i32) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
