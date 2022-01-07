; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/crypto/rc4/extr_rc4.c_rc4_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/crypto/rc4/extr_rc4.c_rc4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i64*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc4_init(%struct.rc4_state* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.rc4_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rc4_state* %0, %struct.rc4_state** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %16 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 %14, i64* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %26 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %28 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %62, %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %34 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %40, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %39, %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %51 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %57 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = call i32 @swap_bytes(i64* %55, i64* %60)
  br label %62

62:                                               ; preds = %32
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %29

65:                                               ; preds = %29
  ret void
}

declare dso_local i32 @swap_bytes(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
