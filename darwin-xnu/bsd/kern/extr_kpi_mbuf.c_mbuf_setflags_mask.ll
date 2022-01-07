; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_setflags_mask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_setflags_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@mbuf_flags_mask = common dso_local global i32 0, align 4
@mbuf_cflags_mask = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_setflags_mask(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @mbuf_flags_mask, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @mbuf_cflags_mask, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %9, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %7, align 4
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = or i32 %24, %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  %39 = load i32, i32* @M_PKTHDR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %18
  %43 = load i32, i32* @M_PKTHDR, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @M_PKTHDR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  %57 = call i32 @m_reinit(%struct.TYPE_4__* %48, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %42, %18
  br label %59

59:                                               ; preds = %58, %16
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @m_reinit(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
