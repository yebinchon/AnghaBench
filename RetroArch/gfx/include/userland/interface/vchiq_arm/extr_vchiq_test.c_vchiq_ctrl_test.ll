; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_ctrl_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_ctrl_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@ctrl_received = common dso_local global i64 0, align 8
@g_params = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NUM_BULK_BUFS = common dso_local global i32 0, align 4
@bulk_tx_data = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"* out of memory\0A\00", align 1
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@MSG_ECHO = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"* failed to open vchiq instance\0A\00", align 1
@g_servname = common dso_local global i8* null, align 8
@clnt_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"clnt userdata\00", align 1
@VCHIQ_TEST_VER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"* failed to open service - already in use?\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Ctrl test - service:%s, block size:%d, iters:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"* failed to send a message\0A\00", align 1
@g_server_error = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"* error - %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Sent all messages\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"vchiq_test: waiting for shutdown\00", align 1
@g_shutdown = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"vchiq_test: shutting down\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Elapsed time: %dus per iteration\0A\00", align 1
@g_timeout_ms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @vchiq_ctrl_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vchiq_ctrl_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  store i64 0, i64* @ctrl_received, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %12, %0
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NUM_BULK_BUFS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  %20 = call i64 @malloc(i32 %19)
  %21 = load i64*, i64** @bulk_tx_data, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 %20, i64* %24, align 8
  %25 = load i64*, i64** @bulk_tx_data, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %33, i64* %1, align 8
  br label %177

34:                                               ; preds = %18
  %35 = load i32, i32* @MSG_ECHO, align 4
  %36 = load i64*, i64** @bulk_tx_data, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32 %35, i32* %41, align 4
  store i32 4, i32* %8, align 4
  br label %42

42:                                               ; preds = %61, %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = or i32 128, %47
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i64*, i64** @bulk_tx_data, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = inttoptr i64 %59 to i32*
  store i32 %51, i32* %60, align 4
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %8, align 4
  br label %42

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %14

68:                                               ; preds = %14
  %69 = call i64 @vchiq_initialise(i32* %2)
  %70 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %74, i64* %1, align 8
  br label %177

75:                                               ; preds = %68
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @vchiq_connect(i32 %76)
  %78 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 32)
  %79 = load i8*, i8** @g_servname, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** @g_servname, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** @g_servname, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** @g_servname, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext %81, i8 signext %84, i8 signext %87, i8 signext %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @clnt_callback, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %95, align 8
  %96 = load i8*, i8** @VCHIQ_TEST_VER, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** @VCHIQ_TEST_VER, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %2, align 4
  %101 = call i64 @vchiq_open_service(i32 %100, %struct.TYPE_7__* %4, i32* %3)
  %102 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %75
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %106, i64* %1, align 8
  br label %177

107:                                              ; preds = %75
  %108 = load i8*, i8** @g_servname, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 1), align 4
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %108, i32 %109, i32 %110)
  %112 = call i32 (...) @vcos_getmicrosecs()
  store i32 %112, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %141, %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 1), align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load i64*, i64** @bulk_tx_data, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @NUM_BULK_BUFS, align 4
  %121 = srem i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %118, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 0), align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @vchiq_queue_message(i32 %128, %struct.TYPE_8__* %9, i32 1)
  %130 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %117
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %171

134:                                              ; preds = %117
  %135 = load i8*, i8** @g_server_error, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i8*, i8** @g_server_error, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  br label %171

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %113

144:                                              ; preds = %113
  %145 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 2), align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %150 = call i32 @vcos_event_wait(i32* @g_shutdown)
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i8*, i8** @g_server_error, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** @g_server_error, align 8
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %155)
  br label %171

157:                                              ; preds = %151
  %158 = call i32 (...) @vcos_getmicrosecs()
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @vchiq_remove_service(i32 %159)
  %161 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %162 = load i32, i32* %2, align 4
  %163 = call i32 @vchiq_shutdown(i32 %162)
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %5, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_params, i32 0, i32 1), align 4
  %168 = sdiv i32 %166, %167
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %168)
  %170 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %170, i64* %1, align 8
  br label %177

171:                                              ; preds = %154, %137, %132
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @vchiq_remove_service(i32 %172)
  %174 = load i32, i32* %2, align 4
  %175 = call i32 @vchiq_shutdown(i32 %174)
  %176 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %176, i64* %1, align 8
  br label %177

177:                                              ; preds = %171, %157, %104, %72, %31
  %178 = load i64, i64* %1, align 8
  ret i64 %178
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vchiq_initialise(i32*) #1

declare dso_local i32 @vchiq_connect(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @vchiq_open_service(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @vcos_getmicrosecs(...) #1

declare dso_local i64 @vchiq_queue_message(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @vcos_log_trace(i8*) #1

declare dso_local i32 @vcos_event_wait(i32*) #1

declare dso_local i32 @vchiq_remove_service(i32) #1

declare dso_local i32 @vchiq_shutdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
