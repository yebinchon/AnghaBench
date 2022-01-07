; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSendDhcpRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_IPC.c_IPCSendDhcpRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @IPCSendDhcpRequest(%struct.TYPE_22__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [3 x i32*], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %20, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %7
  %29 = load i32*, i32** %12, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %28, %7
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %207

38:                                               ; preds = %34, %31
  %39 = load i64, i64* %14, align 8
  %40 = sdiv i64 %39, 3
  %41 = sub nsw i64 %40, 100
  %42 = call i64 @MAX(i32 1, i64 %41)
  store i64 %42, i64* %16, align 8
  %43 = call i64 (...) @Tick64()
  %44 = load i64, i64* %14, align 8
  %45 = add nsw i64 %43, %44
  store i64 %45, i64* %17, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %17, align 8
  %50 = call i32 @AddInterrupt(i32 %48, i64 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %20, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %20, align 8
  %58 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 %56
  store i32* %55, i32** %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %20, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %20, align 8
  %66 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 %64
  store i32* %63, i32** %66, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %38
  %70 = load i32*, i32** %15, align 8
  %71 = load i64, i64* %20, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %20, align 8
  %73 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 %71
  store i32* %70, i32** %73, align 8
  br label %74

74:                                               ; preds = %69, %38
  br label %75

75:                                               ; preds = %74, %199
  %76 = call i64 (...) @Tick64()
  store i64 %76, i64* %21, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = call i32 @IPCFlushArpTable(%struct.TYPE_22__* %77)
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i64, i64* %21, align 8
  %83 = load i64, i64* %17, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %207

86:                                               ; preds = %81, %75
  %87 = load i64, i64* %18, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* %21, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %89, %86
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = call %struct.TYPE_24__* @IPCBuildDhcpRequest(%struct.TYPE_22__* %94, i32* %95, i64 %96, i32* %97)
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %22, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %100 = icmp eq %struct.TYPE_24__* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %207

102:                                              ; preds = %93
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @IPCSendIPv4(%struct.TYPE_22__* %103, i32 %106, i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %112 = call i32 @FreeBuf(%struct.TYPE_24__* %111)
  %113 = load i64, i64* %13, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %207

116:                                              ; preds = %102
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %16, align 8
  %119 = add nsw i64 %117, %118
  store i64 %119, i64* %18, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i32 @AddInterrupt(i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %116, %89
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = call i32 @IPCProcessL3Events(%struct.TYPE_22__* %126)
  br label %128

128:                                              ; preds = %125, %170
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %130 = call %struct.TYPE_25__* @IPCRecvIPv4(%struct.TYPE_22__* %129)
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %23, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %132 = icmp eq %struct.TYPE_25__* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %175

134:                                              ; preds = %128
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32* @ParsePacketIPv4WithDummyMacHeader(i32 %137, i32 %140)
  store i32* %141, i32** %24, align 8
  %142 = load i32*, i32** %24, align 8
  %143 = call %struct.TYPE_23__* @ParseDHCPv4Data(i32* %142)
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %25, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %145 = icmp ne %struct.TYPE_23__* %144, null
  br i1 %145, label %146, label %170

146:                                              ; preds = %134
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @Endian32(i32 %151)
  %153 = load i64, i64* %11, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %146
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %13, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32*, i32** %24, align 8
  %163 = call i32 @FreePacketWithData(i32* %162)
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %165 = call i32 @FreeBlock(%struct.TYPE_25__* %164)
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %166, %struct.TYPE_23__** %8, align 8
  br label %207

167:                                              ; preds = %155, %146
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %169 = call i32 @FreeDHCPv4Data(%struct.TYPE_23__* %168)
  br label %170

170:                                              ; preds = %167, %134
  %171 = load i32*, i32** %24, align 8
  %172 = call i32 @FreePacketWithData(i32* %171)
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %174 = call i32 @FreeBlock(%struct.TYPE_25__* %173)
  br label %128

175:                                              ; preds = %133
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @IsTubeConnected(i32* %180)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %175
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @IsTubeConnected(i32* %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %183
  %192 = load i32*, i32** %15, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @IsTubeConnected(i32* %195)
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %183, %175
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  br label %207

199:                                              ; preds = %194, %191
  %200 = getelementptr inbounds [3 x i32*], [3 x i32*]* %19, i64 0, i64 0
  %201 = load i64, i64* %20, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @GetNextIntervalForInterrupt(i32 %204)
  %206 = call i32 @WaitForTubes(i32** %200, i64 %201, i32 %205)
  br label %75

207:                                              ; preds = %198, %161, %115, %101, %85, %37
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  ret %struct.TYPE_23__* %208
}

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @AddInterrupt(i32, i64) #1

declare dso_local i32 @IPCFlushArpTable(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @IPCBuildDhcpRequest(%struct.TYPE_22__*, i32*, i64, i32*) #1

declare dso_local i32 @IPCSendIPv4(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_24__*) #1

declare dso_local i32 @IPCProcessL3Events(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @IPCRecvIPv4(%struct.TYPE_22__*) #1

declare dso_local i32* @ParsePacketIPv4WithDummyMacHeader(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ParseDHCPv4Data(i32*) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @FreePacketWithData(i32*) #1

declare dso_local i32 @FreeBlock(%struct.TYPE_25__*) #1

declare dso_local i32 @FreeDHCPv4Data(%struct.TYPE_23__*) #1

declare dso_local i32 @IsTubeConnected(i32*) #1

declare dso_local i32 @WaitForTubes(i32**, i64, i32) #1

declare dso_local i32 @GetNextIntervalForInterrupt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
