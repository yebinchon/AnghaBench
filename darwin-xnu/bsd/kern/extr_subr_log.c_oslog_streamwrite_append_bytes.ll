; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_streamwrite_append_bytes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_log.c_oslog_streamwrite_append_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgbuf = type { i32, i32, i64 }

@oslog_stream_lock = common dso_local global i32 0, align 4
@LCK_ASSERT_OWNED = common dso_local global i32 0, align 4
@oslog_streambufp = common dso_local global %struct.msgbuf* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @oslog_streamwrite_append_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oslog_streamwrite_append_bytes(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msgbuf*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LCK_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_SPIN_ASSERT(i32* @oslog_stream_lock, i32 %7)
  %9 = load %struct.msgbuf*, %struct.msgbuf** @oslog_streambufp, align 8
  store %struct.msgbuf* %9, %struct.msgbuf** %5, align 8
  %10 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %11 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %12, %13
  %15 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %16 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %2
  %20 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %21 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %24 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = inttoptr i64 %27 to i8*
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @memcpy(i8* %28, i8* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %34 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %38 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %41 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %19
  %45 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %46 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %19
  br label %85

48:                                               ; preds = %2
  %49 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %50 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %53 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  store i32 %55, i32* %6, align 4
  %56 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %57 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %60 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @memcpy(i8* %64, i8* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %3, align 8
  %75 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %76 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @memcpy(i8* %78, i8* %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.msgbuf*, %struct.msgbuf** %5, align 8
  %84 = getelementptr inbounds %struct.msgbuf, %struct.msgbuf* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @LCK_SPIN_ASSERT(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
