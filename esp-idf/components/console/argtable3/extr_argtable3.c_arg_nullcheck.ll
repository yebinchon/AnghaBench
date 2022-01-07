; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_nullcheck.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_nullcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32 }

@ARG_TERMINATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arg_nullcheck(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.arg_hdr**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = bitcast i8** %6 to %struct.arg_hdr**
  store %struct.arg_hdr** %7, %struct.arg_hdr*** %4, align 8
  %8 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %9 = icmp ne %struct.arg_hdr** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %13, i64 %15
  %17 = load %struct.arg_hdr*, %struct.arg_hdr** %16, align 8
  %18 = icmp ne %struct.arg_hdr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %35

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.arg_hdr**, %struct.arg_hdr*** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %22, i64 %25
  %27 = load %struct.arg_hdr*, %struct.arg_hdr** %26, align 8
  %28 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ARG_TERMINATOR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %12, label %34

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %19, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
