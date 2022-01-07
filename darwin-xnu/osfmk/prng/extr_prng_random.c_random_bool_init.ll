; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_random_bool_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_random_bool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bool_gen = type { i32*, i32, i64 }

@RANDOM_BOOL_GEN_SEED_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_bool_init(%struct.bool_gen* %0) #0 {
  %2 = alloca %struct.bool_gen*, align 8
  %3 = alloca i32, align 4
  store %struct.bool_gen* %0, %struct.bool_gen** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RANDOM_BOOL_GEN_SEED_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = call i64 (...) @early_random()
  %10 = trunc i64 %9 to i32
  %11 = load %struct.bool_gen*, %struct.bool_gen** %2, align 8
  %12 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %10, i32* %16, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.bool_gen*, %struct.bool_gen** %2, align 8
  %22 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.bool_gen*, %struct.bool_gen** %2, align 8
  %24 = getelementptr inbounds %struct.bool_gen, %struct.bool_gen* %23, i32 0, i32 1
  %25 = call i32 @simple_lock_init(i32* %24, i32 0)
  ret void
}

declare dso_local i64 @early_random(...) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
