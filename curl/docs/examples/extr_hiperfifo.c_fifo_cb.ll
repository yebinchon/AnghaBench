; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_fifo_cb.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_fifo_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%1023s%n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @fifo_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i16, i16* %5, align 2
  br label %15

15:                                               ; preds = %56, %3
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %21 = call i64 @fscanf(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20, i32* %9)
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %15
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @event_base_loopbreak(i32 %46)
  br label %48

48:                                               ; preds = %43, %36
  br label %53

49:                                               ; preds = %32
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @new_conn(i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %48
  br label %55

54:                                               ; preds = %27, %15
  br label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @EOF, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %15, label %60

60:                                               ; preds = %56, %54
  ret void
}

declare dso_local i64 @fscanf(i32, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @event_base_loopbreak(i32) #1

declare dso_local i32 @new_conn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
