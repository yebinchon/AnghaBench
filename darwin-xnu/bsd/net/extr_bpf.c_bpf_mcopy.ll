; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_mcopy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_mcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"bpf_mcopy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i8*, i64)* @bpf_mcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_mcopy(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %19, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = icmp eq %struct.mbuf* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @min(i32 %22, i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = call i32 @mbuf_data(%struct.mbuf* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @bcopy(i32 %26, i32* %27, i64 %28)
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = load %struct.mbuf*, %struct.mbuf** %31, align 8
  store %struct.mbuf* %32, %struct.mbuf** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 %33
  store i32* %35, i32** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %6, align 8
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @bcopy(i32, i32*, i64) #1

declare dso_local i32 @mbuf_data(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
