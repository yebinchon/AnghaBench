; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualUdpReceived.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualUdpReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@UDP_HEADER_SIZE = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_LLMNR = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_WSD = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_SSDP = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_NBTDGM = common dso_local global i64 0, align 8
@SPECIAL_UDP_PORT_NBTNS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualUdpReceived(%struct.TYPE_13__* %0, i64 %1, i64 %2, i8* %3, i64 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %8
  br label %233

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %17, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @UDP_HEADER_SIZE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %233

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @Endian16(i32 %39)
  store i64 %40, i64* %18, align 8
  %41 = load i64, i64* %18, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %233

45:                                               ; preds = %36
  %46 = load i8*, i8** %12, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i64, i64* @UDP_HEADER_SIZE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %19, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @UDP_HEADER_SIZE, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %20, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @Endian16(i32 %56)
  store i64 %57, i64* %21, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @Endian16(i32 %60)
  store i64 %61, i64* %22, align 8
  %62 = load i64, i64* %22, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %233

65:                                               ; preds = %45
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %22, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = load i64, i64* %20, align 8
  %79 = call i32 @UdpRecvForMe(%struct.TYPE_13__* %72, i64 %73, i64 %74, i64 %75, i64 %76, i8* %77, i64 %78)
  br label %233

80:                                               ; preds = %65
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %11, align 8
  %85 = call i64 @Endian32(i32 -536870660)
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83, %80
  %88 = load i64, i64* %22, align 8
  %89 = load i64, i64* @SPECIAL_UDP_PORT_LLMNR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i64, i64* %20, align 8
  %102 = call i32 @UdpRecvLlmnr(%struct.TYPE_13__* %95, i64 %96, i64 %97, i64 %98, i64 %99, i8* %100, i64 %101)
  br label %103

103:                                              ; preds = %94, %91
  br label %232

104:                                              ; preds = %87, %83
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* @SPECIAL_UDP_PORT_WSD, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* @SPECIAL_UDP_PORT_SSDP, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %15, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %22, align 8
  %123 = load i8*, i8** %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = call i32 @UdpRecvForInternet(%struct.TYPE_13__* %119, i64 %120, i64 %121, i64 4294967295, i64 %122, i8* %123, i64 %124, i32 0)
  br label %126

126:                                              ; preds = %118, %115
  br label %231

127:                                              ; preds = %111, %104
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %127
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* @SPECIAL_UDP_PORT_NBTDGM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* @SPECIAL_UDP_PORT_NBTNS, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = load i64, i64* %10, align 8
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %22, align 8
  %147 = load i8*, i8** %19, align 8
  %148 = load i64, i64* %20, align 8
  %149 = call i32 @UdpRecvForNetBiosBroadcast(%struct.TYPE_13__* %142, i64 %143, i64 %144, i64 %145, i64 %146, i8* %147, i64 %148, i32 0, i32 0)
  br label %150

150:                                              ; preds = %141, %138
  br label %230

151:                                              ; preds = %134, %127
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %167, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %11, align 8
  %156 = icmp eq i64 %155, 4294967295
  br i1 %156, label %167, label %157

157:                                              ; preds = %154
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @GetBroadcastAddress(i64 %161, i32 %164)
  %166 = icmp eq i64 %158, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %157, %154, %151
  %168 = load i32, i32* %15, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i64, i64* %22, align 8
  %176 = load i8*, i8** %19, align 8
  %177 = load i64, i64* %20, align 8
  %178 = call i32 @UdpRecvForBroadcast(%struct.TYPE_13__* %171, i64 %172, i64 %173, i64 %174, i64 %175, i8* %176, i64 %177)
  br label %179

179:                                              ; preds = %170, %167
  br label %229

180:                                              ; preds = %157
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @IsInNetwork(i64 %181, i64 %184, i32 %187)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %227

190:                                              ; preds = %180
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %192 = call i32 @NnIsActive(%struct.TYPE_13__* %191)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %216

194:                                              ; preds = %190
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %196, align 8
  %198 = icmp ne %struct.TYPE_12__* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %233

207:                                              ; preds = %199, %194
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %209 = load i64, i64* %10, align 8
  %210 = load i64, i64* %21, align 8
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* %22, align 8
  %213 = load i8*, i8** %19, align 8
  %214 = load i64, i64* %20, align 8
  %215 = call i32 @UdpRecvForInternet(%struct.TYPE_13__* %208, i64 %209, i64 %210, i64 %211, i64 %212, i8* %213, i64 %214, i32 0)
  br label %226

216:                                              ; preds = %190
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %218 = load i64, i64* %10, align 8
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %22, align 8
  %222 = load i8*, i8** %19, align 8
  %223 = load i64, i64* %20, align 8
  %224 = load i64, i64* %16, align 8
  %225 = call i32 @NnUdpRecvForInternet(%struct.TYPE_13__* %217, i64 %218, i64 %219, i64 %220, i64 %221, i8* %222, i64 %223, i64 %224)
  br label %226

226:                                              ; preds = %216, %207
  br label %228

227:                                              ; preds = %180
  br label %228

228:                                              ; preds = %227, %226
  br label %229

229:                                              ; preds = %228, %179
  br label %230

230:                                              ; preds = %229, %150
  br label %231

231:                                              ; preds = %230, %126
  br label %232

232:                                              ; preds = %231, %103
  br label %233

233:                                              ; preds = %28, %35, %44, %64, %206, %232, %71
  ret void
}

declare dso_local i64 @Endian16(i32) #1

declare dso_local i32 @UdpRecvForMe(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64) #1

declare dso_local i64 @Endian32(i32) #1

declare dso_local i32 @UdpRecvLlmnr(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64) #1

declare dso_local i32 @UdpRecvForInternet(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64, i32) #1

declare dso_local i32 @UdpRecvForNetBiosBroadcast(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64, i32, i32) #1

declare dso_local i64 @GetBroadcastAddress(i64, i32) #1

declare dso_local i32 @UdpRecvForBroadcast(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64) #1

declare dso_local i32 @IsInNetwork(i64, i64, i32) #1

declare dso_local i32 @NnIsActive(%struct.TYPE_13__*) #1

declare dso_local i32 @NnUdpRecvForInternet(%struct.TYPE_13__*, i64, i64, i64, i64, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
