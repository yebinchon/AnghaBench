; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_do_stats.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_do_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@MSG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@Copy = common dso_local global i32 0, align 4
@MSG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@STATE_SEND_JOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"OK %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32 (i32*, i32, i8*)*, i8*)* @do_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_stats(%struct.TYPE_8__* %0, i32 (i32*, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32 (i32*, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 (i32*, i32, i8*)* %1, i32 (i32*, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 %9(i32* null, i32 0, i8* %10)
  %12 = add nsw i32 %11, 16
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.TYPE_9__* @allocate_job(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = load i32, i32* @MSG_OUT_OF_MEMORY, align 4
  %24 = call i32 @reply_serr(%struct.TYPE_8__* %22, i32 %23)
  br label %62

25:                                               ; preds = %3
  %26 = load i32, i32* @Copy, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  %32 = load i32 (i32*, i32, i8*)*, i32 (i32*, i32, i8*)** %5, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 %32(i32* %37, i32 %38, i8* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %25
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load i32, i32* @MSG_INTERNAL_ERROR, align 4
  %53 = call i32 @reply_serr(%struct.TYPE_8__* %51, i32 %52)
  br label %62

54:                                               ; preds = %25
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* @STATE_SEND_JOB, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %59, 2
  %61 = call i32 @reply_line(%struct.TYPE_8__* %57, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %50, %21
  ret void
}

declare dso_local %struct.TYPE_9__* @allocate_job(i32) #1

declare dso_local i32 @reply_serr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @reply_line(%struct.TYPE_8__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
