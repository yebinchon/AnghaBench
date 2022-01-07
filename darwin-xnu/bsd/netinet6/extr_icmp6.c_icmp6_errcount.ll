; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_errcount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_icmp6.c_icmp6_errcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp6errstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icmp6errstat*, i32, i32)* @icmp6_errcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp6_errcount(%struct.icmp6errstat* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.icmp6errstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.icmp6errstat* %0, %struct.icmp6errstat** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %77 [
    i32 142, label %8
    i32 136, label %36
    i32 131, label %41
    i32 132, label %54
    i32 128, label %72
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %35 [
    i32 137, label %10
    i32 140, label %15
    i32 139, label %20
    i32 141, label %25
    i32 138, label %30
  ]

10:                                               ; preds = %8
  %11 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %12 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  br label %82

15:                                               ; preds = %8
  %16 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %17 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %82

20:                                               ; preds = %8
  %21 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %22 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %82

25:                                               ; preds = %8
  %26 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %27 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %82

30:                                               ; preds = %8
  %31 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %32 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %82

35:                                               ; preds = %8
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %38 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %82

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %53 [
    i32 129, label %43
    i32 130, label %48
  ]

43:                                               ; preds = %41
  %44 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %45 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %82

48:                                               ; preds = %41
  %49 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %50 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %82

53:                                               ; preds = %41
  br label %77

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %71 [
    i32 135, label %56
    i32 134, label %61
    i32 133, label %66
  ]

56:                                               ; preds = %54
  %57 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %58 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %82

61:                                               ; preds = %54
  %62 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %63 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %82

66:                                               ; preds = %54
  %67 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %68 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %82

71:                                               ; preds = %54
  br label %77

72:                                               ; preds = %3
  %73 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %74 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %82

77:                                               ; preds = %3, %71, %53, %35
  %78 = load %struct.icmp6errstat*, %struct.icmp6errstat** %4, align 8
  %79 = getelementptr inbounds %struct.icmp6errstat, %struct.icmp6errstat* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %72, %66, %61, %56, %48, %43, %36, %30, %25, %20, %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
