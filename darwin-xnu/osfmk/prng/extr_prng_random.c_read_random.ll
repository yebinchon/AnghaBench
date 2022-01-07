; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_read_random.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_read_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@prng = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CCKPRNG_OK = common dso_local global i32 0, align 4
@CCKPRNG_NEED_ENTROPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"read_random() error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_random(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 0, i32 0), align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  br label %8

8:                                                ; preds = %23, %21, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @prng_generate(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 1), i32 %9, i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = call i32 @PRNG_CCKPRNG(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CCKPRNG_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %26

17:                                               ; preds = %8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CCKPRNG_NEED_ENTROPY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @Reseed()
  br label %8

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %8

26:                                               ; preds = %16
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @prng, i32 0, i32 0, i32 0), align 4
  %28 = call i32 @lck_mtx_unlock(i32 %27)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @PRNG_CCKPRNG(i32) #1

declare dso_local i32 @prng_generate(i32*, i32, i8*) #1

declare dso_local i32 @Reseed(...) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
