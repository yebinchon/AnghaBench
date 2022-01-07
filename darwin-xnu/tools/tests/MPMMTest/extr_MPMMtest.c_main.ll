; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_MPMMtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_args = type { i32 }
%struct.timeval = type { i64, i64 }

@SIGINT = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@g_timebase = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't get mach_timebase_info!\0A\00", align 1
@affinity = common dso_local global i64 0, align 8
@num_servers = common dso_local global i32 0, align 4
@server_port_name = common dso_local global i8** null, align 8
@server_port_args = common dso_local global %struct.port_args* null, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"malloc/calloc of %d server book keeping structs failed\0A\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"creating %d servers\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PORT.%06d.%02d\00", align 1
@server = common dso_local global i32 0, align 4
@num_clients = common dso_local global i32 0, align 4
@num_msgs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"%d server%s, %d client%s per server (%d total) %u messages...\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"creating %d clients\0A\00", align 1
@client = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"all servers complete: waiting for clients...\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c" in %lu.%03u seconds\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  throughput in messages/sec:     %g\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"  average message latency (usec): %2.3g\0A\00", align 1
@save_perfdata = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"%s_avg_msg_latency\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"usec\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"Message latency measured in microseconds. Lower is better\00", align 1
@stress_prepost = common dso_local global i64 0, align 8
@g_client_send_time = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"  total send time: %2.3gs\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"  average send time (usec): %2.3g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i32, i32* @SIGINT, align 4
  %22 = load i32, i32* @signal_handler, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @parse_args(i32 %24, i8** %25)
  %27 = call i64 @mach_timebase_info(i32* @g_timebase)
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %2
  %35 = call i32 (...) @calibrate_client_work()
  %36 = load i64, i64* @affinity, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @thread_setup(i32 0)
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* @num_servers, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i64 @malloc(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* @num_servers, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8**
  store i8** %52, i8*** @server_port_name, align 8
  %53 = load i32, i32* @num_servers, align 4
  %54 = call i64 @calloc(i32 4, i32 %53)
  %55 = inttoptr i64 %54 to %struct.port_args*
  store %struct.port_args* %55, %struct.port_args** @server_port_args, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load i8**, i8*** @server_port_name, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.port_args*, %struct.port_args** @server_port_args, align 8
  %63 = icmp ne %struct.port_args* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61, %58, %40
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @num_servers, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %61
  %70 = load i64, i64* @verbose, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @num_servers, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @num_servers, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = call i64 @malloc(i32 15)
  %82 = inttoptr i64 %81 to i8*
  %83 = load i8**, i8*** @server_port_name, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  %87 = load i8**, i8*** @server_port_name, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (...) @getpid()
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* @server, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @thread_spawn(i32* %98, i32 %99, i8* %102)
  br label %104

104:                                              ; preds = %80
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %76

107:                                              ; preds = %76
  %108 = load i32, i32* @num_servers, align 4
  %109 = load i32, i32* @num_clients, align 4
  %110 = mul nsw i32 %108, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* @num_msgs, align 4
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 %111, %112
  store i32 %113, i32* %11, align 4
  %114 = call i32 (...) @wait_for_servers()
  %115 = load i32, i32* @num_servers, align 4
  %116 = load i32, i32* @num_servers, align 4
  %117 = icmp sgt i32 %116, 1
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %120 = load i32, i32* @num_clients, align 4
  %121 = load i32, i32* @num_clients, align 4
  %122 = icmp sgt i32 %121, 1
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %115, i8* %119, i32 %120, i8* %124, i32 %125, i32 %126)
  %128 = load i32, i32* @stdout, align 4
  %129 = call i32 @fflush(i32 %128)
  %130 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %131 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i64 @malloc(i32 %135)
  %137 = inttoptr i64 %136 to i32*
  store i32* %137, i32** %8, align 8
  %138 = load i64, i64* @verbose, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %107
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %107
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @num_servers, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @num_clients, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @num_clients, align 4
  %157 = mul nsw i32 %155, %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* @client, align 4
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @thread_spawn(i32* %161, i32 %162, i8* %165)
  br label %167

167:                                              ; preds = %153
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %149

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %144

174:                                              ; preds = %144
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %185, %174
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @num_servers, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = call i32 @thread_join(i32* %183)
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %175

188:                                              ; preds = %175
  %189 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %190 = load i64, i64* @verbose, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %188
  store i32 0, i32* %6, align 4
  br label %195

195:                                              ; preds = %205, %194
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %195
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = call i32 @thread_join(i32* %203)
  br label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %195

208:                                              ; preds = %195
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %210, %212
  %214 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 %213, i64* %214, align 8
  %215 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %216, %218
  %220 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i64 %219, i64* %220, align 8
  %221 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp slt i64 %222, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %208
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, -1
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, 1000000
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %226, %208
  %234 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = sitofp i64 %235 to double
  %237 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sitofp i64 %238 to double
  %240 = fmul double 0x3EB0C6F7A0B5ED8D, %239
  %241 = fadd double %236, %240
  store double %241, double* %15, align 8
  %242 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sdiv i64 %245, 1000
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64 %243, i64 %246)
  %248 = load i32, i32* %11, align 4
  %249 = sitofp i32 %248 to double
  %250 = load double, double* %15, align 8
  %251 = fdiv double %249, %250
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double %251)
  %253 = load double, double* %15, align 8
  %254 = fmul double %253, 1.000000e+06
  %255 = load i32, i32* %11, align 4
  %256 = sitofp i32 %255 to double
  %257 = fdiv double %254, %256
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), double %257)
  %259 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = sitofp i64 %260 to double
  %262 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = sitofp i64 %263 to double
  %265 = fdiv double %264, 1.000000e+03
  %266 = fadd double %261, %265
  store double %266, double* %16, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sitofp i32 %267 to double
  %269 = load double, double* %15, align 8
  %270 = fdiv double %268, %269
  store double %270, double* %17, align 8
  %271 = load double, double* %15, align 8
  %272 = fmul double %271, 1.000000e+06
  %273 = load i32, i32* %11, align 4
  %274 = sitofp i32 %273 to double
  %275 = fdiv double %272, %274
  store double %275, double* %18, align 8
  %276 = load i64, i64* @save_perfdata, align 8
  %277 = load i64, i64* @TRUE, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %290

279:                                              ; preds = %233
  %280 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %281 = load i8**, i8*** %5, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 0
  %283 = load i8*, i8** %282, align 8
  %284 = call i8* @basename(i8* %283)
  %285 = call i32 @snprintf(i8* %280, i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %284)
  %286 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %287 = load double, double* %18, align 8
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 @record_perf_data(i8* %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double %287, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %279, %233
  %291 = load i64, i64* @stress_prepost, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %290
  %294 = load i32, i32* @g_client_send_time, align 4
  %295 = call i64 @abs_to_ns(i32 %294)
  store i64 %295, i64* %20, align 8
  %296 = load i64, i64* %20, align 8
  %297 = sitofp i64 %296 to double
  %298 = load i64, i64* @NSEC_PER_SEC, align 8
  %299 = sitofp i64 %298 to double
  %300 = fdiv double %297, %299
  store double %300, double* %15, align 8
  %301 = load double, double* %15, align 8
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), double %301)
  %303 = load double, double* %15, align 8
  %304 = fmul double %303, 1.000000e+06
  %305 = load i32, i32* %11, align 4
  %306 = sitofp i32 %305 to double
  %307 = fdiv double %304, %306
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), double %307)
  br label %309

309:                                              ; preds = %293, %290
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i64 @mach_timebase_info(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @calibrate_client_work(...) #1

declare dso_local i32 @thread_setup(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @thread_spawn(i32*, i32, i8*) #1

declare dso_local i32 @wait_for_servers(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @thread_join(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @record_perf_data(i8*, i8*, double, i8*, i32) #1

declare dso_local i64 @abs_to_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
