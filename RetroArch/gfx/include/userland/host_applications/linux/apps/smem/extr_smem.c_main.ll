; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/smem/extr_smem.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/smem/extr_smem.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@OPTSTRING_LEN = common dso_local global i32 0, align 4
@VCSM_STATUS_NONE = common dso_local global i32 0, align 4
@smem_log_category = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@VCOS_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"smem\00", align 1
@long_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid arguments '%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%31s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@VCSM_STATUS_VC_MAP_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@VCSM_STATUS_VC_WALK_ALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@VCSM_STATUS_HOST_WALK_MAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@VCSM_STATUS_HOST_WALK_PID_ALLOC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"Unrecognized option '%d'\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Unrecognized argument -- '%s'\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot initialize smem device\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Allocating 2 times %u-bytes in shared memory\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"smem-test-alloc\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Allocation 1 result: user %x, vc-hdl %x\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Allocation 1 : lock %p\00", align 1
@blah_blah = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"Allocation 1 contains: \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Allocation 1: vc-hdl %x\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Allocation 1: usr-hdl %x\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Allocation 1 : unlock %d\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Allocation 1 (relock) : lock %p\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Allocation 1 (relock) : unlock %d\00", align 1
@quit_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [32 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @OPTSTRING_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %24 = load i32, i32* @VCSM_STATUS_NONE, align 4
  store i32 %24, i32* %14, align 4
  %25 = call i32 (...) @vcos_init()
  %26 = load i32, i32* @VCOS_LOG_INFO, align 4
  %27 = call i32 @vcos_log_set_level(%struct.TYPE_6__* @smem_log_category, i32 %26)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smem_log_category, i32 0, i32 0, i32 0), align 8
  %28 = call i32 @vcos_log_register(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* @smem_log_category)
  %29 = call i32 @create_optstring(i8* %23)
  br label %30

30:                                               ; preds = %101, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @long_opts, align 4
  %34 = call i32 @getopt_long_only(i32 %31, i8** %32, i8* %23, i32 %33, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %102

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %97 [
    i32 0, label %38
    i32 131, label %39
    i32 129, label %49
    i32 128, label %60
    i32 63, label %100
    i32 130, label %100
  ]

38:                                               ; preds = %36
  br label %101

39:                                               ; preds = %36
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @strtoul(i8* %40, i8** %17, i32 10)
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load i8*, i8** @optarg, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %198

48:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %101

49:                                               ; preds = %36
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i64 @strtol(i8* %50, i8** %18, i32 10)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %18, align 8
  %54 = load i8*, i8** @optarg, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %198

59:                                               ; preds = %49
  br label %101

60:                                               ; preds = %36
  %61 = load i8*, i8** @optarg, align 8
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %63 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %198

68:                                               ; preds = %60
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %70 = call i32 @vcos_strcasecmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @VCSM_STATUS_VC_MAP_ALL, align 4
  store i32 %73, i32* %14, align 4
  br label %96

74:                                               ; preds = %68
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %76 = call i32 @vcos_strcasecmp(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @VCSM_STATUS_VC_WALK_ALLOC, align 4
  store i32 %79, i32* %14, align 4
  br label %95

80:                                               ; preds = %74
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %82 = call i32 @vcos_strcasecmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @VCSM_STATUS_HOST_WALK_MAP, align 4
  store i32 %85, i32* %14, align 4
  br label %94

86:                                               ; preds = %80
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %88 = call i32 @vcos_strcasecmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @VCSM_STATUS_HOST_WALK_PID_ALLOC, align 4
  store i32 %91, i32* %14, align 4
  br label %93

92:                                               ; preds = %86
  br label %198

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %72
  store i32 1, i32* %11, align 4
  br label %101

97:                                               ; preds = %36
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  br label %196

100:                                              ; preds = %36, %36
  br label %196

101:                                              ; preds = %96, %59, %48, %38
  br label %30

102:                                              ; preds = %30
  %103 = load i32, i32* @optind, align 4
  %104 = load i32, i32* %4, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @optind, align 4
  %107 = load i8**, i8*** %5, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  store i8** %109, i8*** %5, align 8
  %110 = load i32, i32* @optind, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112, %102
  %116 = load i32, i32* %4, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %118, %115
  br label %196

123:                                              ; preds = %112
  %124 = call i32 (...) @vcsm_init()
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %198

128:                                              ; preds = %123
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %180

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @vcsm_malloc(i32 %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @vcsm_vc_hdl_from_hdl(i32 %137)
  %139 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %136, i32 %138)
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %179

142:                                              ; preds = %131
  %143 = load i32, i32* %16, align 4
  %144 = call i8* @vcsm_lock(i32 %143)
  store i8* %144, i8** %15, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %145)
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %167

149:                                              ; preds = %142
  %150 = load i8*, i8** %15, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @memset(i8* %150, i32 0, i32 %151)
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* @blah_blah, align 4
  %155 = call i32 @memcpy(i8* %153, i32 %154, i32 32)
  %156 = load i8*, i8** %15, align 8
  %157 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** %15, align 8
  %159 = call i8* @vcsm_vc_hdl_from_ptr(i8* %158)
  %160 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** %15, align 8
  %162 = call i8* @vcsm_usr_handle(i8* %161)
  %163 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i8* %162)
  %164 = load i8*, i8** %15, align 8
  %165 = call i8* @vcsm_unlock_ptr(i8* %164)
  %166 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %149, %142
  %168 = load i32, i32* %16, align 4
  %169 = call i8* @vcsm_lock(i32 %168)
  store i8* %169, i8** %15, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* %16, align 4
  %176 = call i8* @vcsm_unlock_hdl(i32 %175)
  %177 = call i32 (i8*, ...) @vcos_log_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %174, %167
  br label %179

179:                                              ; preds = %178, %131
  br label %180

180:                                              ; preds = %179, %128
  %181 = load i32, i32* %11, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @get_status(i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %180
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = call i32 (...) @start_monitor()
  %192 = call i32 @vcos_event_wait(i32* @quit_event)
  %193 = call i32 @vcos_event_delete(i32* @quit_event)
  br label %194

194:                                              ; preds = %190, %187
  %195 = call i32 (...) @vcsm_exit()
  br label %198

196:                                              ; preds = %122, %100, %97
  %197 = call i32 (...) @show_usage()
  br label %198

198:                                              ; preds = %196, %194, %126, %92, %65, %56, %45
  %199 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vcos_init(...) #2

declare dso_local i32 @vcos_log_set_level(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @vcos_log_register(i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @create_optstring(i8*) #2

declare dso_local i32 @getopt_long_only(i32, i8**, i8*, i32, i32*) #2

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @vcos_log_info(i8*, ...) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @vcos_strcasecmp(i8*, i8*) #2

declare dso_local i32 @vcsm_init(...) #2

declare dso_local i32 @vcsm_malloc(i32, i8*) #2

declare dso_local i32 @vcsm_vc_hdl_from_hdl(i32) #2

declare dso_local i8* @vcsm_lock(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i8* @vcsm_vc_hdl_from_ptr(i8*) #2

declare dso_local i8* @vcsm_usr_handle(i8*) #2

declare dso_local i8* @vcsm_unlock_ptr(i8*) #2

declare dso_local i8* @vcsm_unlock_hdl(i32) #2

declare dso_local i32 @get_status(i32, i32) #2

declare dso_local i32 @start_monitor(...) #2

declare dso_local i32 @vcos_event_wait(i32*) #2

declare dso_local i32 @vcos_event_delete(i32*) #2

declare dso_local i32 @vcsm_exit(...) #2

declare dso_local i32 @show_usage(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
