; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSysLog.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSysLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@GSF_DISABLE_SYSLOG = common dso_local global i32 0, align 4
@SYSLOG_NONE = common dso_local global i64 0, align 8
@ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"b_support_syslog\00", align 1
@ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"LA_SET_SYSLOG\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetSysLog(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %11 = load i32, i32* @GSF_DISABLE_SYSLOG, align 4
  %12 = call i64 @GetGlobalServerFlag(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SYSLOG_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE, align 4
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %14, %2
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @GetServerCapsBool(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ERR_NOT_SUPPORTED, align 4
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i32 @SiSetSysLogSetting(i32* %29, %struct.TYPE_7__* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @IncrementServerConfigRevision(i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @ALog(%struct.TYPE_8__* %34, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %26, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @GetGlobalServerFlag(i32) #1

declare dso_local i32 @GetServerCapsBool(i32*, i8*) #1

declare dso_local i32 @SiSetSysLogSetting(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @IncrementServerConfigRevision(i32*) #1

declare dso_local i32 @ALog(%struct.TYPE_8__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
