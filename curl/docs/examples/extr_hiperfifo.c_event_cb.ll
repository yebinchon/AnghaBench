; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_event_cb.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@EV_READ = common dso_local global i16 0, align 2
@CURL_CSELECT_IN = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i16 0, align 2
@CURL_CSELECT_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"event_cb: curl_multi_socket_action\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"last transfer done, kill timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @EV_READ, align 2
  %15 = sext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @CURL_CSELECT_IN, align 4
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = load i16, i16* %5, align 2
  %24 = sext i16 %23 to i32
  %25 = load i16, i16* @EV_WRITE, align 2
  %26 = sext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @CURL_CSELECT_OUT, align 4
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %22, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @curl_multi_socket_action(i32 %37, i32 %38, i32 %39, i64* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mcode_or_die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = call i32 @check_multi_info(%struct.TYPE_3__* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %32
  %52 = load i32, i32* @MSG_OUT, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = call i64 @evtimer_pending(i32* %55, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @evtimer_del(i32* %60)
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %32
  ret void
}

declare dso_local i32 @curl_multi_socket_action(i32, i32, i32, i64*) #1

declare dso_local i32 @mcode_or_die(i8*, i32) #1

declare dso_local i32 @check_multi_info(%struct.TYPE_3__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @evtimer_pending(i32*, i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
