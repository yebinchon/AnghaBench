; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_job.c_allocate_job.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_job.c_allocate_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"OOM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @allocate_job(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = add i64 16, %6
  %8 = trunc i64 %7 to i32
  %9 = call %struct.TYPE_8__* @malloc(i32 %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @twarnx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @memset(%struct.TYPE_8__* %15, i32 0, i32 16)
  %17 = call i32 (...) @nanoseconds()
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = bitcast %struct.TYPE_8__* %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @job_list_reset(%struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %2, align 8
  br label %33

33:                                               ; preds = %14, %12
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %34
}

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @nanoseconds(...) #1

declare dso_local i32 @job_list_reset(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
