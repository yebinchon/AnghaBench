; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_early_random_cpu_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_early_random_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, %struct.ccdrbg_state** }
%struct.TYPE_4__ = type { i32 }
%struct.ccdrbg_state = type { i32 }

@master_cpu = common dso_local global i32 0, align 4
@erandom = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"prng_init kalloc failed\0A\00", align 1
@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ccdrbg_init() returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @early_random_cpu_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccdrbg_state*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @master_cpu, align 4
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.ccdrbg_state**, %struct.ccdrbg_state*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 2), align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ccdrbg_state*, %struct.ccdrbg_state** %11, i64 %13
  %15 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %14, align 8
  %16 = icmp eq %struct.ccdrbg_state* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 1, i32 0), align 4
  %20 = call %struct.ccdrbg_state* @kalloc(i32 %19)
  store %struct.ccdrbg_state* %20, %struct.ccdrbg_state** %5, align 8
  %21 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %5, align 8
  %22 = icmp eq %struct.ccdrbg_state* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %5, align 8
  %27 = load %struct.ccdrbg_state**, %struct.ccdrbg_state*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 2), align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ccdrbg_state*, %struct.ccdrbg_state** %27, i64 %29
  store %struct.ccdrbg_state* %26, %struct.ccdrbg_state** %30, align 8
  %31 = call i32 (...) @ml_get_timebase()
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %5, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 0), align 8
  %34 = call i32 @ccdrbg_init(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @erandom, i32 0, i32 1), %struct.ccdrbg_state* %32, i32 4, i32 %33, i32 4, i32* %3, i32 4, i32* %2)
  store i32 %34, i32* %4, align 4
  %35 = call i32 @cc_clear(i32 4, i32* %3)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ccdrbg_state* @kalloc(i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ml_get_timebase(...) #1

declare dso_local i32 @ccdrbg_init(%struct.TYPE_4__*, %struct.ccdrbg_state*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @cc_clear(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
