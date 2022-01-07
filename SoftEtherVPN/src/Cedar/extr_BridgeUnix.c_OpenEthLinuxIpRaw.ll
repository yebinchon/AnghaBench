; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_OpenEthLinuxIpRaw.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_BridgeUnix.c_OpenEthLinuxIpRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@BRIDGE_SPECIAL_IPRAW_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @OpenEthLinuxIpRaw() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = call i32 (...) @IsRawIpBridgeSupported()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  br label %187

6:                                                ; preds = %0
  %7 = call %struct.TYPE_9__* @ZeroMalloc(i32 88)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load i32, i32* @IPPROTO_TCP, align 4
  %11 = call i32 @MAKE_SPECIAL_PORT(i32 %10)
  %12 = call i8* @NewUDP4(i32 %11, i32* null)
  %13 = bitcast i8* %12 to %struct.TYPE_10__*
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 10
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %15, align 8
  %16 = load i32, i32* @IPPROTO_UDP, align 4
  %17 = call i32 @MAKE_SPECIAL_PORT(i32 %16)
  %18 = call i8* @NewUDP4(i32 %17, i32* null)
  %19 = bitcast i8* %18 to %struct.TYPE_10__*
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load i32, i32* @IPPROTO_ICMP, align 4
  %23 = call i32 @MAKE_SPECIAL_PORT(i32 %22)
  %24 = call i8* @NewUDP4(i32 %23, i32* null)
  %25 = bitcast i8* %24 to %struct.TYPE_10__*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 7
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = icmp eq %struct.TYPE_10__* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %6
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 9
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %37, %32, %6
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 10
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 @ReleaseSock(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 9
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @ReleaseSock(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = call i32 @ReleaseSock(%struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = call i32 @Free(%struct.TYPE_9__* %55)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  br label %187

57:                                               ; preds = %37
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 10
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 @ClearSockDfBit(%struct.TYPE_10__* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = call i32 @ClearSockDfBit(%struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 7
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i32 @ClearSockDfBit(%struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 10
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 @SetRawSockHeaderIncludeOption(%struct.TYPE_10__* %72, i32 1)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 9
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @SetRawSockHeaderIncludeOption(%struct.TYPE_10__* %76, i32 1)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i32 @SetRawSockHeaderIncludeOption(%struct.TYPE_10__* %80, i32 1)
  %82 = load i32, i32* @BRIDGE_SPECIAL_IPRAW_NAME, align 4
  %83 = call i8* @CopyStr(i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 12
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @BRIDGE_SPECIAL_IPRAW_NAME, align 4
  %87 = call i8* @CopyStr(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 11
  store i8* %87, i8** %89, align 8
  %90 = call %struct.TYPE_11__* (...) @NewCancel()
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @UnixDeletePipe(i32 %97, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 -1, i32* %107, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 -1, i32* %111, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 10
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @UnixSetSocketNonBlockingMode(i32 %116, i32 1)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 9
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @UnixSetSocketNonBlockingMode(i32 %122, i32 1)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @UnixSetSocketNonBlockingMode(i32 %128, i32 1)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 10
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 9
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 4
  store i32 %156, i32* %160, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  store i32 1, i32* %164, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 5
  store i32 1, i32* %168, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 6
  %171 = call i32 @SetIP(i32* %170, i32 10, i32 171, i32 7, i32 253)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = call i32 @SetIP(i32* %173, i32 10, i32 171, i32 7, i32 254)
  %175 = call i32 (...) @NewQueueFast()
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  store i32 67000, i32* %179, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @Malloc(i32 %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %186, %struct.TYPE_9__** %1, align 8
  br label %187

187:                                              ; preds = %57, %42, %5
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %188
}

declare dso_local i32 @IsRawIpBridgeSupported(...) #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i8* @NewUDP4(i32, i32*) #1

declare dso_local i32 @MAKE_SPECIAL_PORT(i32) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_10__*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local i32 @ClearSockDfBit(%struct.TYPE_10__*) #1

declare dso_local i32 @SetRawSockHeaderIncludeOption(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @CopyStr(i32) #1

declare dso_local %struct.TYPE_11__* @NewCancel(...) #1

declare dso_local i32 @UnixDeletePipe(i32, i32) #1

declare dso_local i32 @UnixSetSocketNonBlockingMode(i32, i32) #1

declare dso_local i32 @SetIP(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NewQueueFast(...) #1

declare dso_local i32 @Malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
