; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c_oslog_stream_create_buf_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c_oslog_stream_create_buf_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32, i32, i8*, i64)* @oslog_stream_create_buf_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @oslog_stream_create_buf_entry(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  store i32 %0, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %62

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = add i64 8, %20
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i64 @kalloc(i64 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %62

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %13, align 8
  %43 = call i32 (...) @current_thread()
  %44 = call i32 @thread_tid(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @memcpy(i32 %57, i8* %58, i64 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %6, align 8
  br label %62

62:                                               ; preds = %28, %27, %18
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %63
}

declare dso_local i64 @kalloc(i64) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
