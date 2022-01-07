; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_id.c_randomid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_id.c_randomid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.randomtab = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.randomtab*)* @randomid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randomid(%struct.randomtab* %0) #0 {
  %2 = alloca %struct.randomtab*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.randomtab* %0, %struct.randomtab** %2, align 8
  %7 = call i32 (...) @net_uptime()
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %10 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %13 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %19 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %1
  %23 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %24 = call i32 @initid(%struct.randomtab* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = call i32 (...) @RandomULong()
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %6, align 4
  %31 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %32 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %38 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %43 = call i32 @initid(%struct.randomtab* %42)
  br label %44

44:                                               ; preds = %41, %25
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %51 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %55 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %59 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %63 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = srem i32 %61, %64
  %66 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %67 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %75 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %79 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %82 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %85 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %88 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = xor i32 %86, %89
  %91 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %92 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pmod(i32 %83, i32 %90, i32 %93)
  %95 = xor i32 %80, %94
  %96 = load %struct.randomtab*, %struct.randomtab** %2, align 8
  %97 = getelementptr inbounds %struct.randomtab, %struct.randomtab* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  ret i32 %99
}

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @initid(%struct.randomtab*) #1

declare dso_local i32 @RandomULong(...) #1

declare dso_local i32 @pmod(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
