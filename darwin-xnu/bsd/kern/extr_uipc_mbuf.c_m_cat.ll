; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_cat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.mbuf*, i32*, i32* }

@M_EXT = common dso_local global i32 0, align 4
@MLEN = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_cat(%struct.mbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 2
  %8 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %9 = icmp ne %struct.mbuf* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 2
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %13, %struct.mbuf** %3, align 8
  br label %5

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %49, %14
  %16 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %15
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @M_EXT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %18
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @MLEN, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = icmp uge i32* %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %25, %18
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 2
  store %struct.mbuf* %46, %struct.mbuf** %48, align 8
  br label %73

49:                                               ; preds = %25
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = load i32, i32* @caddr_t, align 4
  %52 = call i32 @MTOD(%struct.mbuf* %50, i32 %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %54 = load i32, i32* @caddr_t, align 4
  %55 = call i32 @MTOD(%struct.mbuf* %53, i32 %54)
  %56 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @bcopy(i32 %52, i32 %59, i32 %62)
  %64 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %72 = call %struct.mbuf* @m_free(%struct.mbuf* %71)
  store %struct.mbuf* %72, %struct.mbuf** %4, align 8
  br label %15

73:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @MTOD(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
