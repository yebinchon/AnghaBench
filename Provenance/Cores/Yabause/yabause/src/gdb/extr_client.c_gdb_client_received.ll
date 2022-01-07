; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gdb/extr_client.c_gdb_client_received.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gdb/extr_client.c_gdb_client_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"packet received: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"qSupported\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PacketSize=1024\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"qAttached\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"qTStatus\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"T0\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"qTfP\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"qTfV\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"qTsP\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"m%x,%d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"vCont?\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Z0,%x,%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdb_client_received(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [185 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store i8 43, i8* %5, align 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @YabSockSend(i32 %26, i8* %5, i32 1, i32 0)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 63
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = call i32 @gdb_client_break(%struct.TYPE_15__* %36)
  br label %399

38:                                               ; preds = %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 99
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call i32 @gdb_client_unlock(%struct.TYPE_15__* %47)
  br label %398

49:                                               ; preds = %38
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 103
  br i1 %56, label %57, label %148

57:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 8, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %61
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %58

81:                                               ; preds = %58
  %82 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %82, i64 128
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @sprintf(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %92 = getelementptr inbounds i8, i8* %91, i64 136
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %101 = getelementptr inbounds i8, i8* %100, i64 144
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sprintf(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 152
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @sprintf(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 160
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @sprintf(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 168
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %137 = getelementptr inbounds i8, i8* %136, i64 176
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @sprintf(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds [185 x i8], [185 x i8]* %7, i64 0, i64 0
  %147 = call i32 @gdb_client_send(%struct.TYPE_15__* %145, i8* %146, i32 184)
  br label %397

148:                                              ; preds = %49
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 72
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @gdb_client_send(%struct.TYPE_15__* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %396

159:                                              ; preds = %148
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 113
  br i1 %166, label %167, label %239

167:                                              ; preds = %159
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strncmp(i8* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = call i32 @gdb_client_send(%struct.TYPE_15__* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  br label %238

176:                                              ; preds = %167
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 67
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %186 = call i32 @gdb_client_send(%struct.TYPE_15__* %185, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %237

187:                                              ; preds = %176
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @strncmp(i8* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %195 = call i32 @gdb_client_send(%struct.TYPE_15__* %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %236

196:                                              ; preds = %187
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @strncmp(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %196
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %204 = call i32 @gdb_client_send(%struct.TYPE_15__* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  br label %235

205:                                              ; preds = %196
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @strncmp(i8* %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %213 = call i32 @gdb_client_send(%struct.TYPE_15__* %212, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %234

214:                                              ; preds = %205
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @strncmp(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %222 = call i32 @gdb_client_send(%struct.TYPE_15__* %221, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %233

223:                                              ; preds = %214
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @strncmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %231 = call i32 @gdb_client_send(%struct.TYPE_15__* %230, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %232

232:                                              ; preds = %229, %223
  br label %233

233:                                              ; preds = %232, %220
  br label %234

234:                                              ; preds = %233, %211
  br label %235

235:                                              ; preds = %234, %202
  br label %236

236:                                              ; preds = %235, %193
  br label %237

237:                                              ; preds = %236, %184
  br label %238

238:                                              ; preds = %237, %173
  br label %395

239:                                              ; preds = %159
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 0
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 109
  br i1 %246, label %247, label %303

247:                                              ; preds = %239
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @sscanf(i8* %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %8, i32* %9)
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 2, %252
  %254 = call i8* @malloc(i32 %253)
  store i8* %254, i8** %11, align 8
  %255 = load i8*, i8** %11, align 8
  store i8* %255, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %256

256:                                              ; preds = %261, %247
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %9, align 4
  %259 = sdiv i32 %258, 4
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %256
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* %10, align 4
  %264 = mul nsw i32 4, %263
  %265 = add nsw i32 %262, %264
  %266 = call i32 @MappedMemoryReadLong(i32 %265)
  store i32 %266, i32* %13, align 4
  %267 = load i8*, i8** %12, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @sprintf(i8* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  %272 = load i8*, i8** %12, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 8
  store i8* %273, i8** %12, align 8
  br label %256

274:                                              ; preds = %256
  %275 = load i32, i32* %9, align 4
  %276 = srem i32 %275, 4
  switch i32 %276, label %295 [
    i32 2, label %277
    i32 1, label %286
  ]

277:                                              ; preds = %274
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* %10, align 4
  %280 = mul nsw i32 4, %279
  %281 = add nsw i32 %278, %280
  %282 = call i32 @MappedMemoryReadWord(i32 %281)
  store i32 %282, i32* %14, align 4
  %283 = load i8*, i8** %12, align 8
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @sprintf(i8* %283, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %284)
  br label %295

286:                                              ; preds = %274
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %10, align 4
  %289 = mul nsw i32 4, %288
  %290 = add nsw i32 %287, %289
  %291 = call i32 @MappedMemoryReadByte(i32 %290)
  store i32 %291, i32* %15, align 4
  %292 = load i8*, i8** %12, align 8
  %293 = load i32, i32* %15, align 4
  %294 = call i32 @sprintf(i8* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %274, %286, %277
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %297 = load i8*, i8** %11, align 8
  %298 = load i32, i32* %9, align 4
  %299 = mul nsw i32 2, %298
  %300 = call i32 @gdb_client_send(%struct.TYPE_15__* %296, i8* %297, i32 %299)
  %301 = load i8*, i8** %11, align 8
  %302 = call i32 @free(i8* %301)
  br label %394

303:                                              ; preds = %239
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 118
  br i1 %310, label %311, label %321

311:                                              ; preds = %303
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @strncmp(i8* %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %311
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %319 = call i32 @gdb_client_send(%struct.TYPE_15__* %318, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %320

320:                                              ; preds = %317, %311
  br label %393

321:                                              ; preds = %303
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 0
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 115
  br i1 %328, label %329, label %332

329:                                              ; preds = %321
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %331 = call i32 @gdb_client_step(%struct.TYPE_15__* %330)
  br label %392

332:                                              ; preds = %321
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = getelementptr inbounds i8, i8* %335, i64 0
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 90
  br i1 %339, label %340, label %361

340:                                              ; preds = %332
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 48
  br i1 %347, label %348, label %358

348:                                              ; preds = %340
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @sscanf(i8* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* %16, i32* %17)
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %354, align 8
  %356 = load i32, i32* %16, align 4
  %357 = call i32 @SH2AddCodeBreakpoint(%struct.TYPE_12__* %355, i32 %356)
  br label %358

358:                                              ; preds = %348, %340
  %359 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %360 = call i32 @gdb_client_send(%struct.TYPE_15__* %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %391

361:                                              ; preds = %332
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  %368 = icmp eq i32 %367, 122
  br i1 %368, label %369, label %390

369:                                              ; preds = %361
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 1
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp eq i32 %375, 48
  br i1 %376, label %377, label %387

377:                                              ; preds = %369
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 @sscanf(i8* %380, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* %18, i32* %19)
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %383, align 8
  %385 = load i32, i32* %18, align 4
  %386 = call i32 @SH2DelCodeBreakpoint(%struct.TYPE_12__* %384, i32 %385)
  br label %387

387:                                              ; preds = %377, %369
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %389 = call i32 @gdb_client_send(%struct.TYPE_15__* %388, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %390

390:                                              ; preds = %387, %361
  br label %391

391:                                              ; preds = %390, %358
  br label %392

392:                                              ; preds = %391, %329
  br label %393

393:                                              ; preds = %392, %320
  br label %394

394:                                              ; preds = %393, %295
  br label %395

395:                                              ; preds = %394, %238
  br label %396

396:                                              ; preds = %395, %156
  br label %397

397:                                              ; preds = %396, %81
  br label %398

398:                                              ; preds = %397, %46
  br label %399

399:                                              ; preds = %398, %35
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @YabSockSend(i32, i8*, i32, i32) #1

declare dso_local i32 @gdb_client_break(%struct.TYPE_15__*) #1

declare dso_local i32 @gdb_client_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gdb_client_send(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @gdb_client_step(%struct.TYPE_15__*) #1

declare dso_local i32 @SH2AddCodeBreakpoint(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SH2DelCodeBreakpoint(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
