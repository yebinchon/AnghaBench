; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_panicHandler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_panicHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown reason\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unhandled debug exception\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Double exception\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unhandled kernel exception\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Coprocessor exception\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Interrupt wdt timeout on CPU0\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Interrupt wdt timeout on CPU1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Cache exception\00", align 1
@__const.panicHandler.reasons = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)], align 16
@PANIC_RSN_MAX = common dso_local global i64 0, align 8
@PANIC_RSN_INTWDT_CPU0 = common dso_local global i64 0, align 8
@PANIC_RSN_INTWDT_CPU1 = common dso_local global i64 0, align 8
@other_core_frame = common dso_local global %struct.TYPE_8__* null, align 8
@PANIC_RSN_CACHEERR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Guru Meditation Error: Core \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" panic'ed (\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c")\0D\0A\00", align 1
@PANIC_RSN_DEBUGEXCEPTION = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"Debug exception reason: \00", align 1
@XCHAL_DEBUGCAUSE_ICOUNT_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"SingleStep \00", align 1
@XCHAL_DEBUGCAUSE_IBREAK_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"HwBreakpoint \00", align 1
@XCHAL_DEBUGCAUSE_DBREAK_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Watchpoint 1 triggered \00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Watchpoint 0 triggered \00", align 1
@XCHAL_DEBUGCAUSE_BREAK_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"BREAK instr \00", align 1
@XCHAL_DEBUGCAUSE_BREAKN_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"BREAKN instr \00", align 1
@XCHAL_DEBUGCAUSE_DEBUGINT_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"DebugIntr \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"                                         ^~~~~~~~~~~~~~~\0D\0A\00", align 1
@TIMERG1 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@APPTRACE_ONPANIC_HOST_FLUSH_TMO = common dso_local global i32 0, align 4
@CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH = common dso_local global i32 0, align 4
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panicHandler(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = call i32 (...) @xPortGetCoreID()
  store i32 %7, i32* %3, align 4
  %8 = bitcast [8 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([8 x i8*]* @__const.panicHandler.reasons to i8*), i64 64, i1 false)
  %9 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 0
  %10 = load i8*, i8** %9, align 16
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PANIC_RSN_MAX, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [8 x i8*], [8 x i8*]* %4, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PANIC_RSN_INTWDT_CPU0, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %40, label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PANIC_RSN_INTWDT_CPU1, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %28
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** @other_core_frame, align 8
  br label %42

42:                                               ; preds = %40, %42
  br label %42

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PANIC_RSN_INTWDT_CPU0, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PANIC_RSN_INTWDT_CPU1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49, %43
  %56 = call i32 @ets_delay_us(i32 1)
  br label %57

57:                                               ; preds = %55, %49
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PANIC_RSN_CACHEERR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = call i32 (...) @esp_cache_err_get_cpuid()
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %68
  br label %68

69:                                               ; preds = %63, %57
  %70 = call i32 (...) @haltOtherCore()
  %71 = call i32 @panicPutStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @panicPutDec(i32 %72)
  %74 = call i32 @panicPutStr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @panicPutStr(i8* %75)
  %77 = call i32 @panicPutStr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PANIC_RSN_DEBUGEXCEPTION, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %69
  %84 = call i32 asm "rsr.debugcause $0", "=r,~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  store i32 %84, i32* %6, align 4
  %85 = call i32 @panicPutStr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @XCHAL_DEBUGCAUSE_ICOUNT_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = call i32 @panicPutStr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %83
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @XCHAL_DEBUGCAUSE_IBREAK_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 @panicPutStr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @XCHAL_DEBUGCAUSE_DBREAK_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 256
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = call i32 @panicPutStr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %112

110:                                              ; preds = %104
  %111 = call i32 @panicPutStr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %108
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @XCHAL_DEBUGCAUSE_BREAK_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @panicPutStr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %113
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @XCHAL_DEBUGCAUSE_BREAKN_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = call i32 @panicPutStr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %120
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @XCHAL_DEBUGCAUSE_DEBUGINT_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = call i32 @panicPutStr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %127
  %135 = call i32 @panicPutStr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %146

136:                                              ; preds = %69
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PANIC_RSN_CACHEERR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = call i32 @panicPutStr(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0))
  %144 = call i32 (...) @printCacheError()
  br label %145

145:                                              ; preds = %142, %136
  br label %146

146:                                              ; preds = %145, %134
  %147 = call i64 (...) @esp_cpu_in_ocd_debug_mode()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = call i32 (...) @disableAllWdts()
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PANIC_RSN_INTWDT_CPU0, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PANIC_RSN_INTWDT_CPU1, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156, %149
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @TIMERG1, i32 0, i32 0, i32 0), align 4
  br label %163

163:                                              ; preds = %162, %156
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @setFirstBreakpoint(i32 %166)
  br label %171

168:                                              ; preds = %146
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %170 = call i32 @commonErrorHandler(%struct.TYPE_8__* %169)
  br label %171

171:                                              ; preds = %168, %163
  ret void
}

declare dso_local i32 @xPortGetCoreID(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @esp_cache_err_get_cpuid(...) #1

declare dso_local i32 @haltOtherCore(...) #1

declare dso_local i32 @panicPutStr(i8*) #1

declare dso_local i32 @panicPutDec(i32) #1

declare dso_local i32 @printCacheError(...) #1

declare dso_local i64 @esp_cpu_in_ocd_debug_mode(...) #1

declare dso_local i32 @disableAllWdts(...) #1

declare dso_local i32 @setFirstBreakpoint(i32) #1

declare dso_local i32 @commonErrorHandler(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2672}
