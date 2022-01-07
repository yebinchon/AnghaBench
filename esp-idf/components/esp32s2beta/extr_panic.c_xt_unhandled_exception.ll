; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_xt_unhandled_exception.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_panic.c_xt_unhandled_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@abort_called = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Guru Meditation Error: Core \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" panic'ed (\00", align 1
@NUM_EDESCS = common dso_local global i32 0, align 4
@edesc = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c". Exception was unhandled.\0D\0A\00", align 1
@APPTRACE_ONPANIC_HOST_FLUSH_TMO = common dso_local global i32 0, align 4
@CONFIG_ESP32_APPTRACE_POSTMORTEM_FLUSH_TRAX_THRESH = common dso_local global i32 0, align 4
@ESP_APPTRACE_DEST_TRAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_unhandled_exception(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = call i32 (...) @haltOtherCore()
  %5 = load i32, i32* @abort_called, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = call i32 @panicPutStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @xPortGetCoreID()
  %10 = call i32 @panicPutDec(i32 %9)
  %11 = call i32 @panicPutStr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NUM_EDESCS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load i8**, i8*** @edesc, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @panicPutStr(i8* %23)
  br label %27

25:                                               ; preds = %7
  %26 = call i32 @panicPutStr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %18
  %28 = call i32 @panicPutStr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %29 = call i32 @panicPutStr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call i32 @commonErrorHandler(%struct.TYPE_4__* %31)
  ret void
}

declare dso_local i32 @haltOtherCore(...) #1

declare dso_local i32 @panicPutStr(i8*) #1

declare dso_local i32 @panicPutDec(i32) #1

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @commonErrorHandler(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
