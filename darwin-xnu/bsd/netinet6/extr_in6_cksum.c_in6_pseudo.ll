; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cksum.c_in6_pseudo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cksum.c_in6_pseudo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @in6_pseudo(%struct.in6_addr* %0, %struct.in6_addr* %1, i64 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %10 = bitcast %struct.in6_addr* %9 to i64*
  store i64* %10, i64** %8, align 8
  %11 = load i64*, i64** %8, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %14, %13
  store i64 %15, i64* %7, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %17 = call i32 @IN6_IS_SCOPE_EMBED(%struct.in6_addr* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 5
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 6
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 7
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %7, align 8
  %56 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %57 = bitcast %struct.in6_addr* %56 to i64*
  store i64* %57, i64** %8, align 8
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %7, align 8
  %63 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %64 = call i32 @IN6_IS_SCOPE_EMBED(%struct.in6_addr* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %25
  %67 = load i64*, i64** %8, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %66, %25
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %7, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %7, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64*, i64** %8, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 6
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 7
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @ADDCARRY(i64 %106)
  %108 = load i64, i64* %7, align 8
  ret i64 %108
}

declare dso_local i32 @IN6_IS_SCOPE_EMBED(%struct.in6_addr*) #1

declare dso_local i32 @ADDCARRY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
