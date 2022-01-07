; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-binlog.c_network_mysqld_binlog_event_tablemap_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-binlog.c_network_mysqld_binlog_event_tablemap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32*, i64*, i64*, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@NOT_NULL_FLAG = common dso_local global i32 0, align 4
@MYSQL_TYPE_TINY_BLOB = common dso_local global i32 0, align 4
@MYSQL_TYPE_MEDIUM_BLOB = common dso_local global i32 0, align 4
@MYSQL_TYPE_LONG_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: field-type %d isn't handled\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_binlog_event_tablemap_get(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @g_string_assign(i32 %18, i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @g_string_assign(i32 %27, i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i64* %45, i64** %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i64 0, i64* %54, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %348, %2
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %63, label %351

63:                                               ; preds = %55
  %64 = call %struct.TYPE_19__* (...) @network_mysqld_proto_fielddef_new()
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sdiv i32 %65, 8
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = srem i32 %67, 8
  store i32 %68, i32* %15, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %15, align 4
  %79 = ashr i32 %77, %78
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  br label %85

83:                                               ; preds = %63
  %84 = load i32, i32* @NOT_NULL_FLAG, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 0, %82 ], [ %84, %83 ]
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 4
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %338 [
    i32 134, label %102
    i32 130, label %147
    i32 129, label %147
    i32 140, label %166
    i32 147, label %166
    i32 136, label %226
    i32 143, label %256
    i32 141, label %256
    i32 142, label %275
    i32 148, label %302
    i32 144, label %334
    i32 146, label %334
    i32 145, label %334
    i32 133, label %334
    i32 132, label %334
    i32 128, label %334
    i32 131, label %334
    i32 135, label %334
    i32 139, label %334
    i32 138, label %334
    i32 137, label %334
  ]

102:                                              ; preds = %85
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i1 [ true, %102 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %12)
  %115 = icmp ne i32 %114, 0
  br label %116

116:                                              ; preds = %113, %108
  %117 = phi i1 [ true, %108 ], [ %115, %113 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %146, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 48
  %124 = icmp ne i32 %123, 48
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 48
  %128 = xor i32 %127, 48
  %129 = shl i32 %128, 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, 48
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %145

138:                                              ; preds = %121
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %125
  br label %146

146:                                              ; preds = %145, %116
  br label %342

147:                                              ; preds = %85, %85
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = call i32 @network_mysqld_proto_get_int16(%struct.TYPE_16__* %5, i32* %13)
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %150, %147
  %154 = phi i1 [ true, %147 ], [ %152, %150 ]
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %158, %153
  br label %342

166:                                              ; preds = %85, %85
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi i1 [ true, %166 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %225, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 147
  br i1 %187, label %188, label %209

188:                                              ; preds = %177
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %207 [
    i32 1, label %192
    i32 2, label %196
    i32 3, label %199
    i32 4, label %203
  ]

192:                                              ; preds = %188
  %193 = load i32, i32* @MYSQL_TYPE_TINY_BLOB, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  br label %208

196:                                              ; preds = %188
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  store i32 147, i32* %198, align 4
  br label %208

199:                                              ; preds = %188
  %200 = load i32, i32* @MYSQL_TYPE_MEDIUM_BLOB, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  br label %208

203:                                              ; preds = %188
  %204 = load i32, i32* @MYSQL_TYPE_LONG_BLOB, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %208

207:                                              ; preds = %188
  store i32 1, i32* %8, align 4
  br label %208

208:                                              ; preds = %207, %203, %199, %196, %192
  br label %224

209:                                              ; preds = %177
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 140
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 4
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 1, i32* %8, align 4
  br label %220

220:                                              ; preds = %219, %214
  br label %223

221:                                              ; preds = %209
  %222 = call i32 (...) @g_assert_not_reached()
  br label %223

223:                                              ; preds = %221, %220
  br label %224

224:                                              ; preds = %223, %208
  br label %225

225:                                              ; preds = %224, %172
  br label %342

226:                                              ; preds = %85
  %227 = load i32, i32* %10, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %226
  %233 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %234 = icmp ne i32 %233, 0
  br label %235

235:                                              ; preds = %232, %226
  %236 = phi i1 [ true, %226 ], [ %234, %232 ]
  %237 = zext i1 %236 to i32
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %235
  %241 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %12)
  %242 = icmp ne i32 %241, 0
  br label %243

243:                                              ; preds = %240, %235
  %244 = phi i1 [ true, %235 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  br label %255

255:                                              ; preds = %248, %243
  br label %342

256:                                              ; preds = %85, %85
  %257 = load i32, i32* %8, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %256
  %260 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %259, %256
  %263 = phi i1 [ true, %256 ], [ %261, %259 ]
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %262
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %267, %262
  br label %342

275:                                              ; preds = %85
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %280 = icmp ne i32 %279, 0
  br label %281

281:                                              ; preds = %278, %275
  %282 = phi i1 [ true, %275 ], [ %280, %278 ]
  %283 = zext i1 %282 to i32
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %281
  %287 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %12)
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %286, %281
  %290 = phi i1 [ true, %281 ], [ %288, %286 ]
  %291 = zext i1 %290 to i32
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %301, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* %11, align 4
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %12, align 4
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %294, %289
  br label %342

302:                                              ; preds = %85
  %303 = load i32, i32* %10, align 4
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 1
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  %309 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %11)
  %310 = icmp ne i32 %309, 0
  br label %311

311:                                              ; preds = %308, %302
  %312 = phi i1 [ true, %302 ], [ %310, %308 ]
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %311
  %317 = call i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__* %5, i32* %12)
  %318 = icmp ne i32 %317, 0
  br label %319

319:                                              ; preds = %316, %311
  %320 = phi i1 [ true, %311 ], [ %318, %316 ]
  %321 = zext i1 %320 to i32
  store i32 %321, i32* %8, align 4
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp eq i32 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i32 0, i32 1
  %330 = add nsw i32 %325, %329
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %324, %319
  br label %342

334:                                              ; preds = %85, %85, %85, %85, %85, %85, %85, %85, %85, %85, %85
  %335 = load i32, i32* %10, align 4
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  br label %342

338:                                              ; preds = %85
  %339 = load i32, i32* @G_STRLOC, align 4
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @g_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %334, %333, %301, %274, %255, %225, %165, %146
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %347 = call i32 @g_ptr_array_add(i32 %345, %struct.TYPE_19__* %346)
  br label %348

348:                                              ; preds = %342
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %55

351:                                              ; preds = %55
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %353, %357
  br i1 %358, label %359, label %385

359:                                              ; preds = %351
  %360 = load i32, i32* @G_STRLOC, align 4
  %361 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 4
  %365 = load i64*, i64** %364, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @g_debug_hexdump(i32 %360, i64* %365, i32 %370)
  %372 = load i32, i32* @G_STRLOC, align 4
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 3
  %377 = load i64*, i64** %376, align 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = call i32 @g_debug_hexdump(i32 %372, i64* %377, i32 %383)
  br label %385

385:                                              ; preds = %359, %351
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %387, %391
  br i1 %392, label %393, label %396

393:                                              ; preds = %385
  %394 = load i32, i32* @G_STRLOC, align 4
  %395 = call i32 @g_critical(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %394)
  store i32 1, i32* %8, align 4
  br label %396

396:                                              ; preds = %393, %385
  %397 = load i32, i32* %8, align 4
  %398 = icmp ne i32 %397, 0
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i32 -1, i32 0
  ret i32 %400
}

declare dso_local i32 @g_string_assign(i32, i32) #1

declare dso_local %struct.TYPE_19__* @network_mysqld_proto_fielddef_new(...) #1

declare dso_local i32 @network_mysqld_proto_get_int8(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @network_mysqld_proto_get_int16(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @g_assert_not_reached(...) #1

declare dso_local i32 @g_error(i8*, i32, i32) #1

declare dso_local i32 @g_ptr_array_add(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @g_debug_hexdump(i32, i64*, i32) #1

declare dso_local i32 @g_critical(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
