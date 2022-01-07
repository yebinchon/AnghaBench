; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbpull_unordered_data.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbpull_unordered_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mbuf*, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { i64, i32, %struct.mbuf*, %struct.mbuf* }
%struct.TYPE_5__ = type { i64, %struct.msg_priq* }
%struct.msg_priq = type { i32, i64, %struct.mbuf*, i32*, %struct.mbuf* }

@MSG_PRI_MAX = common dso_local global i64 0, align 8
@MSG_PRI_MIN = common dso_local global i64 0, align 8
@MSGQ_MSG_NOTDONE = common dso_local global i32 0, align 4
@M_EOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sbpull_unordered_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbpull_unordered_data(%struct.socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.msg_priq*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.msg_priq* null, %struct.msg_priq** %9, align 8
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.socket*, %struct.socket** %4, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %23, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* @MSG_PRI_MAX, align 8
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %255, %3
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MSG_PRI_MIN, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ false, %31 ], [ %37, %35 ]
  br i1 %39, label %40, label %256

40:                                               ; preds = %38
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.msg_priq*, %struct.msg_priq** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %45, i64 %46
  store %struct.msg_priq* %47, %struct.msg_priq** %9, align 8
  %48 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %49 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MSGQ_MSG_NOTDONE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %40
  %55 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %56 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %55, i32 0, i32 4
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %58 = icmp eq %struct.mbuf* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %61 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %60, i32 0, i32 2
  %62 = load %struct.mbuf*, %struct.mbuf** %61, align 8
  %63 = icmp eq %struct.mbuf* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %66 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br label %69

69:                                               ; preds = %64, %59
  %70 = phi i1 [ false, %59 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @VERIFY(i32 %71)
  br label %263

73:                                               ; preds = %54, %40
  %74 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %75 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %74, i32 0, i32 4
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  %77 = icmp ne %struct.mbuf* %76, null
  br i1 %77, label %78, label %252

78:                                               ; preds = %73
  store i64 0, i64* %13, align 8
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %81 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %80, i32 0, i32 4
  %82 = load %struct.mbuf*, %struct.mbuf** %81, align 8
  store %struct.mbuf* %82, %struct.mbuf** %10, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %83, %struct.mbuf** %11, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %84, %struct.mbuf** %12, align 8
  br label %85

85:                                               ; preds = %95, %78
  %86 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 2
  %88 = load %struct.mbuf*, %struct.mbuf** %87, align 8
  %89 = icmp ne %struct.mbuf* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i64, i64* %14, align 8
  %92 = icmp sgt i64 %91, 0
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i1 [ false, %85 ], [ %92, %90 ]
  br i1 %94, label %95, label %110

95:                                               ; preds = %93
  %96 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %102 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %14, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %106, %struct.mbuf** %12, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %108 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %107, i32 0, i32 2
  %109 = load %struct.mbuf*, %struct.mbuf** %108, align 8
  store %struct.mbuf* %109, %struct.mbuf** %11, align 8
  br label %85

110:                                              ; preds = %93
  %111 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 2
  %113 = load %struct.mbuf*, %struct.mbuf** %112, align 8
  %114 = icmp eq %struct.mbuf* %113, null
  br i1 %114, label %115, label %145

115:                                              ; preds = %110
  %116 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %13, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %121, %struct.mbuf** %12, align 8
  %122 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 3
  %124 = load %struct.mbuf*, %struct.mbuf** %123, align 8
  store %struct.mbuf* %124, %struct.mbuf** %11, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @M_EOR, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %115
  %132 = load i32, i32* @MSGQ_MSG_NOTDONE, align 4
  %133 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %134 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %144

137:                                              ; preds = %115
  %138 = load i32, i32* @M_EOR, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %137, %131
  br label %151

145:                                              ; preds = %110
  %146 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 3
  %148 = load %struct.mbuf*, %struct.mbuf** %147, align 8
  %149 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %150 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %149, i32 0, i32 3
  store %struct.mbuf* %148, %struct.mbuf** %150, align 8
  br label %151

151:                                              ; preds = %145, %144
  %152 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %153 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %154 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %153, i32 0, i32 4
  store %struct.mbuf* %152, %struct.mbuf** %154, align 8
  %155 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %156 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %155, i32 0, i32 2
  %157 = load %struct.mbuf*, %struct.mbuf** %156, align 8
  %158 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %159 = icmp eq %struct.mbuf* %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %162 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %161, i32 0, i32 4
  %163 = load %struct.mbuf*, %struct.mbuf** %162, align 8
  %164 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %165 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %164, i32 0, i32 2
  store %struct.mbuf* %163, %struct.mbuf** %165, align 8
  br label %166

166:                                              ; preds = %160, %151
  %167 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %168 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %167, i32 0, i32 3
  store %struct.mbuf* null, %struct.mbuf** %168, align 8
  %169 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %169, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %170, align 8
  %171 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %172 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %171, i32 0, i32 4
  %173 = load %struct.mbuf*, %struct.mbuf** %172, align 8
  %174 = icmp eq %struct.mbuf* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %177 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %176, i32 0, i32 3
  store i32* null, i32** %177, align 8
  %178 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %179 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %178, i32 0, i32 2
  %180 = load %struct.mbuf*, %struct.mbuf** %179, align 8
  %181 = icmp eq %struct.mbuf* %180, null
  %182 = zext i1 %181 to i32
  %183 = call i32 @VERIFY(i32 %182)
  br label %184

184:                                              ; preds = %175, %166
  %185 = load %struct.socket*, %struct.socket** %4, align 8
  %186 = getelementptr inbounds %struct.socket, %struct.socket* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load %struct.mbuf*, %struct.mbuf** %187, align 8
  %189 = icmp eq %struct.mbuf* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %192 = load %struct.socket*, %struct.socket** %4, align 8
  %193 = getelementptr inbounds %struct.socket, %struct.socket* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store %struct.mbuf* %191, %struct.mbuf** %194, align 8
  br label %202

195:                                              ; preds = %184
  %196 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %197 = load %struct.socket*, %struct.socket** %4, align 8
  %198 = getelementptr inbounds %struct.socket, %struct.socket* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load %struct.mbuf*, %struct.mbuf** %199, align 8
  %201 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %200, i32 0, i32 2
  store %struct.mbuf* %196, %struct.mbuf** %201, align 8
  br label %202

202:                                              ; preds = %195, %190
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %205 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = sub nsw i64 %206, %203
  store i64 %207, i64* %205, align 8
  %208 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %209 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp sge i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @VERIFY(i32 %212)
  %214 = load %struct.socket*, %struct.socket** %4, align 8
  %215 = getelementptr inbounds %struct.socket, %struct.socket* %214, i32 0, i32 0
  %216 = call i32 @sbwakeup(%struct.TYPE_6__* %215)
  %217 = load i64, i64* %13, align 8
  %218 = load %struct.socket*, %struct.socket** %4, align 8
  %219 = getelementptr inbounds %struct.socket, %struct.socket* %218, i32 0, i32 1
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %217
  store i64 %223, i64* %221, align 8
  %224 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %225 = load %struct.socket*, %struct.socket** %4, align 8
  %226 = getelementptr inbounds %struct.socket, %struct.socket* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  store %struct.mbuf* %224, %struct.mbuf** %227, align 8
  %228 = load %struct.socket*, %struct.socket** %4, align 8
  %229 = getelementptr inbounds %struct.socket, %struct.socket* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load %struct.mbuf*, %struct.mbuf** %230, align 8
  %232 = load %struct.socket*, %struct.socket** %4, align 8
  %233 = getelementptr inbounds %struct.socket, %struct.socket* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  store %struct.mbuf* %231, %struct.mbuf** %234, align 8
  %235 = load i64, i64* %5, align 8
  %236 = load i64, i64* %6, align 8
  %237 = add nsw i64 %235, %236
  %238 = load %struct.socket*, %struct.socket** %4, align 8
  %239 = getelementptr inbounds %struct.socket, %struct.socket* %238, i32 0, i32 1
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %237, %242
  store i64 %243, i64* %7, align 8
  %244 = load %struct.msg_priq*, %struct.msg_priq** %9, align 8
  %245 = getelementptr inbounds %struct.msg_priq, %struct.msg_priq* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @MSGQ_MSG_NOTDONE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %202
  br label %256

251:                                              ; preds = %202
  br label %255

252:                                              ; preds = %73
  %253 = load i64, i64* %8, align 8
  %254 = add nsw i64 %253, -1
  store i64 %254, i64* %8, align 8
  br label %255

255:                                              ; preds = %252, %251
  br label %31

256:                                              ; preds = %250, %38
  %257 = load %struct.socket*, %struct.socket** %4, align 8
  %258 = getelementptr inbounds %struct.socket, %struct.socket* %257, i32 0, i32 0
  %259 = call i32 @sblastrecordchk(%struct.TYPE_6__* %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %260 = load %struct.socket*, %struct.socket** %4, align 8
  %261 = getelementptr inbounds %struct.socket, %struct.socket* %260, i32 0, i32 0
  %262 = call i32 @sblastmbufchk(%struct.TYPE_6__* %261, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %263

263:                                              ; preds = %256, %69
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @sbwakeup(%struct.TYPE_6__*) #1

declare dso_local i32 @sblastrecordchk(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @sblastmbufchk(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
