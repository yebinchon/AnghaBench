; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_output.c_ah_hdrlen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_output.c_ah_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32 }
%struct.ah_algorithm = type { i32 (%struct.secasvar*)* }

@SADB_X_EXT_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ah_hdrlen(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.ah_algorithm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  %7 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %8 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ah_algorithm* @ah_algorithm_lookup(i32 %9)
  store %struct.ah_algorithm* %10, %struct.ah_algorithm** %4, align 8
  %11 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %12 = icmp ne %struct.ah_algorithm* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %16 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %23 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %22, i32 0, i32 0
  %24 = load i32 (%struct.secasvar*)*, i32 (%struct.secasvar*)** %23, align 8
  %25 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %26 = call i32 %24(%struct.secasvar* %25)
  %27 = add nsw i32 %26, 3
  %28 = and i32 %27, -4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  br label %45

33:                                               ; preds = %14
  %34 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %35 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %34, i32 0, i32 0
  %36 = load i32 (%struct.secasvar*)*, i32 (%struct.secasvar*)** %35, align 8
  %37 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %38 = call i32 %36(%struct.secasvar* %37)
  %39 = add nsw i32 %38, 3
  %40 = and i32 %39, -4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %33, %21
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.ah_algorithm* @ah_algorithm_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
