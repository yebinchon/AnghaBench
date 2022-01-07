; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_event_log_use_glib.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-mainloop.c_event_log_use_glib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G_LOG_LEVEL_DEBUG = common dso_local global i32 0, align 4
@_EVENT_LOG_DEBUG = common dso_local global i32 0, align 4
@_EVENT_LOG_MSG = common dso_local global i32 0, align 4
@G_LOG_LEVEL_MESSAGE = common dso_local global i32 0, align 4
@_EVENT_LOG_WARN = common dso_local global i32 0, align 4
@G_LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@_EVENT_LOG_ERR = common dso_local global i32 0, align 4
@G_LOG_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@G_LOG_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(libevent) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @event_log_use_glib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_log_use_glib(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @G_LOG_LEVEL_DEBUG, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @_EVENT_LOG_DEBUG, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @G_LOG_LEVEL_DEBUG, align 4
  store i32 %11, i32* %5, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @_EVENT_LOG_MSG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @G_LOG_LEVEL_MESSAGE, align 4
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @_EVENT_LOG_WARN, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @G_LOG_LEVEL_WARNING, align 4
  store i32 %23, i32* %5, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @_EVENT_LOG_ERR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @G_LOG_LEVEL_CRITICAL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @_EVENT_LOG_ERR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @G_LOG_DOMAIN, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @g_log(i32 %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @g_log(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
