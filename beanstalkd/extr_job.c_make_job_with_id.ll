; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_job.c_make_job_with_id.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_job.c_make_job_with_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"OOM\00", align 1
@next_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @make_job_with_id(i32 %0, i8* %1, i8* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call %struct.TYPE_7__* @allocate_job(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = call i32 @twarnx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %63

21:                                               ; preds = %6
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @next_id, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %13, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @next_id, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %42

36:                                               ; preds = %21
  %37 = load i64, i64* @next_id, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @next_id, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i64 %37, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %56 = call i32 @store_job(%struct.TYPE_7__* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @TUBE_ASSIGN(i32 %59, i32* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %7, align 8
  br label %63

63:                                               ; preds = %42, %19
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local %struct.TYPE_7__* @allocate_job(i32) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @store_job(%struct.TYPE_7__*) #1

declare dso_local i32 @TUBE_ASSIGN(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
