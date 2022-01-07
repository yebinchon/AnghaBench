; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_server.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@num_msgs = common dso_local global i32 0, align 4
@num_clients = common dso_local global i32 0, align 4
@server_port_args = common dso_local global %struct.port_args* null, align 8
@useset = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"server awaiting message %d\0A\00", align 1
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPT = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPTED = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mach_msg() ret=%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"mach_msg (receive): \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"server received message %d\0A\00", align 1
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"server sending reply %d\0A\00", align 1
@MACH_MSG_TYPE_MOVE_SEND_ONCE = common dso_local global i32 0, align 4
@MACH_SEND_MSG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"mach_msg (send): \00", align 1
@setcount = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"\09Tearing down set[%d] %#x...\0A\00", align 1
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"mach_port_mod_refs(): \00", align 1
@portcount = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"\09teardown of %llu links took %llu ns\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\09%lluns per set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.port_args*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i32, i32* @num_msgs, align 4
  %16 = load i32, i32* @num_clients, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.port_args*, %struct.port_args** @server_port_args, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.port_args, %struct.port_args* %21, i64 %23
  store %struct.port_args* %24, %struct.port_args** %11, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.port_args*, %struct.port_args** %11, align 8
  %27 = getelementptr inbounds %struct.port_args, %struct.port_args* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.port_args*, %struct.port_args** %11, align 8
  %29 = call i32 @setup_server_ports(%struct.port_args* %28)
  %30 = load %struct.port_args*, %struct.port_args** %11, align 8
  %31 = getelementptr inbounds %struct.port_args, %struct.port_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = call i32 @thread_setup(i32 %33)
  %35 = load i64, i64* @useset, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.port_args*, %struct.port_args** %11, align 8
  %39 = getelementptr inbounds %struct.port_args, %struct.port_args* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.port_args*, %struct.port_args** %11, align 8
  %43 = getelementptr inbounds %struct.port_args, %struct.port_args* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %189, %45
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %192

51:                                               ; preds = %47
  %52 = load i32, i32* @verbose, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.port_args*, %struct.port_args** %11, align 8
  %59 = getelementptr inbounds %struct.port_args, %struct.port_args* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* @MACH_RCV_MSG, align 4
  %62 = load i32, i32* @MACH_RCV_INTERRUPT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MACH_RCV_LARGE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.port_args*, %struct.port_args** %11, align 8
  %67 = getelementptr inbounds %struct.port_args, %struct.port_args* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %71 = load i32, i32* @MACH_PORT_NULL, align 4
  %72 = call i32 @mach_msg(%struct.TYPE_6__* %60, i32 %65, i32 0, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @MACH_RCV_INTERRUPTED, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %192

77:                                               ; preds = %57
  %78 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* @verbose, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @mach_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %77
  %92 = load i32, i32* @verbose, align 4
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.port_args*, %struct.port_args** %11, align 8
  %99 = getelementptr inbounds %struct.port_args, %struct.port_args* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %97
  %107 = call i32 (...) @mach_task_self()
  %108 = load %struct.port_args*, %struct.port_args** %11, align 8
  %109 = getelementptr inbounds %struct.port_args, %struct.port_args* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = bitcast %struct.TYPE_6__* %110 to %struct.TYPE_5__*
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.port_args*, %struct.port_args** %11, align 8
  %117 = getelementptr inbounds %struct.port_args, %struct.port_args* %116, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = bitcast %struct.TYPE_6__* %118 to %struct.TYPE_5__*
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @vm_deallocate(i32 %107, i32 %115, i32 %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %106, %97
  %125 = load %struct.port_args*, %struct.port_args** %11, align 8
  %126 = getelementptr inbounds %struct.port_args, %struct.port_args* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 1, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %124
  %132 = load i32, i32* @verbose, align 4
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* @MACH_MSG_TYPE_MOVE_SEND_ONCE, align 4
  %139 = call i32 @MACH_MSGH_BITS(i32 %138, i32 0)
  %140 = load %struct.port_args*, %struct.port_args** %11, align 8
  %141 = getelementptr inbounds %struct.port_args, %struct.port_args* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 4
  %144 = load %struct.port_args*, %struct.port_args** %11, align 8
  %145 = getelementptr inbounds %struct.port_args, %struct.port_args* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.port_args*, %struct.port_args** %11, align 8
  %148 = getelementptr inbounds %struct.port_args, %struct.port_args* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  store i32 %146, i32* %150, align 4
  %151 = load %struct.port_args*, %struct.port_args** %11, align 8
  %152 = getelementptr inbounds %struct.port_args, %struct.port_args* %151, i32 0, i32 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.port_args*, %struct.port_args** %11, align 8
  %157 = getelementptr inbounds %struct.port_args, %struct.port_args* %156, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* @MACH_PORT_NULL, align 4
  %161 = load %struct.port_args*, %struct.port_args** %11, align 8
  %162 = getelementptr inbounds %struct.port_args, %struct.port_args* %161, i32 0, i32 3
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 4
  %165 = load %struct.port_args*, %struct.port_args** %11, align 8
  %166 = getelementptr inbounds %struct.port_args, %struct.port_args* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  store i32 2, i32* %168, align 4
  %169 = load %struct.port_args*, %struct.port_args** %11, align 8
  %170 = getelementptr inbounds %struct.port_args, %struct.port_args* %169, i32 0, i32 3
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i32, i32* @MACH_SEND_MSG, align 4
  %173 = load %struct.port_args*, %struct.port_args** %11, align 8
  %174 = getelementptr inbounds %struct.port_args, %struct.port_args* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MACH_PORT_NULL, align 4
  %177 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %178 = load i32, i32* @MACH_PORT_NULL, align 4
  %179 = call i32 @mach_msg(%struct.TYPE_6__* %171, i32 %172, i32 %175, i32 0, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %137
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @mach_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = call i32 @exit(i32 1) #3
  unreachable

187:                                              ; preds = %137
  br label %188

188:                                              ; preds = %187, %124
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %4, align 4
  br label %47

192:                                              ; preds = %76, %47
  %193 = load i64, i64* @useset, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  store i8* null, i8** %2, align 8
  br label %262

196:                                              ; preds = %192
  %197 = load i32, i32* @verbose, align 4
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i8* null, i8** %2, align 8
  br label %262

200:                                              ; preds = %196
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %201

201:                                              ; preds = %247, %200
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @setcount, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %250

205:                                              ; preds = %201
  %206 = load i32, i32* @verbose, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.port_args*, %struct.port_args** %11, align 8
  %211 = getelementptr inbounds %struct.port_args, %struct.port_args* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %209, i32 %216)
  br label %218

218:                                              ; preds = %208, %205
  %219 = call i32 (...) @mach_absolute_time()
  store i32 %219, i32* %8, align 4
  %220 = call i32 (...) @mach_task_self()
  %221 = load %struct.port_args*, %struct.port_args** %11, align 8
  %222 = getelementptr inbounds %struct.port_args, %struct.port_args* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %229 = call i32 @mach_port_mod_refs(i32 %220, i32 %227, i32 %228, i32 -1)
  store i32 %229, i32* %5, align 4
  %230 = call i32 (...) @mach_absolute_time()
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %8, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i64 @abs_to_ns(i32 %233)
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @KERN_SUCCESS, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %218
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @mach_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %243)
  %245 = call i32 @exit(i32 1) #3
  unreachable

246:                                              ; preds = %218
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %13, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %13, align 4
  br label %201

250:                                              ; preds = %201
  %251 = load i32, i32* @setcount, align 4
  %252 = load i64, i64* @portcount, align 8
  %253 = trunc i64 %252 to i32
  %254 = mul nsw i32 %251, %253
  store i32 %254, i32* %14, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %12, align 4
  %257 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %255, i32 %256)
  %258 = load i32, i32* %12, align 4
  %259 = load i32, i32* @setcount, align 4
  %260 = sdiv i32 %258, %259
  %261 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %260)
  store i8* null, i8** %2, align 8
  br label %262

262:                                              ; preds = %250, %199, %195
  %263 = load i8*, i8** %2, align 8
  ret i8* %263
}

declare dso_local i32 @setup_server_ports(%struct.port_args*) #1

declare dso_local i32 @thread_setup(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @mach_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mach_error(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vm_deallocate(i32, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @MACH_MSGH_BITS(i32, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @mach_port_mod_refs(i32, i32, i32, i32) #1

declare dso_local i64 @abs_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
