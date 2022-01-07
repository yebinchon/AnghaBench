; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_spawn.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/personas/extr_persona_spawn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.persona_args = type { i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@g_child_mtx = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"child\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"spawn\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"child exiting (%s).\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s must be run as root\00", align 1
@PERSONA_TEST_NAME = common dso_local global i32 0, align 4
@PA_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Vg:G:I:u:vwh\00", align 1
@PA_SHOULD_VERIFY = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@PA_HAS_GID = common dso_local global i32 0, align 4
@PA_OVERRIDE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid groupspec: \22%s\22\00", align 1
@PA_HAS_GROUPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid Persona ID: %s\00", align 1
@PA_HAS_ID = common dso_local global i32 0, align 4
@PA_HAS_UID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid option: '%c'\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"No program given!\0A\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@main_sighandler = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Waiting for child...\00", align 1
@ERR_CHILD_FAIL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Child exited with status: %d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.persona_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 @pthread_mutex_init(i32* @g_child_mtx, i32* null)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  store i64 2, i64* @optind, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @child_main_loop(i32 %23, i8** %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %22
  %32 = load i8**, i8*** %5, align 8
  %33 = load i64, i64* @optind, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i8**, i8*** %5, align 8
  %40 = load i64, i64* @optind, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = call i32 @exit(i32 0) #3
  unreachable

45:                                               ; preds = %31
  %46 = load i64, i64* @optind, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* @optind, align 8
  br label %48

48:                                               ; preds = %45, %16, %2
  %49 = call i64 (...) @geteuid()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @basename(i8* %59)
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @PERSONA_TEST_NAME, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %60, %56 ], [ %62, %61 ]
  %65 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %48
  %67 = call i32 @memset(%struct.persona_args* %8, i32 0, i32 32)
  %68 = load i32, i32* @PA_NONE, align 4
  %69 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = call i8* (...) @getuid()
  %71 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %163, %66
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = call signext i8 @getopt(i32 %74, i8** %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8 %76, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %164

79:                                               ; preds = %73
  %80 = load i8, i8* %6, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %155 [
    i32 86, label %82
    i32 103, label %87
    i32 71, label %100
    i32 73, label %118
    i32 117, label %135
    i32 118, label %147
    i32 119, label %148
    i32 104, label %149
    i32 63, label %149
    i32 58, label %154
  ]

82:                                               ; preds = %79
  %83 = load i32, i32* @PA_SHOULD_VERIFY, align 4
  %84 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 8
  br label %163

87:                                               ; preds = %79
  %88 = load i32, i32* @optarg, align 4
  %89 = call i8* @atoi(i32 %88)
  %90 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @PA_HAS_GID, align 4
  %93 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @PA_OVERRIDE, align 4
  %97 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %163

100:                                              ; preds = %79
  %101 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 2
  %102 = load i32, i32* @optarg, align 4
  %103 = call i32 @parse_groupspec(%struct.TYPE_3__* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @optarg, align 4
  %108 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = load i32, i32* @PA_HAS_GROUPS, align 4
  %111 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %110
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @PA_OVERRIDE, align 4
  %115 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 8
  br label %163

118:                                              ; preds = %79
  %119 = load i32, i32* @optarg, align 4
  %120 = call i8* @atoi(i32 %119)
  %121 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @optarg, align 4
  %129 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %127, %118
  %131 = load i32, i32* @PA_HAS_ID, align 4
  %132 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 8
  br label %163

135:                                              ; preds = %79
  %136 = load i32, i32* @optarg, align 4
  %137 = call i8* @atoi(i32 %136)
  %138 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 1
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* @PA_HAS_UID, align 4
  %140 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @PA_OVERRIDE, align 4
  %144 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 8
  br label %163

147:                                              ; preds = %79
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 4
  br label %163

148:                                              ; preds = %79
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 4
  br label %163

149:                                              ; preds = %79, %79
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @usage_main(i8* %152, i32 1)
  br label %154

154:                                              ; preds = %79, %149
  br label %155

155:                                              ; preds = %79, %154
  %156 = load i8, i8* %6, align 1
  %157 = sext i8 %156 to i32
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @usage_main(i8* %161, i32 0)
  br label %163

163:                                              ; preds = %155, %148, %147, %135, %130, %109, %87, %82
  br label %73

164:                                              ; preds = %73
  %165 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @PA_SHOULD_VERIFY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* @PA_OVERRIDE, align 4
  %172 = xor i32 %171, -1
  %173 = getelementptr inbounds %struct.persona_args, %struct.persona_args* %8, i32 0, i32 0
  store i32 %172, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %164
  %175 = load i64, i64* @optind, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp uge i64 %175, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @usage_main(i8* %183, i32 0)
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i64, i64* @optind, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = sub i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %207, %185
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %191
  %196 = load i8**, i8*** %5, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @optind, align 8
  %200 = add i64 %198, %199
  %201 = getelementptr inbounds i8*, i8** %196, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  store i8* %202, i8** %206, align 8
  br label %207

207:                                              ; preds = %195
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %191

210:                                              ; preds = %191
  %211 = load i8**, i8*** %5, align 8
  %212 = load i32, i32* %4, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  store i8* null, i8** %214, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load i8**, i8*** %5, align 8
  %217 = call i32 @spawn_child(i32 %215, i8** %216, %struct.persona_args* %8)
  store i32 %217, i32* %7, align 4
  %218 = load i32, i32* %7, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %3, align 4
  br label %254

222:                                              ; preds = %210
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %224 = call i32 @sigemptyset(i32* %12)
  %225 = load i32, i32* @SIGCHLD, align 4
  %226 = call i32 @sigaddset(i32* %12, i32 %225)
  %227 = load i32, i32* @SIG_UNBLOCK, align 4
  %228 = call i32 @sigprocmask(i32 %227, i32* %12, i32* null)
  %229 = load i32, i32* @SIGCHLD, align 4
  %230 = load i32, i32* @main_sighandler, align 4
  %231 = call i32 @signal(i32 %229, i32 %230)
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %222
  %235 = call i32 @infov(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @waitpid(i32 %236, i32* %11, i32 0)
  %238 = load i32, i32* %11, align 4
  %239 = call i64 @WIFEXITED(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %234
  %242 = load i32, i32* %11, align 4
  %243 = call i32 @WEXITSTATUS(i32 %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* @ERR_CHILD_FAIL, align 4
  %248 = load i32, i32* %11, align 4
  %249 = call i32 @errc(i32 %247, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %248)
  br label %250

250:                                              ; preds = %246, %241
  br label %251

251:                                              ; preds = %250, %234
  br label %252

252:                                              ; preds = %251, %222
  %253 = call i32 @info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %252, %220
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @child_main_loop(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @memset(%struct.persona_args*, i32, i32) #1

declare dso_local i8* @getuid(...) #1

declare dso_local signext i8 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @parse_groupspec(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @usage_main(i8*, i32) #1

declare dso_local i32 @spawn_child(i32, i8**, %struct.persona_args*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @infov(i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @errc(i32, i8*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
