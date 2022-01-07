; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_early_random.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_early_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, %struct.ccdrbg_state**, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ccdrbg_state = type { i32 }
%struct.TYPE_8__ = type { i64 }

@erandom = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EntropyData = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"EntropyData needed %lu bytes, but got %u.\0A\00", align 1
@EARLY_RANDOM_SEED_SIZE = common dso_local global i32 0, align 4
@master_cpu = common dso_local global i64 0, align 8
@CCDRBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ccdrbg_init() returned %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ccdrbg_generate() returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @early_random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccdrbg_state*, align 8
  store i32 0, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 0), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %0
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @EntropyData, i32 0, i32 0), align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @PE_get_random_seed(i8* %12, i32 8)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 8, i32 %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* @EARLY_RANDOM_SEED_SIZE, align 4
  %22 = call i32 @entropy_readall(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 2), i32 %21)
  %23 = call i32 @ccdrbg_factory_nisthmac(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 5))
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 1, i32 0), align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ule i64 %25, 8
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 4), align 8
  %30 = inttoptr i64 %29 to %struct.ccdrbg_state*
  store %struct.ccdrbg_state* %30, %struct.ccdrbg_state** %7, align 8
  %31 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %32 = load %struct.ccdrbg_state**, %struct.ccdrbg_state*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 3), align 8
  %33 = load i64, i64* @master_cpu, align 8
  %34 = getelementptr inbounds %struct.ccdrbg_state*, %struct.ccdrbg_state** %32, i64 %33
  store %struct.ccdrbg_state* %31, %struct.ccdrbg_state** %34, align 8
  %35 = call i32 @assert(i32 0)
  %36 = call i32 (...) @ml_get_timebase()
  store i32 %36, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %37 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 2), align 8
  %39 = call i32 @ccdrbg_init(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 1), %struct.ccdrbg_state* %37, i32 4, i32 %38, i32 4, i32* %4, i32 4, i32* %6)
  store i32 %39, i32* %5, align 4
  %40 = call i32 @cc_clear(i32 4, i32* %4)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %20
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %20
  %48 = load %struct.ccdrbg_state*, %struct.ccdrbg_state** %7, align 8
  %49 = call i32 @ccdrbg_generate(%struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erandom, i32 0, i32 1), %struct.ccdrbg_state* %48, i32 4, i32* %3, i32 0, i32* null)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @CCDRBG_STATUS_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %1, align 4
  br label %61

58:                                               ; preds = %0
  %59 = call i32 @read_erandom(i32* %3, i32 4)
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @PE_get_random_seed(i8*, i32) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i32 @entropy_readall(i32*, i32) #1

declare dso_local i32 @ccdrbg_factory_nisthmac(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ml_get_timebase(...) #1

declare dso_local i32 @ccdrbg_init(%struct.TYPE_7__*, %struct.ccdrbg_state*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @cc_clear(i32, i32*) #1

declare dso_local i32 @ccdrbg_generate(%struct.TYPE_7__*, %struct.ccdrbg_state*, i32, i32*, i32, i32*) #1

declare dso_local i32 @read_erandom(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
