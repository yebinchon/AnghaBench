; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_setProtocolError.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_setProtocolError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@LL_VERBOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Protocol error from client: %s\00", align 1
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @setProtocolError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setProtocolError(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %7 = load i64, i64* @LL_VERBOSE, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = call i32 (...) @sdsempty()
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call i32 @catClientInfoString(i32 %10, %struct.TYPE_5__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @LL_VERBOSE, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @serverLog(i64 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sdsfree(i32 %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sdsrange(i32 %26, i32 %27, i32 -1)
  ret void
}

declare dso_local i32 @catClientInfoString(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverLog(i64, i8*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsrange(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
