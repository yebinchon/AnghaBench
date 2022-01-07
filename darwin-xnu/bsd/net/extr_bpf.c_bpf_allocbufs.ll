; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_allocbufs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_allocbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i64, i64, i64, i32*, i32*, i32, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_d*)* @bpf_allocbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_allocbufs(%struct.bpf_d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_d*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %3, align 8
  %4 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* @M_DEVBUF, align 4
  %13 = call i32 @FREE(i32* %11, i32 %12)
  %14 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %14, i32 0, i32 5
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %17, i32 0, i32 7
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = call i32 @FREE(i32* %24, i32 %25)
  %27 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %27, i32 0, i32 7
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %21, %16
  %30 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %36 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @M_DEVBUF, align 4
  %39 = call i32 @FREE(i32* %37, i32 %38)
  %40 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %44 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = load i32, i32* @M_WAIT, align 4
  %48 = call i64 @_MALLOC(i32 %45, i32 %46, i32 %47)
  %49 = inttoptr i64 %48 to i8*
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %52 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %51, i32 0, i32 4
  store i32* %50, i32** %52, align 8
  %53 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @ENOBUFS, align 4
  store i32 %58, i32* %2, align 4
  br label %92

59:                                               ; preds = %42
  %60 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %61 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = load i32, i32* @M_WAIT, align 4
  %65 = call i64 @_MALLOC(i32 %62, i32 %63, i32 %64)
  %66 = inttoptr i64 %65 to i8*
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %69 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %71 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %76 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @FREE(i32* %77, i32 %78)
  %80 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %81 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @ENOBUFS, align 4
  store i32 %82, i32* %2, align 4
  br label %92

83:                                               ; preds = %59
  %84 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %85 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %87 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %89 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %91 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %83, %74, %57
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
