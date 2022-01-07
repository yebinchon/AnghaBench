; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i32, i32 (i32)* }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @arg_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_reset(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.arg_hdr**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = bitcast i8** %5 to %struct.arg_hdr**
  store %struct.arg_hdr** %6, %struct.arg_hdr*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %8, i64 %10
  %12 = load %struct.arg_hdr*, %struct.arg_hdr** %11, align 8
  %13 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %12, i32 0, i32 2
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %7
  %17 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %17, i64 %19
  %21 = load %struct.arg_hdr*, %struct.arg_hdr** %20, align 8
  %22 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %21, i32 0, i32 2
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %24, i64 %26
  %28 = load %struct.arg_hdr*, %struct.arg_hdr** %27, align 8
  %29 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %23(i32 %30)
  br label %32

32:                                               ; preds = %16, %7
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.arg_hdr**, %struct.arg_hdr*** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %34, i64 %37
  %39 = load %struct.arg_hdr*, %struct.arg_hdr** %38, align 8
  %40 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ARG_TERMINATOR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %7, label %46

46:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
