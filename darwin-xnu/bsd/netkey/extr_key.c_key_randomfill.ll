; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_randomfill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_randomfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key_randomfill.warn = internal global i32 1, align 4
@.str = private unnamed_addr constant [67 x i8] c"WARNING: pseudo-random number generator used for IPsec processing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_randomfill(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @read_random(i8* %7, i32 %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %39, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = call i32 (...) @random()
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %26, %27
  br label %30

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i64 [ %28, %25 ], [ 4, %29 ]
  %32 = call i32 @bcopy(i32* %6, i32* %20, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* @key_randomfill.warn, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @key_randomfill.warn, align 4
  br label %39

39:                                               ; preds = %37, %30
  br label %11

40:                                               ; preds = %11
  ret void
}

declare dso_local i64 @read_random(i8*, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
