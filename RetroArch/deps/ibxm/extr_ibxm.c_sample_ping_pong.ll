; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_sample_ping_pong.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/ibxm/extr_ibxm.c_sample_ping_pong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample = type { i32, i32, i16* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sample*)* @sample_ping_pong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_ping_pong(%struct.sample* %0) #0 {
  %2 = alloca %struct.sample*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store %struct.sample* %0, %struct.sample** %2, align 8
  %9 = load %struct.sample*, %struct.sample** %2, align 8
  %10 = getelementptr inbounds %struct.sample, %struct.sample* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sample*, %struct.sample** %2, align 8
  %13 = getelementptr inbounds %struct.sample, %struct.sample* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sample*, %struct.sample** %2, align 8
  %19 = getelementptr inbounds %struct.sample, %struct.sample* %18, i32 0, i32 2
  %20 = load i16*, i16** %19, align 8
  store i16* %20, i16** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = call i64 @calloc(i32 %24, i32 2)
  %26 = inttoptr i64 %25 to i16*
  store i16* %26, i16** %8, align 8
  %27 = load i16*, i16** %8, align 8
  %28 = icmp ne i16* %27, null
  br i1 %28, label %29, label %88

29:                                               ; preds = %1
  %30 = load i16*, i16** %8, align 8
  %31 = load i16*, i16** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 2
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i16* %30, i16* %31, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %56, %29
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i16*, i16** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %42, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = load i16*, i16** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %50, i64 %54
  store i16 %49, i16* %55, align 2
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.sample*, %struct.sample** %2, align 8
  %61 = getelementptr inbounds %struct.sample, %struct.sample* %60, i32 0, i32 2
  %62 = load i16*, i16** %61, align 8
  %63 = call i32 @free(i16* %62)
  %64 = load i16*, i16** %8, align 8
  %65 = load %struct.sample*, %struct.sample** %2, align 8
  %66 = getelementptr inbounds %struct.sample, %struct.sample* %65, i32 0, i32 2
  store i16* %64, i16** %66, align 8
  %67 = load %struct.sample*, %struct.sample** %2, align 8
  %68 = getelementptr inbounds %struct.sample, %struct.sample* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sample*, %struct.sample** %2, align 8
  %72 = getelementptr inbounds %struct.sample, %struct.sample* %71, i32 0, i32 2
  %73 = load i16*, i16** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = load %struct.sample*, %struct.sample** %2, align 8
  %79 = getelementptr inbounds %struct.sample, %struct.sample* %78, i32 0, i32 2
  %80 = load i16*, i16** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.sample*, %struct.sample** %2, align 8
  %83 = getelementptr inbounds %struct.sample, %struct.sample* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %80, i64 %86
  store i16 %77, i16* %87, align 2
  br label %88

88:                                               ; preds = %59, %1
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i16*, i16*, i32) #1

declare dso_local i32 @free(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
