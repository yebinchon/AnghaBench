; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr_wrap = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PF_ADDR_DYNIFTL = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@PFI_KIF_REF_RULE = common dso_local global i32 0, align 4
@pfi_addr_pl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_dynaddr_remove(%struct.pf_addr_wrap* %0) #0 {
  %2 = alloca %struct.pf_addr_wrap*, align 8
  store %struct.pf_addr_wrap* %0, %struct.pf_addr_wrap** %2, align 8
  %3 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %4 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PF_ADDR_DYNIFTL, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %10 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %16 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %24 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %14, %8, %1
  br label %78

31:                                               ; preds = %22
  %32 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %33 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %40 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* @entry, align 4
  %44 = call i32 @TAILQ_REMOVE(i32* %38, %struct.TYPE_6__* %42, i32 %43)
  %45 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %46 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* @PFI_KIF_REF_RULE, align 4
  %52 = call i32 @pfi_kif_unref(%struct.TYPE_7__* %50, i32 %51)
  %53 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %54 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %59 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @pfr_detach_table(i32* %63)
  %65 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %66 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %71 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @pool_put(i32* @pfi_addr_pl, %struct.TYPE_6__* %73)
  %75 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %2, align 8
  %76 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %77, align 8
  br label %78

78:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @pfi_kif_unref(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pfr_detach_table(i32*) #1

declare dso_local i32 @pool_put(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
