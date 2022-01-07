; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/crypto/rc4/extr_rc4.c_rc4_crypt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/crypto/rc4/extr_rc4.c_rc4_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc4_state = type { i64, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc4_crypt(%struct.rc4_state* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.rc4_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.rc4_state* %0, %struct.rc4_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %80, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %11
  %16 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %17 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %21 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %24 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %29 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %33 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %36 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %40 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %43 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = call i32 @swap_bytes(i64* %38, i64* %45)
  %47 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %48 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %51 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %56 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %59 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %54, %62
  store i64 %63, i64* %10, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rc4_state*, %struct.rc4_state** %5, align 8
  %70 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = xor i64 %68, %74
  %76 = load i64*, i64** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %15
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %11

83:                                               ; preds = %11
  ret void
}

declare dso_local i32 @swap_bytes(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
