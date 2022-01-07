; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_aliasreq_64_to_32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_aliasreq_64_to_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_aliasreq_64 = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.in6_aliasreq_32 = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_aliasreq_64_to_32(%struct.in6_aliasreq_64* %0, %struct.in6_aliasreq_32* %1) #0 {
  %3 = alloca %struct.in6_aliasreq_64*, align 8
  %4 = alloca %struct.in6_aliasreq_32*, align 8
  store %struct.in6_aliasreq_64* %0, %struct.in6_aliasreq_64** %3, align 8
  store %struct.in6_aliasreq_32* %1, %struct.in6_aliasreq_32** %4, align 8
  %5 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %6 = call i32 @bzero(%struct.in6_aliasreq_32* %5, i32 36)
  %7 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %8 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %11 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bcopy(i32 %9, i32 %12, i32 4)
  %14 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %15 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %18 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %20 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %23 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %25 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %28 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %30 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %33 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %35 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %39 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 4
  %41 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %42 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %46 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %49 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %53 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.in6_aliasreq_64*, %struct.in6_aliasreq_64** %3, align 8
  %56 = getelementptr inbounds %struct.in6_aliasreq_64, %struct.in6_aliasreq_64* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.in6_aliasreq_32*, %struct.in6_aliasreq_32** %4, align 8
  %60 = getelementptr inbounds %struct.in6_aliasreq_32, %struct.in6_aliasreq_32* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.in6_aliasreq_32*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
