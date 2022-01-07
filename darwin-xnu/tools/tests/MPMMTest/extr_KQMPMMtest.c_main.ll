; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/MPMMTest/extr_KQMPMMtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@SIGINT = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@affinity = common dso_local global i64 0, align 8
@num_servers = common dso_local global i32 0, align 4
@server_port_name = common dso_local global i8** null, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"creating %d servers\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PORT.%06d.%02d\00", align 1
@server = common dso_local global i32 0, align 4
@num_clients = common dso_local global i32 0, align 4
@num_msgs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"%d server%s, %d client%s per server (%d total) %u messages...\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"creating %d clients\0A\00", align 1
@client = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c" in %ld.%03u seconds\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"  throughput in messages/sec:     %g\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"  average message latency (usec): %2.3g\0A\00", align 1
@save_perfdata = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"%s_avg_msg_latency\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"usec\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Message latency measured in microseconds. Lower is better\00", align 1
@stderr = common dso_local global i32 0, align 4

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @SIGINT, align 4
  %21 = load i32, i32* @signal_handler, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @parse_args(i32 %23, i8** %24)
  %26 = call i32 (...) @calibrate_client_work()
  %27 = load i64, i64* @affinity, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @thread_setup(i32 0)
  br label %31

31:                                               ; preds = %29, %2
  %32 = load i32, i32* @num_servers, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i64 @malloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* @num_servers, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i8**
  store i8** %43, i8*** @server_port_name, align 8
  %44 = load i64, i64* @verbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i32, i32* @num_servers, align 4
  %48 = sitofp i32 %47 to double
  %49 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %48)
  br label %50

50:                                               ; preds = %46, %31
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @num_servers, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = call i64 @malloc(i32 15)
  %57 = inttoptr i64 %56 to i8*
  %58 = load i8**, i8*** @server_port_name, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  store i8* %57, i8** %61, align 8
  %62 = load i8**, i8*** @server_port_name, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (...) @getpid()
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* @server, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @thread_spawn(i32* %73, i32 %74, i8* %77)
  br label %79

79:                                               ; preds = %55
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %51

82:                                               ; preds = %51
  %83 = load i32, i32* @num_servers, align 4
  %84 = load i32, i32* @num_clients, align 4
  %85 = mul nsw i32 %83, %84
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @num_msgs, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = call i32 (...) @wait_for_servers()
  %90 = load i32, i32* @num_servers, align 4
  %91 = sitofp i32 %90 to double
  %92 = load i32, i32* @num_servers, align 4
  %93 = icmp sgt i32 %92, 1
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %96 = load i32, i32* @num_clients, align 4
  %97 = load i32, i32* @num_clients, align 4
  %98 = icmp sgt i32 %97, 1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), double %91, i8* %95, i32 %96, i8* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @stdout, align 4
  %105 = call i32 @fflush(i32 %104)
  %106 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %107 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i64 @malloc(i32 %111)
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %8, align 8
  %114 = load i64, i64* @verbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %82
  %117 = load i32, i32* %10, align 4
  %118 = sitofp i32 %117 to double
  %119 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), double %118)
  br label %120

120:                                              ; preds = %116, %82
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %148, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @num_servers, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %144, %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @num_clients, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @num_clients, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  %139 = load i32, i32* @client, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @thread_spawn(i32* %138, i32 %139, i8* %142)
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %126

147:                                              ; preds = %126
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %6, align 4
  br label %121

151:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @num_servers, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = call i32 @thread_join(i32* %160)
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %152

165:                                              ; preds = %152
  %166 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %177, %165
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = call i32 @thread_join(i32* %175)
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %167

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %182, %184
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  %187 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %188, %190
  %192 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i64 %191, i64* %192, align 8
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %194, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %180
  %199 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, -1
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, 1000000
  store i64 %204, i64* %202, align 8
  br label %205

205:                                              ; preds = %198, %180
  %206 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sitofp i64 %207 to double
  %209 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = sitofp i64 %210 to double
  %212 = fmul double 0x3EB0C6F7A0B5ED8D, %211
  %213 = fadd double %208, %212
  store double %213, double* %15, align 8
  %214 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = sitofp i64 %215 to double
  %217 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sitofp i64 %218 to double
  %220 = fdiv double %219, 1.000000e+03
  %221 = fadd double %216, %220
  store double %221, double* %16, align 8
  %222 = load i32, i32* %11, align 4
  %223 = sitofp i32 %222 to double
  %224 = load double, double* %15, align 8
  %225 = fdiv double %223, %224
  store double %225, double* %17, align 8
  %226 = load double, double* %15, align 8
  %227 = fmul double %226, 1.000000e+06
  %228 = load i32, i32* %11, align 4
  %229 = sitofp i32 %228 to double
  %230 = fdiv double %227, %229
  store double %230, double* %18, align 8
  %231 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = sitofp i64 %232 to double
  %234 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = sdiv i64 %235, 1000
  %237 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), double %233, i64 %236)
  %238 = load i32, i32* %11, align 4
  %239 = sitofp i32 %238 to double
  %240 = load double, double* %15, align 8
  %241 = fdiv double %239, %240
  %242 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), double %241)
  %243 = load double, double* %15, align 8
  %244 = fmul double %243, 1.000000e+06
  %245 = load i32, i32* %11, align 4
  %246 = sitofp i32 %245 to double
  %247 = fdiv double %244, %246
  %248 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), double %247)
  %249 = load i64, i64* @save_perfdata, align 8
  %250 = load i64, i64* @TRUE, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %205
  %253 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %254 = load i8**, i8*** %5, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @basename(i8* %256)
  %258 = call i32 @snprintf(i8* %253, i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %257)
  %259 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %260 = load double, double* %18, align 8
  %261 = load i32, i32* @stderr, align 4
  %262 = call i32 @record_perf_data(i8* %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double %260, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %252, %205
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @calibrate_client_work(...) #1

declare dso_local i32 @thread_setup(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*, double, ...) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
