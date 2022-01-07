; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_client.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@num_ints = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"client(%d) started, server port name %s\0A\00", align 1
@server_port_name = common dso_local global i8** null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"task_get_bootstrap_port(): \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bootstrap_look_up(): \00", align 1
@client_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@client_memory = common dso_local global i64* null, align 8
@num_msgs = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_COPY_SEND = common dso_local global i32 0, align 4
@MACH_MSG_TYPE_MAKE_SEND = common dso_local global i32 0, align 4
@oneway = common dso_local global i64 0, align 8
@msg_type = common dso_local global i64 0, align 8
@msg_type_complex = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_COMPLEX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MACH_MSG_VIRTUAL_COPY = common dso_local global i32 0, align 4
@MACH_MSG_OOL_DESCRIPTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"client sending message %d\0A\00", align 1
@MACH_SEND_MSG = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"mach_msg (send): \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"bailing after %u iterations\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"client awaiting reply %d\0A\00", align 1
@MACH_RCV_MSG = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"mach_msg (receive): \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"client received reply %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @client(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.port_args, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @num_ints, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i64, i64* @verbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load i32, i32* %10, align 4
  %24 = load i8**, i8*** @server_port_name, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @thread_setup(i32 %34)
  %36 = call i32 (...) @mach_task_self()
  %37 = call i64 @task_get_bootstrap_port(i32 %36, i32* %7)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* @KERN_SUCCESS, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @mach_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = load i8**, i8*** @server_port_name, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @bootstrap_look_up(i32 %46, i8* %51, i32* %8)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* @KERN_SUCCESS, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @mach_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %45
  %61 = call i32 @setup_client_ports(%struct.port_args* %3)
  %62 = load i32, i32* @client_pages, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load i32, i32* @client_pages, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i8* @malloc(i32 %67)
  %69 = bitcast i8* %68 to i64*
  store i64* %69, i64** @client_memory, align 8
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %82, %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @client_pages, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i64*, i64** @client_memory, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = udiv i64 %79, 8
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %70

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %60
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %235, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @num_msgs, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %238

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 5
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %6, align 8
  %96 = load i32, i32* @MACH_MSG_TYPE_COPY_SEND, align 4
  %97 = load i32, i32* @MACH_MSG_TYPE_MAKE_SEND, align 4
  %98 = call i64 @MACH_MSGH_BITS(i32 %96, i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i64, i64* @oneway, align 8
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* @msg_type, align 8
  %119 = load i64, i64* @msg_type_complex, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %159

121:                                              ; preds = %91
  %122 = load i64, i64* @MACH_MSGH_BITS_COMPLEX, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = or i64 %125, %122
  store i64 %126, i64* %124, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = bitcast %struct.TYPE_8__* %127 to %struct.TYPE_9__*
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %133 = bitcast %struct.TYPE_8__* %132 to %struct.TYPE_9__*
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i8* %131, i8** %135, align 8
  %136 = load i32, i32* @num_ints, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = bitcast %struct.TYPE_8__* %140 to %struct.TYPE_9__*
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load i32, i32* @FALSE, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = bitcast %struct.TYPE_8__* %145 to %struct.TYPE_9__*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  store i32 %144, i32* %148, align 4
  %149 = load i32, i32* @MACH_MSG_VIRTUAL_COPY, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = bitcast %struct.TYPE_8__* %150 to %struct.TYPE_9__*
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  store i32 %149, i32* %153, align 8
  %154 = load i32, i32* @MACH_MSG_OOL_DESCRIPTOR, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = bitcast %struct.TYPE_8__* %155 to %struct.TYPE_9__*
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  store i32 %154, i32* %158, align 4
  br label %159

159:                                              ; preds = %121, %91
  %160 = load i64, i64* @verbose, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %4, align 4
  %164 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = load i32, i32* @MACH_SEND_MSG, align 4
  %168 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MACH_PORT_NULL, align 4
  %171 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %172 = load i32, i32* @MACH_PORT_NULL, align 4
  %173 = call i64 @mach_msg(%struct.TYPE_8__* %166, i32 %167, i32 %169, i32 0, i32 %170, i32 %171, i32 %172)
  store i64 %173, i64* %9, align 8
  %174 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %165
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @mach_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i64 %178)
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @fprintf(i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = call i32 @exit(i32 1) #3
  unreachable

184:                                              ; preds = %165
  %185 = load i64, i64* @oneway, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %233, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* @verbose, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 3
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 3
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i32, i32* @MACH_RCV_MSG, align 4
  %207 = load i32, i32* @MACH_RCV_INTERRUPT, align 4
  %208 = or i32 %206, %207
  %209 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.port_args, %struct.port_args* %3, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %214 = load i32, i32* @MACH_PORT_NULL, align 4
  %215 = call i64 @mach_msg(%struct.TYPE_8__* %205, i32 %208, i32 0, i32 %210, i32 %212, i32 %213, i32 %214)
  store i64 %215, i64* %9, align 8
  %216 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %217 = load i64, i64* %9, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %193
  %220 = load i64, i64* %9, align 8
  %221 = call i32 @mach_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i64 %220)
  %222 = load i32, i32* @stderr, align 4
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @fprintf(i32 %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  %225 = call i32 @exit(i32 1) #3
  unreachable

226:                                              ; preds = %193
  %227 = load i64, i64* @verbose, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %4, align 4
  %231 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %184
  %234 = call i32 (...) @client_work()
  br label %235

235:                                              ; preds = %233
  %236 = load i32, i32* %4, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %4, align 4
  br label %87

238:                                              ; preds = %87
  %239 = load i8*, i8** %11, align 8
  %240 = call i32 @free(i8* %239)
  ret i8* null
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @thread_setup(i32) #1

declare dso_local i64 @task_get_bootstrap_port(i32, i32*) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @mach_error(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @bootstrap_look_up(i32, i8*, i32*) #1

declare dso_local i32 @setup_client_ports(%struct.port_args*) #1

declare dso_local i64 @MACH_MSGH_BITS(i32, i32) #1

declare dso_local i64 @mach_msg(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @client_work(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
