; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.POP3* }
%struct.POP3 = type { i32 }
%struct.TYPE_6__ = type { i32* }

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"DO phase starts\0A\00", align 1
@FTPTRANSFER_INFO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"DO phase is complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*, i32*)* @pop3_perform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pop3_perform(%struct.connectdata* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.POP3*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.POP3*, %struct.POP3** %15, align 8
  store %struct.POP3* %16, %struct.POP3** %9, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @infof(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @DEBUGF(i32 %20)
  %22 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @FTPTRANSFER_INFO, align 4
  %31 = load %struct.POP3*, %struct.POP3** %9, align 8
  %32 = getelementptr inbounds %struct.POP3, %struct.POP3* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %37 = call i64 @pop3_perform_command(%struct.connectdata* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %65

42:                                               ; preds = %33
  %43 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @pop3_multi_statemach(%struct.connectdata* %43, i32* %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %47 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @FIRSTSOCKET, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %42
  %58 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %59 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @infof(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @DEBUGF(i32 %61)
  br label %63

63:                                               ; preds = %57, %42
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %63, %40
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i32 @DEBUGF(i32) #1

declare dso_local i32 @infof(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @pop3_perform_command(%struct.connectdata*) #1

declare dso_local i64 @pop3_multi_statemach(%struct.connectdata*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
