; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_disconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i16, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@kdp = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"kdp_disconnect\0A\00", align 1
@debugger_panic_str = common dso_local global i32* null, align 8
@reattach_wait = common dso_local global i32 0, align 4
@noresume_on_disconnect = common dso_local global i32 0, align 4
@current_debugger = common dso_local global i64 0, align 8
@KDP_CUR_DB = common dso_local global i64 0, align 8
@active_debugger = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i16*)* @kdp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kdp_disconnect(%struct.TYPE_7__* %0, i32* %1, i16* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i16* %2, i16** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %4, align 8
  br label %57

22:                                               ; preds = %3
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 5), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %4, align 8
  br label %57

27:                                               ; preds = %22
  %28 = call i32 @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %29 = load i16, i16* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 0), align 8
  %30 = load i16*, i16** %7, align 8
  store i16 %29, i16* %30, align 2
  store i16 0, i16* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 1), align 2
  store i16 0, i16* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 0), align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 5), align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @kdp, i32 0, i32 2), align 8
  %32 = load i32*, i32** @debugger_panic_str, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* @reattach_wait, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* @noresume_on_disconnect, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* @reattach_wait, align 4
  store i32 0, i32* @noresume_on_disconnect, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 8, i32* %45, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* @current_debugger, align 8
  %52 = load i64, i64* @KDP_CUR_DB, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i64 0, i64* @active_debugger, align 8
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %55, %25, %20
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @dprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
