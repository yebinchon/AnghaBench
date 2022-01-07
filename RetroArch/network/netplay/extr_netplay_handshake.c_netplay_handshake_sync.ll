; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_sync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_handshake.c_netplay_handshake_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i64, i8*, %struct.netplay_connection*, i64, i64 }
%struct.netplay_connection = type { i8*, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@RETRO_MEMORY_SAVE_RAM = common dso_local global i32 0, align 4
@NETPLAY_CMD_SYNC = common dso_local global i32 0, align 4
@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@NETPLAY_NICK_LEN = common dso_local global i32 0, align 4
@NETPLAY_CMD_SYNC_BIT_PAUSED = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c" (%d)\00", align 1
@NETPLAY_CONNECTION_SPECTATING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_handshake_sync(%struct.TYPE_7__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.netplay_connection*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @RETRO_MEMORY_SAVE_RAM, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = call i32 @core_get_memory(%struct.TYPE_6__* %9)
  %19 = load i32, i32* @NETPLAY_CMD_SYNC, align 4
  %20 = call i32 @htonl(i32 %19)
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 8, %24
  %26 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 %29, %32
  %34 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @htonl(i32 %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @htonl(i32 %46)
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  %52 = load %struct.netplay_connection*, %struct.netplay_connection** %51, align 8
  %53 = ptrtoint %struct.netplay_connection* %49 to i64
  %54 = ptrtoint %struct.netplay_connection* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 32
  %57 = add nsw i64 %56, 1
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63, %2
  %69 = load i32, i32* @NETPLAY_CMD_SYNC_BIT_PAUSED, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @htonl(i32 %73)
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %77 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %76, i32 0, i32 3
  %78 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %79 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %82 = call i32 @netplay_send(i32* %77, i32 %80, i32* %81, i32 16)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %290

85:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  br label %86

86:                                               ; preds = %108, %85
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @htonl(i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %100 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %99, i32 0, i32 3
  %101 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %102 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @netplay_send(i32* %100, i32 %103, i32* %11, i32 4)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %290

107:                                              ; preds = %91
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %86

111:                                              ; preds = %86
  %112 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %113 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %112, i32 0, i32 3
  %114 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %115 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @netplay_send(i32* %113, i32 %116, i32* %119, i32 8)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %290

123:                                              ; preds = %111
  store i64 0, i64* %6, align 8
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %124
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @htonl(i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %138 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %137, i32 0, i32 3
  %139 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %140 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @netplay_send(i32* %138, i32 %141, i32* %11, i32 4)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %290

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %6, align 8
  br label %124

149:                                              ; preds = %124
  %150 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %151 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @strlen(i8* %152)
  store i64 %153, i64* %12, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %156 = sub nsw i32 %155, 5
  %157 = sext i32 %156 to i64
  %158 = icmp ugt i64 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %161 = sub nsw i32 %160, 5
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %13, align 8
  br label %165

163:                                              ; preds = %149
  %164 = load i64, i64* %12, align 8
  store i64 %164, i64* %13, align 8
  br label %165

165:                                              ; preds = %163, %159
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %245, %165
  store i32 0, i32* %14, align 4
  store i64 0, i64* %6, align 8
  br label %167

167:                                              ; preds = %206, %166
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %209

173:                                              ; preds = %167
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 6
  %176 = load %struct.netplay_connection*, %struct.netplay_connection** %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %176, i64 %177
  store %struct.netplay_connection* %178, %struct.netplay_connection** %15, align 8
  %179 = load %struct.netplay_connection*, %struct.netplay_connection** %15, align 8
  %180 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %181 = icmp eq %struct.netplay_connection* %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  br label %206

183:                                              ; preds = %173
  %184 = load %struct.netplay_connection*, %struct.netplay_connection** %15, align 8
  %185 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load %struct.netplay_connection*, %struct.netplay_connection** %15, align 8
  %190 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %193 = icmp sge i64 %191, %192
  br i1 %193, label %194, label %205

194:                                              ; preds = %188
  %195 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %196 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.netplay_connection*, %struct.netplay_connection** %15, align 8
  %199 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %202 = call i32 @strncmp(i8* %197, i8* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %194
  store i32 1, i32* %14, align 4
  br label %209

205:                                              ; preds = %194, %188, %183
  br label %206

206:                                              ; preds = %205, %182
  %207 = load i64, i64* %6, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %6, align 8
  br label %167

209:                                              ; preds = %204, %167
  %210 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %211 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 5
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %217 = call i32 @strncmp(i8* %212, i8* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %209
  store i32 1, i32* %14, align 4
  br label %220

220:                                              ; preds = %219, %209
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %220
  %224 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %225 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i64, i64* %13, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  %229 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %13, align 8
  %232 = sub i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %7, align 4
  %236 = call i32 @snprintf(i8* %228, i32 %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %235)
  %237 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %238 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %241 = sub nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %239, i64 %242
  store i8 0, i8* %243, align 1
  br label %244

244:                                              ; preds = %223, %220
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %166, label %248

248:                                              ; preds = %245
  %249 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %250 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %249, i32 0, i32 3
  %251 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %252 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %255 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = bitcast i8* %256 to i32*
  %258 = load i32, i32* @NETPLAY_NICK_LEN, align 4
  %259 = call i32 @netplay_send(i32* %250, i32 %253, i32* %257, i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %248
  store i32 0, i32* %3, align 4
  br label %290

262:                                              ; preds = %248
  %263 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %264 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %263, i32 0, i32 3
  %265 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %266 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @netplay_send(i32* %264, i32 %267, i32* %269, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %262
  %275 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %276 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %275, i32 0, i32 3
  %277 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %278 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @netplay_send_flush(i32* %276, i32 %279, i32 0)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %283, label %282

282:                                              ; preds = %274, %262
  store i32 0, i32* %3, align 4
  br label %290

283:                                              ; preds = %274
  %284 = load i64, i64* @NETPLAY_CONNECTION_SPECTATING, align 8
  %285 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %286 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %285, i32 0, i32 1
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %288 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %289 = call i32 @netplay_handshake_ready(%struct.TYPE_7__* %287, %struct.netplay_connection* %288)
  store i32 1, i32* %3, align 4
  br label %290

290:                                              ; preds = %283, %282, %261, %144, %122, %106, %84
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @core_get_memory(%struct.TYPE_6__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @netplay_send(i32*, i32, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @netplay_send_flush(i32*, i32, i32) #1

declare dso_local i32 @netplay_handshake_ready(%struct.TYPE_7__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
