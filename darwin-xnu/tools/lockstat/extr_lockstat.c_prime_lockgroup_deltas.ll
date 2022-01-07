; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/lockstat/extr_lockstat.c_prime_lockgroup_deltas.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/lockstat/extr_lockstat.c_prime_lockgroup_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4
@lockgroup_start = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can't allocate memory for lockgroup info\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@lockgroup_info = common dso_local global i32 0, align 4
@lockgroup_deltas = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prime_lockgroup_deltas() #0 {
  %1 = load i32, i32* @count, align 4
  %2 = call i8* @calloc(i32 %1, i32 4)
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** @lockgroup_start, align 8
  %4 = load i32*, i32** @lockgroup_start, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  %10 = call i32 @exit(i32 %9) #3
  unreachable

11:                                               ; preds = %0
  %12 = load i32*, i32** @lockgroup_start, align 8
  %13 = load i32, i32* @lockgroup_info, align 4
  %14 = load i32, i32* @count, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memcpy(i32* %12, i32 %13, i32 %17)
  %19 = load i32, i32* @count, align 4
  %20 = call i8* @calloc(i32 %19, i32 4)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** @lockgroup_deltas, align 8
  %22 = load i32*, i32** @lockgroup_deltas, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %11
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %11
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
