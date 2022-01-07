; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_fake_ai.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1305.c_fake_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__*, i8* }

@fake_ai.ai = internal global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @fake_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @fake_ai() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i8* @calloc(i32 1, i32 24)
  %3 = bitcast i8* %2 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** @fake_ai.ai, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %40

7:                                                ; preds = %0
  %8 = call %struct.TYPE_5__* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %17 = call i32 @free(%struct.TYPE_5__* %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %40

18:                                               ; preds = %7
  %19 = call i8* @calloc(i32 1, i32 4)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @free(%struct.TYPE_5__* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %32 = call i32 @free(%struct.TYPE_5__* %31)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  br label %40

33:                                               ; preds = %18
  %34 = load i32, i32* @AF_INET, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fake_ai.ai, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %1, align 8
  br label %40

40:                                               ; preds = %33, %26, %15, %6
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %41
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_5__* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
