; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_hash_free_next.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testjobs.c_cttest_job_hash_free_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@default_tube = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"b should be chained to a\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"job should be missing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_job_hash_free_next() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 97, i32* %3, align 4
  store i32 12386, i32* %4, align 4
  %5 = load i32, i32* @default_tube, align 4
  %6 = call i32 @make_tube(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @TUBE_ASSIGN(i32 %5, i32 %6)
  %8 = load i32, i32* @default_tube, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_4__* @make_job_with_id(i32 0, i32 0, i32 1, i32 0, i32 %8, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  %11 = load i32, i32* @default_tube, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_4__* @make_job_with_id(i32 0, i32 0, i32 1, i32 0, i32 %11, i32 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %1, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = icmp eq %struct.TYPE_4__* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assertf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = call i32 @job_free(%struct.TYPE_4__* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assertf(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TUBE_ASSIGN(i32, i32) #1

declare dso_local i32 @make_tube(i8*) #1

declare dso_local %struct.TYPE_4__* @make_job_with_id(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertf(i32, i8*) #1

declare dso_local i32 @job_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
