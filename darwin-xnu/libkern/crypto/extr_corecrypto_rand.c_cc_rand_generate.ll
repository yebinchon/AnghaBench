; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_rand.c_cc_rand_generate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/crypto/extr_corecrypto_rand.c_cc_rand_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ccrng_state* (i32*)* }
%struct.ccrng_state = type { i32 }

@g_crypto_funcs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_rand_generate(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ccrng_state*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.ccrng_state* null, %struct.ccrng_state** %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_crypto_funcs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ccrng_state* (i32*)*, %struct.ccrng_state* (i32*)** %11, align 8
  %13 = call %struct.ccrng_state* %12(i32* %6)
  store %struct.ccrng_state* %13, %struct.ccrng_state** %5, align 8
  %14 = load %struct.ccrng_state*, %struct.ccrng_state** %5, align 8
  %15 = icmp ne %struct.ccrng_state* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.ccrng_state*, %struct.ccrng_state** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @ccrng_generate(%struct.ccrng_state* %17, i64 %18, i8* %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %16, %9
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @ccrng_generate(%struct.ccrng_state*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
