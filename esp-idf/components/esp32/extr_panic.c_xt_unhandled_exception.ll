; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_xt_unhandled_exception.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_panic.c_xt_unhandled_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@abort_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Guru Meditation Error: Core \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" panic'ed (\00", align 1
@NUM_EDESCS = common dso_local global i32 0, align 4
@edesc = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" at pc=\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c". Setting bp and returning..\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c". Exception was unhandled.\0D\0A\00", align 1
@ESP_RST_PANIC = common dso_local global i32 0, align 4
@APPTRACE_ONPANIC_HOST_FLUSH_TMO = common dso_local global i32 0, align 4
@CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_THRESH = common dso_local global i32 0, align 4
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_unhandled_exception(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = call i32 (...) @haltOtherCore()
  %5 = call i32 (...) @esp_dport_access_int_abort()
  %6 = load i32, i32* @abort_called, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = call i32 @panicPutStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @xPortGetCoreID()
  %11 = call i32 @panicPutDec(i32 %10)
  %12 = call i32 @panicPutStr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NUM_EDESCS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %8
  %20 = load i8**, i8*** @edesc, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @panicPutStr(i8* %24)
  br label %28

26:                                               ; preds = %8
  %27 = call i32 @panicPutStr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = call i32 @panicPutStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i64 (...) @esp_cpu_in_ocd_debug_mode()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = call i32 @panicPutStr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @panicPutHex(i32 %36)
  %38 = call i32 @panicPutStr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @setFirstBreakpoint(i32 %41)
  br label %56

43:                                               ; preds = %28
  %44 = call i32 @panicPutStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = call i32 @illegal_instruction_helper(%struct.TYPE_5__* %48)
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, i32* @ESP_RST_PANIC, align 4
  %52 = call i32 @esp_reset_reason_set_hint(i32 %51)
  br label %53

53:                                               ; preds = %50, %1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = call i32 @commonErrorHandler(%struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %53, %32
  ret void
}

declare dso_local i32 @haltOtherCore(...) #1

declare dso_local i32 @esp_dport_access_int_abort(...) #1

declare dso_local i32 @panicPutStr(i8*) #1

declare dso_local i32 @panicPutDec(i32) #1

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i64 @esp_cpu_in_ocd_debug_mode(...) #1

declare dso_local i32 @panicPutHex(i32) #1

declare dso_local i32 @setFirstBreakpoint(i32) #1

declare dso_local i32 @illegal_instruction_helper(%struct.TYPE_5__*) #1

declare dso_local i32 @esp_reset_reason_set_hint(i32) #1

declare dso_local i32 @commonErrorHandler(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
