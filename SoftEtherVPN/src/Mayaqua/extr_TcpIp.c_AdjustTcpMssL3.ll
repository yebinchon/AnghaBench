; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_AdjustTcpMssL3.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_AdjustTcpMssL3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i32*, i64, %struct.TYPE_14__* }

@IP_PROTO_TCP = common dso_local global i64 0, align 8
@IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@TCP_SYN = common dso_local global i32 0, align 4
@TCP_RST = common dso_local global i32 0, align 4
@TCP_PSH = common dso_local global i32 0, align 4
@TCP_URG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AdjustTcpMssL3(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %3
  store i32 0, i32* %4, align 4
  br label %276

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %104

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 24
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %276

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %14, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IP_PROTO_TCP, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %276

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %53 = call i64 @IPV4_GET_OFFSET(%struct.TYPE_15__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %276

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = call i32 @IPV4_GET_FLAGS(%struct.TYPE_15__* %57)
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %276

62:                                               ; preds = %56
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %64 = call i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_15__* %63)
  %65 = mul nsw i32 %64, 4
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 24
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %276

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %276

75:                                               ; preds = %70
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = call i32 @READ_USHORT(i32* %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %276

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %276

88:                                               ; preds = %83
  %89 = load i32, i32* %16, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %5, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ult i64 %97, 16
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %276

100:                                              ; preds = %88
  %101 = load i32*, i32** %5, align 8
  %102 = bitcast i32* %101 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %9, align 8
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %10, align 4
  br label %151

104:                                              ; preds = %29
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 6
  br i1 %106, label %107, label %149

107:                                              ; preds = %104
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ParsePacketIPv6Header(%struct.TYPE_13__* %18, i32* %108, i32 %109)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %276

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  store %struct.TYPE_14__* %115, %struct.TYPE_14__** %15, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %117 = icmp eq %struct.TYPE_14__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %276

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IP_PROTO_TCP, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %276

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %276

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @IPV6_GET_FLAGS(i32* %136)
  %138 = load i32, i32* @IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %276

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %130
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %10, align 4
  br label %150

149:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %276

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %100
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = icmp eq %struct.TYPE_12__* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %156, 16
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %151
  store i32 0, i32* %4, align 4
  br label %276

159:                                              ; preds = %154
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %161 = call i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_12__* %160)
  %162 = mul nsw i32 %161, 4
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ult i64 %164, 16
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %276

167:                                              ; preds = %159
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %276

172:                                              ; preds = %167
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @TCP_SYN, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %200, label %179

179:                                              ; preds = %172
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @TCP_RST, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %200, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @TCP_PSH, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %186
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @TCP_URG, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193, %186, %179, %172
  store i32 0, i32* %4, align 4
  br label %276

201:                                              ; preds = %193
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %203 = bitcast %struct.TYPE_12__* %202 to i32*
  %204 = getelementptr inbounds i32, i32* %203, i64 16
  store i32* %204, i32** %12, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 %206, 16
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %13, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %210 = icmp ne %struct.TYPE_14__* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %201
  %212 = load i32, i32* %7, align 4
  %213 = icmp sge i32 %212, 20
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %7, align 4
  %216 = sub nsw i32 %215, 20
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %201
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @MAX(i32 %219, i32 64)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp sge i32 %221, 4
  br i1 %222, label %223, label %275

223:                                              ; preds = %218
  %224 = load i32*, i32** %12, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %228, label %275

228:                                              ; preds = %223
  %229 = load i32*, i32** %12, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 4
  br i1 %232, label %233, label %275

233:                                              ; preds = %228
  %234 = load i32*, i32** %12, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  %236 = call i32 @READ_USHORT(i32* %235)
  store i32 %236, i32* %19, align 4
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %276

241:                                              ; preds = %233
  %242 = load i32*, i32** %12, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @WRITE_USHORT(i32* %243, i32 %244)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %249 = icmp ne %struct.TYPE_15__* %248, null
  br i1 %249, label %250, label %263

250:                                              ; preds = %241
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i64, i64* @IP_PROTO_TCP, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i64 @CalcChecksumForIPv4(i32 %253, i32 %256, i64 %257, %struct.TYPE_12__* %258, i32 %259, i32 0)
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  store i64 %260, i64* %262, align 8
  br label %274

263:                                              ; preds = %241
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  %268 = load i64, i64* @IP_PROTO_TCP, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %270 = load i32, i32* %10, align 4
  %271 = call i64 @CalcChecksumForIPv6(i32* %265, i32* %267, i64 %268, %struct.TYPE_12__* %269, i32 %270, i32 0)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %263, %250
  store i32 1, i32* %4, align 4
  br label %276

275:                                              ; preds = %228, %223, %218
  store i32 0, i32* %4, align 4
  br label %276

276:                                              ; preds = %275, %274, %240, %200, %171, %166, %158, %149, %141, %129, %124, %118, %112, %99, %87, %82, %74, %69, %61, %55, %50, %41, %28
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

declare dso_local i64 @IPV4_GET_OFFSET(%struct.TYPE_15__*) #1

declare dso_local i32 @IPV4_GET_FLAGS(%struct.TYPE_15__*) #1

declare dso_local i32 @IPV4_GET_HEADER_LEN(%struct.TYPE_15__*) #1

declare dso_local i32 @READ_USHORT(i32*) #1

declare dso_local i32 @ParsePacketIPv6Header(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @IPV6_GET_FLAGS(i32*) #1

declare dso_local i32 @TCP_GET_HEADER_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @WRITE_USHORT(i32*, i32) #1

declare dso_local i64 @CalcChecksumForIPv4(i32, i32, i64, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @CalcChecksumForIPv6(i32*, i32*, i64, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
