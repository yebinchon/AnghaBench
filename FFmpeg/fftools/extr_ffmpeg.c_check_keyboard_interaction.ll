; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_check_keyboard_interaction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_check_keyboard_interaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@check_keyboard_interaction.last_time = internal global i32 0, align 4
@received_nb_signals = common dso_local global i64 0, align 8
@AVERROR_EXIT = common dso_local global i32 0, align 4
@run_as_daemon = common dso_local global i32 0, align 4
@qp_hist = common dso_local global i32 0, align 4
@do_hex_dump = common dso_local global i32 0, align 4
@do_pkt_dump = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"\0AEnter command: <target>|all <time>|-1 <command>[ <argument>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%63[^ ] %lf %255[^ ] %255[^\0A]\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Processing command target:%s time:%f command:%s arg:%s\00", align 1
@nb_filtergraphs = common dso_local global i32 0, align 4
@filtergraphs = common dso_local global %struct.TYPE_13__** null, align 8
@AVFILTER_CMD_FLAG_ONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Command reply for stream %d: ret:%d res:\0A%s\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"Queuing commands only on filters supporting the specific command is unsupported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Queuing command failed with error %s\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [79 x i8] c"Parse error, at least 3 arguments were expected, only %d given in string '%s'\0A\00", align 1
@input_streams = common dso_local global %struct.TYPE_14__** null, align 8
@FF_DEBUG_DCT_COEFF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"error parsing debug value\0A\00", align 1
@nb_input_streams = common dso_local global i32 0, align 4
@nb_output_streams = common dso_local global i32 0, align 4
@output_streams = common dso_local global %struct.TYPE_12__** null, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"debug=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [340 x i8] c"key    function\0A?      show this help\0A+      increase verbosity\0A-      decrease verbosity\0Ac      Send command to first matching filter supporting it\0AC      Send/Queue command to all matching filters\0AD      cycle through available debug modes\0Ah      dump packets/hex press to cycle through the 3 states\0Aq      quit\0As      Show QP histogram\0A\00", align 1
@FF_DEBUG_VIS_MB_TYPE = common dso_local global i32 0, align 4
@FF_DEBUG_VIS_QP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_keyboard_interaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_keyboard_interaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  %19 = load i64, i64* @received_nb_signals, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %22, i32* %2, align 4
  br label %341

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @check_keyboard_interaction.last_time, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp sge i32 %26, 100000
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* @run_as_daemon, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @read_key()
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @check_keyboard_interaction.last_time, align 4
  br label %35

34:                                               ; preds = %28, %23
  store i32 -1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 113
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %39, i32* %2, align 4
  br label %341

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 43
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i64 (...) @av_log_get_level()
  %45 = add nsw i64 %44, 10
  %46 = call i32 @av_log_set_level(i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i64 (...) @av_log_get_level()
  %52 = sub nsw i64 %51, 10
  %53 = call i32 @av_log_set_level(i64 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 115
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @qp_hist, align 4
  %59 = xor i32 %58, 1
  store i32 %59, i32* @qp_hist, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 104
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* @do_hex_dump, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* @do_pkt_dump, align 4
  store i32 0, i32* @do_hex_dump, align 4
  br label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @do_pkt_dump, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* @do_hex_dump, align 4
  br label %72

71:                                               ; preds = %67
  store i32 1, i32* @do_pkt_dump, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i64, i64* @AV_LOG_DEBUG, align 8
  %75 = call i32 @av_log_set_level(i64 %74)
  br label %76

76:                                               ; preds = %73, %60
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 99
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 67
  br i1 %81, label %82, label %209

82:                                               ; preds = %79, %76
  %83 = bitcast [256 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 256, i1 false)
  store i32 0, i32* %13, align 4
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %86 = call i32 @set_tty_echo(i32 1)
  br label %87

87:                                               ; preds = %109, %82
  %88 = call i32 (...) @read_key()
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 13
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 4095
  br label %97

97:                                               ; preds = %93, %90, %87
  %98 = phi i1 [ false, %90 ], [ false, %87 ], [ %96, %93 ]
  br i1 %98, label %99, label %110

99:                                               ; preds = %97
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %107
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %102, %99
  br label %87

110:                                              ; preds = %97
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %112
  store i8 0, i8* %113, align 1
  %114 = call i32 @set_tty_echo(i32 0)
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %203

119:                                              ; preds = %110
  %120 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %122 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %124 = call i32 (i8*, i8*, ...) @sscanf(i8* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %121, double* %11, i8* %122, i8* %123)
  store i32 %124, i32* %13, align 4
  %125 = icmp sge i32 %124, 3
  br i1 %125, label %126, label %203

126:                                              ; preds = %119
  %127 = load i64, i64* @AV_LOG_DEBUG, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %130 = load double, double* %11, align 8
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %129, double %130, i8* %131, i8* %132)
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %199, %126
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @nb_filtergraphs, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %202

138:                                              ; preds = %134
  %139 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @filtergraphs, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %139, i64 %141
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %14, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %198

148:                                              ; preds = %138
  %149 = load double, double* %11, align 8
  %150 = fcmp olt double %149, 0.000000e+00
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %156 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %158 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %159 = load i32, i32* %6, align 4
  %160 = icmp eq i32 %159, 99
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  br label %164

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = call i32 @avfilter_graph_send_command(i64 %154, i8* %155, i8* %156, i8* %157, i8* %158, i32 4096, i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @stderr, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %5, align 4
  %170 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %171 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %168, i32 %169, i8* %170)
  br label %197

172:                                              ; preds = %148
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 99
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* @stderr, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %178, i32* %5, align 4
  br label %196

179:                                              ; preds = %172
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %186 = load double, double* %11, align 8
  %187 = call i32 @avfilter_graph_queue_command(i64 %182, i8* %183, i8* %184, i8* %185, i32 0, double %186)
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %179
  %191 = load i32, i32* @stderr, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i8* @av_err2str(i32 %192)
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %190, %179
  br label %196

196:                                              ; preds = %195, %175
  br label %197

197:                                              ; preds = %196, %164
  br label %198

198:                                              ; preds = %197, %138
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %4, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %4, align 4
  br label %134

202:                                              ; preds = %134
  br label %208

203:                                              ; preds = %119, %110
  %204 = load i32, i32* @AV_LOG_ERROR, align 4
  %205 = load i32, i32* %13, align 4
  %206 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %207 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %204, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0), i32 %205, i8* %206)
  br label %208

208:                                              ; preds = %203, %202
  br label %209

209:                                              ; preds = %208, %79
  %210 = load i32, i32* %6, align 4
  %211 = icmp eq i32 %210, 100
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = icmp eq i32 %213, 68
  br i1 %214, label %215, label %334

215:                                              ; preds = %212, %209
  store i32 0, i32* %15, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 68
  br i1 %217, label %218, label %243

218:                                              ; preds = %215
  %219 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @input_streams, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %219, i64 0
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 1
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %218
  store i32 1, i32* %15, align 4
  br label %232

232:                                              ; preds = %231, %218
  br label %233

233:                                              ; preds = %238, %232
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* @FF_DEBUG_DCT_COEFF, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %15, align 4
  br label %233

242:                                              ; preds = %233
  br label %285

243:                                              ; preds = %215
  store i32 0, i32* %17, align 4
  store i32 0, i32* %4, align 4
  %244 = call i32 @set_tty_echo(i32 1)
  br label %245

245:                                              ; preds = %267, %243
  %246 = call i32 (...) @read_key()
  store i32 %246, i32* %17, align 4
  %247 = icmp ne i32 %246, 10
  br i1 %247, label %248, label %255

248:                                              ; preds = %245
  %249 = load i32, i32* %17, align 4
  %250 = icmp ne i32 %249, 13
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = icmp ult i64 %253, 31
  br label %255

255:                                              ; preds = %251, %248, %245
  %256 = phi i1 [ false, %248 ], [ false, %245 ], [ %254, %251 ]
  br i1 %256, label %257, label %268

257:                                              ; preds = %255
  %258 = load i32, i32* %17, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %267

260:                                              ; preds = %257
  %261 = load i32, i32* %17, align 4
  %262 = trunc i32 %261 to i8
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %4, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 %265
  store i8 %262, i8* %266, align 1
  br label %267

267:                                              ; preds = %260, %257
  br label %245

268:                                              ; preds = %255
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 %270
  store i8 0, i8* %271, align 1
  %272 = call i32 @set_tty_echo(i32 0)
  %273 = load i32, i32* @stderr, align 4
  %274 = call i32 (i32, i8*, ...) @fprintf(i32 %273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %275 = load i32, i32* %17, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %268
  %278 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %279 = call i32 (i8*, i8*, ...) @sscanf(i8* %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %15)
  %280 = icmp ne i32 %279, 1
  br i1 %280, label %281, label %284

281:                                              ; preds = %277, %268
  %282 = load i32, i32* @stderr, align 4
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %282, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %277
  br label %285

285:                                              ; preds = %284, %242
  store i32 0, i32* %4, align 4
  br label %286

286:                                              ; preds = %302, %285
  %287 = load i32, i32* %4, align 4
  %288 = load i32, i32* @nb_input_streams, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %305

290:                                              ; preds = %286
  %291 = load i32, i32* %15, align 4
  %292 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @input_streams, align 8
  %293 = load i32, i32* %4, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %292, i64 %294
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  store i32 %291, i32* %301, align 4
  br label %302

302:                                              ; preds = %290
  %303 = load i32, i32* %4, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %4, align 4
  br label %286

305:                                              ; preds = %286
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %321, %305
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @nb_output_streams, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %324

310:                                              ; preds = %306
  %311 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @output_streams, align 8
  %312 = load i32, i32* %4, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %311, i64 %313
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %314, align 8
  store %struct.TYPE_12__* %315, %struct.TYPE_12__** %18, align 8
  %316 = load i32, i32* %15, align 4
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  store i32 %316, i32* %320, align 4
  br label %321

321:                                              ; preds = %310
  %322 = load i32, i32* %4, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %4, align 4
  br label %306

324:                                              ; preds = %306
  %325 = load i32, i32* %15, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i64, i64* @AV_LOG_DEBUG, align 8
  %329 = call i32 @av_log_set_level(i64 %328)
  br label %330

330:                                              ; preds = %327, %324
  %331 = load i32, i32* @stderr, align 4
  %332 = load i32, i32* %15, align 4
  %333 = call i32 (i32, i8*, ...) @fprintf(i32 %331, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %332)
  br label %334

334:                                              ; preds = %330, %212
  %335 = load i32, i32* %6, align 4
  %336 = icmp eq i32 %335, 63
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* @stderr, align 4
  %339 = call i32 (i32, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([340 x i8], [340 x i8]* @.str.11, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337, %334
  store i32 0, i32* %2, align 4
  br label %341

341:                                              ; preds = %340, %38, %21
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local i32 @read_key(...) #1

declare dso_local i32 @av_log_set_level(i64) #1

declare dso_local i64 @av_log_get_level(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @set_tty_echo(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @avfilter_graph_send_command(i64, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @avfilter_graph_queue_command(i64, i8*, i8*, i8*, i32, double) #1

declare dso_local i8* @av_err2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
