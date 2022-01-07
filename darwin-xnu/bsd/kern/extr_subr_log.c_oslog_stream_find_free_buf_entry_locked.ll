; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_stream_find_free_buf_entry_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_stream_find_free_buf_entry_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@oslog_stream_lock = common dso_local global i32 0, align 4
@LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@oslog_streambufp = common dso_local global %struct.msgbuf* null, align 8
@oslog_stream_free_head = common dso_local global i32 0, align 4
@buf_entries = common dso_local global i32 0, align 4
@oslog_stream_buf_head = common dso_local global i32 0, align 4
@oslog_stream_link_type_metadata = common dso_local global i64 0, align 8
@oslog_s_dropped_msgcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @oslog_stream_find_free_buf_entry_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @oslog_stream_find_free_buf_entry_locked() #0 {
  %1 = alloca %struct.msgbuf*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_SPIN_ASSERT(i32* @oslog_stream_lock, i32 %4)
  %6 = load %struct.msgbuf*, %struct.msgbuf** @oslog_streambufp, align 8
  store %struct.msgbuf* %6, %struct.msgbuf** %1, align 8
  %7 = call %struct.TYPE_7__* @STAILQ_FIRST(i32* @oslog_stream_free_head)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @buf_entries, align 4
  %12 = call i32 @STAILQ_REMOVE_HEAD(i32* @oslog_stream_free_head, i32 %11)
  br label %66

13:                                               ; preds = %0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  %14 = call %struct.TYPE_7__* @STAILQ_FIRST(i32* @oslog_stream_buf_head)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %2, align 8
  br label %15

15:                                               ; preds = %21, %13
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @oslog_stream_link_type_metadata, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* @buf_entries, align 4
  %25 = call %struct.TYPE_7__* @STAILQ_NEXT(%struct.TYPE_7__* %23, i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %2, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @buf_entries, align 4
  %31 = call i32 @STAILQ_REMOVE_HEAD(i32* @oslog_stream_buf_head, i32 %30)
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = load i32, i32* @buf_entries, align 4
  %35 = call i32 @STAILQ_REMOVE_AFTER(i32* @oslog_stream_buf_head, %struct.TYPE_7__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %41 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load i32, i32* @oslog_s_dropped_msgcount, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @oslog_s_dropped_msgcount, align 4
  %48 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %49 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %52 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %36
  %56 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %57 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %60 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = srem i32 %58, %61
  %63 = load %struct.msgbuf*, %struct.msgbuf** %1, align 8
  %64 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %36
  br label %66

66:                                               ; preds = %65, %10
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %67
}

declare dso_local i32 @LCK_SPIN_ASSERT(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @STAILQ_NEXT(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @STAILQ_REMOVE_AFTER(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
