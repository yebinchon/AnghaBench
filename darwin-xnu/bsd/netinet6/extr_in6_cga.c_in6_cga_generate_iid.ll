; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cga.c_in6_cga_generate_iid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_cga.c_in6_cga_generate_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_cga_prepare = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32*, i32 }
%struct.in6_addr = type { i32*, i32* }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in6_cga_prepare*, %struct.iovec*, i32, %struct.in6_addr*)* @in6_cga_generate_iid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_cga_generate_iid(%struct.in6_cga_prepare* %0, %struct.iovec* %1, i32 %2, %struct.in6_addr* %3) #0 {
  %5 = alloca %struct.in6_cga_prepare*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.in6_cga_prepare* %0, %struct.in6_cga_prepare** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.in6_addr* %3, %struct.in6_addr** %8, align 8
  %12 = load i32, i32* @SHA1_RESULTLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  %16 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %5, align 8
  %17 = icmp ne %struct.in6_cga_prepare* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  %20 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %5, align 8
  %21 = getelementptr inbounds %struct.in6_cga_prepare, %struct.in6_cga_prepare* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 8
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.iovec*, %struct.iovec** %6, align 8
  %27 = icmp ne %struct.iovec* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.iovec*, %struct.iovec** %6, align 8
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i1 [ false, %4 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY(i32 %35)
  %37 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %38 = icmp ne %struct.in6_addr* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = call i32 @SHA1Init(i32* %9)
  %42 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %5, align 8
  %43 = getelementptr inbounds %struct.in6_cga_prepare, %struct.in6_cga_prepare* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @SHA1Update(i32* %9, i32* %44, i32 16)
  %46 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %47 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @SHA1Update(i32* %9, i32* %48, i32 8)
  %50 = call i32 @SHA1Update(i32* %9, i32* %7, i32 1)
  %51 = load %struct.iovec*, %struct.iovec** %6, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.iovec*, %struct.iovec** %6, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SHA1Update(i32* %9, i32* %53, i32 %56)
  %58 = call i32 @SHA1Final(i32* %15, i32* %9)
  %59 = load %struct.in6_cga_prepare*, %struct.in6_cga_prepare** %5, align 8
  %60 = getelementptr inbounds %struct.in6_cga_prepare, %struct.in6_cga_prepare* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 5
  %63 = getelementptr inbounds i32, i32* %15, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = and i32 %64, 28
  %66 = or i32 %62, %65
  %67 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %68 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  store i32 %66, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %15, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %74 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  store i32 %72, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %15, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %80 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 10
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds i32, i32* %15, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %86 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 11
  store i32 %84, i32* %88, align 4
  %89 = getelementptr inbounds i32, i32* %15, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %92 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 12
  store i32 %90, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %15, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %98 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 13
  store i32 %96, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %15, i64 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %104 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 14
  store i32 %102, i32* %106, align 4
  %107 = getelementptr inbounds i32, i32* %15, i64 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %110 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 15
  store i32 %108, i32* %112, align 4
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @SHA1Init(i32*) #2

declare dso_local i32 @SHA1Update(i32*, i32*, i32) #2

declare dso_local i32 @SHA1Final(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
