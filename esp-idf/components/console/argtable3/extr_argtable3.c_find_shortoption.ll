; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_find_shortoption.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_find_shortoption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i64 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_hdr**, i8)* @find_shortoption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_shortoption(%struct.arg_hdr** %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_hdr**, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.arg_hdr** %0, %struct.arg_hdr*** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %8, i64 %10
  %12 = load %struct.arg_hdr*, %struct.arg_hdr** %11, align 8
  %13 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ARG_TERMINATOR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %45

19:                                               ; preds = %7
  %20 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %20, i64 %22
  %24 = load %struct.arg_hdr*, %struct.arg_hdr** %23, align 8
  %25 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %19
  %29 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %29, i64 %31
  %33 = load %struct.arg_hdr*, %struct.arg_hdr** %32, align 8
  %34 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8, i8* %5, align 1
  %37 = call i64 @strchr(i64 %35, i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %28, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strchr(i64, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
