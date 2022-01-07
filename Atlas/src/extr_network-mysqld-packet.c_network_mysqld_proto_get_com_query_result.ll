; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_com_query_result.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_com_query_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@SERVER_MORE_RESULTS_EXISTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: COM_QUERY packet should not be (EOF), got: 0x%02x\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: COM_QUERY should not be (OK|NULL|ERR), got: 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: COM_QUERY,should be (OK), got: 0x%02x\00", align 1
@SERVER_PS_OUT_PARAMS = common dso_local global i32 0, align 4
@SERVER_STATUS_CURSOR_EXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_com_query_result(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %291 [
    i32 131, label %18
    i32 132, label %105
    i32 128, label %162
    i32 130, label %255
    i32 129, label %269
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = call i32 @network_mysqld_proto_peek_int8(%struct.TYPE_19__* %22, i32* %11)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ true, %18 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %291

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %99 [
    i32 135, label %33
    i32 133, label %36
    i32 134, label %92
    i32 136, label %95
  ]

33:                                               ; preds = %31
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  store i32 135, i32* %35, align 4
  store i32 1, i32* %10, align 4
  br label %104

36:                                               ; preds = %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @update_charset(i32* %37)
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 1
  store i32 133, i32* %40, align 4
  %41 = call %struct.TYPE_20__* (...) @network_mysqld_ok_packet_new()
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %14, align 8
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %47 = call i32 @network_mysqld_proto_get_ok_packet(%struct.TYPE_19__* %45, %struct.TYPE_20__* %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %36
  %50 = phi i1 [ true, %36 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SERVER_MORE_RESULTS_EXISTS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %63

62:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 9
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %63, %49
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %91 = call i32 @network_mysqld_ok_packet_free(%struct.TYPE_20__* %90)
  br label %104

92:                                               ; preds = %31
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  store i32 130, i32* %94, align 4
  store i32 1, i32* %10, align 4
  br label %104

95:                                               ; preds = %31
  %96 = load i32, i32* @G_STRLOC, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @g_critical(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  store i32 1, i32* %12, align 4
  br label %104

99:                                               ; preds = %31
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  store i32 133, i32* %101, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  store i32 132, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %95, %92, %89, %33
  br label %291

105:                                              ; preds = %4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = call i32 @network_mysqld_proto_peek_int8(%struct.TYPE_19__* %109, i32* %11)
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i1 [ true, %105 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %291

118:                                              ; preds = %112
  %119 = load i32, i32* %11, align 4
  switch i32 %119, label %160 [
    i32 135, label %120
    i32 133, label %120
    i32 134, label %120
    i32 136, label %124
  ]

120:                                              ; preds = %118, %118, %118
  %121 = load i32, i32* @G_STRLOC, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @g_critical(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122)
  store i32 1, i32* %12, align 4
  br label %161

124:                                              ; preds = %118
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 9
  br i1 %130, label %131, label %156

131:                                              ; preds = %124
  %132 = call %struct.TYPE_21__* (...) @network_mysqld_eof_packet_new()
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %13, align 8
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %138 = call i32 @network_mysqld_proto_get_eof_packet(%struct.TYPE_19__* %136, %struct.TYPE_21__* %137)
  %139 = icmp ne i32 %138, 0
  br label %140

140:                                              ; preds = %135, %131
  %141 = phi i1 [ true, %131 ], [ %139, %135 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  store i32 128, i32* %147, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %155 = call i32 @network_mysqld_eof_packet_free(%struct.TYPE_21__* %154)
  br label %159

156:                                              ; preds = %124
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  store i32 128, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %161

160:                                              ; preds = %118
  br label %161

161:                                              ; preds = %160, %159, %120
  br label %291

162:                                              ; preds = %4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = call i32 @network_mysqld_proto_peek_int8(%struct.TYPE_19__* %166, i32* %11)
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ true, %162 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %291

175:                                              ; preds = %169
  %176 = load i32, i32* %11, align 4
  switch i32 %176, label %240 [
    i32 136, label %177
    i32 135, label %233
    i32 133, label %234
    i32 134, label %234
  ]

177:                                              ; preds = %175
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 9
  br i1 %183, label %184, label %232

184:                                              ; preds = %177
  %185 = call %struct.TYPE_21__* (...) @network_mysqld_eof_packet_new()
  store %struct.TYPE_21__* %185, %struct.TYPE_21__** %13, align 8
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %191 = call i32 @network_mysqld_proto_get_eof_packet(%struct.TYPE_19__* %189, %struct.TYPE_21__* %190)
  %192 = icmp ne i32 %191, 0
  br label %193

193:                                              ; preds = %188, %184
  %194 = phi i1 [ true, %184 ], [ %192, %188 ]
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %229, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 3
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, 4096
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %198
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %206, %198
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 6
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @SERVER_MORE_RESULTS_EXISTS, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %212
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 0
  store i32 131, i32* %226, align 4
  br label %228

227:                                              ; preds = %212
  store i32 1, i32* %10, align 4
  br label %228

228:                                              ; preds = %227, %224
  br label %229

229:                                              ; preds = %228, %193
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %231 = call i32 @network_mysqld_eof_packet_free(%struct.TYPE_21__* %230)
  br label %232

232:                                              ; preds = %229, %177
  br label %254

233:                                              ; preds = %175
  store i32 1, i32* %10, align 4
  br label %254

234:                                              ; preds = %175, %175
  %235 = load i32, i32* %9, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %239

238:                                              ; preds = %234
  br label %254

239:                                              ; preds = %237
  br label %240

240:                                              ; preds = %175, %239
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, %249
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %240, %238, %233, %232
  br label %291

255:                                              ; preds = %4
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %260, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  store i32 129, i32* %267, align 4
  store i32 1, i32* %10, align 4
  br label %268

268:                                              ; preds = %265, %255
  br label %291

269:                                              ; preds = %4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %269
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %274 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_19__* %273, i32* %11)
  %275 = icmp ne i32 %274, 0
  br label %276

276:                                              ; preds = %272, %269
  %277 = phi i1 [ true, %269 ], [ %275, %272 ]
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %12, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %291

282:                                              ; preds = %276
  %283 = load i32, i32* %11, align 4
  switch i32 %283, label %286 [
    i32 133, label %284
    i32 134, label %285
    i32 135, label %285
    i32 136, label %285
  ]

284:                                              ; preds = %282
  store i32 1, i32* %10, align 4
  br label %290

285:                                              ; preds = %282, %282, %282
  br label %286

286:                                              ; preds = %282, %285
  %287 = load i32, i32* @G_STRLOC, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 @g_critical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %287, i32 %288)
  store i32 1, i32* %12, align 4
  br label %290

290:                                              ; preds = %286, %284
  br label %291

291:                                              ; preds = %4, %290, %281, %268, %254, %174, %161, %117, %104, %30
  %292 = load i32, i32* %12, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 -1, i32* %5, align 4
  br label %297

295:                                              ; preds = %291
  %296 = load i32, i32* %10, align 4
  store i32 %296, i32* %5, align 4
  br label %297

297:                                              ; preds = %295, %294
  %298 = load i32, i32* %5, align 4
  ret i32 %298
}

declare dso_local i32 @network_mysqld_proto_peek_int8(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @update_charset(i32*) #1

declare dso_local %struct.TYPE_20__* @network_mysqld_ok_packet_new(...) #1

declare dso_local i32 @network_mysqld_proto_get_ok_packet(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @network_mysqld_ok_packet_free(%struct.TYPE_20__*) #1

declare dso_local i32 @g_critical(i8*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @network_mysqld_eof_packet_new(...) #1

declare dso_local i32 @network_mysqld_proto_get_eof_packet(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @network_mysqld_eof_packet_free(%struct.TYPE_21__*) #1

declare dso_local i32 @network_mysqld_proto_get_int8(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
