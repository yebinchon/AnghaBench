; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_read_erandom.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_read_erandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.ccdrbg_state** }
%struct.ccdrbg_state = type { i32 }

@erandom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@CCDRBG_STATUS_NEED_RESEED = common dso_local global i32 0, align 4
@EARLY_RANDOM_SEED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"read_erandom reseed error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"read_erandom ccdrbg error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @read_erandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_erandom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ccdrbg_state*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @mp_disable_preemption()
  %10 = call i32 (...) @cpu_number()
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ccdrbg_state**, %struct.ccdrbg_state*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 2), align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ccdrbg_state*, %struct.ccdrbg_state** %11, i64 %13
  %15 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %14, align 8
  store %struct.ccdrbg_state* %15, %struct.ccdrbg_state** %8, align 8
  %16 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %17 = ptrtoint %struct.ccdrbg_state* %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %53, %49, %2
  %20 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @ccdrbg_generate(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 1), %struct.ccdrbg_state* %20, i32 %21, i8* %22, i32 0, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %56

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CCDRBG_STATUS_NEED_RESEED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 0), align 8
  %34 = load i64, i64* @EARLY_RANDOM_SEED_SIZE, align 8
  %35 = call i64 @entropy_readall(i32 %33, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @EARLY_RANDOM_SEED_SIZE, align 8
  %38 = icmp uge i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %8, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 0), align 8
  %43 = call i32 @ccdrbg_reseed(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 1), %struct.ccdrbg_state* %41, i32 4, i32 %42, i32 0, i32* null)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @erandom, i32 0, i32 0), align 8
  %45 = call i32 @cc_clear(i32 4, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %19

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %28
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %19

56:                                               ; preds = %27
  %57 = call i32 (...) @mp_enable_preemption()
  ret void
}

declare dso_local i32 @mp_disable_preemption(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccdrbg_generate(i32*, %struct.ccdrbg_state*, i32, i8*, i32, i32*) #1

declare dso_local i64 @entropy_readall(i32, i64) #1

declare dso_local i32 @ccdrbg_reseed(i32*, %struct.ccdrbg_state*, i32, i32, i32, i32*) #1

declare dso_local i32 @cc_clear(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @mp_enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
