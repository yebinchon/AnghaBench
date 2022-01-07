; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_speculate_ageit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_speculate_ageit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_speculative_age_q = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@vm_page_queue_speculative = common dso_local global %struct.vm_speculative_age_q* null, align 8
@VM_PAGE_SPECULATIVE_AGED_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_speculate_ageit(%struct.vm_speculative_age_q* %0) #0 {
  %2 = alloca %struct.vm_speculative_age_q*, align 8
  %3 = alloca %struct.vm_speculative_age_q*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.vm_speculative_age_q* %0, %struct.vm_speculative_age_q** %2, align 8
  %5 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** @vm_page_queue_speculative, align 8
  %6 = load i64, i64* @VM_PAGE_SPECULATIVE_AGED_Q, align 8
  %7 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %5, i64 %6
  store %struct.vm_speculative_age_q* %7, %struct.vm_speculative_age_q** %3, align 8
  %8 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %9 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %8, i32 0, i32 0
  %10 = call i64 @vm_page_queue_empty(%struct.TYPE_8__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %14 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %18 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %21 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %25 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %28 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @VM_PAGE_UNPACK_PTR(i8* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %4, align 8
  %33 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %34 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %33, i32 0, i32 0
  %35 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %40 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @VM_PAGE_UNPACK_PTR(i8* %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %4, align 8
  %45 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %46 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %45, i32 0, i32 0
  %47 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  br label %97

51:                                               ; preds = %1
  %52 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %53 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @VM_PAGE_UNPACK_PTR(i8* %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %4, align 8
  %58 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %59 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %66 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @VM_PAGE_UNPACK_PTR(i8* %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %4, align 8
  %71 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %72 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %79 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @VM_PAGE_UNPACK_PTR(i8* %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %4, align 8
  %84 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %85 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %84, i32 0, i32 0
  %86 = call i8* @VM_PAGE_PACK_PTR(%struct.TYPE_8__* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %91 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %3, align 8
  %95 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i8* %93, i8** %96, align 8
  br label %97

97:                                               ; preds = %51, %12
  %98 = load %struct.vm_speculative_age_q*, %struct.vm_speculative_age_q** %2, align 8
  %99 = getelementptr inbounds %struct.vm_speculative_age_q, %struct.vm_speculative_age_q* %98, i32 0, i32 0
  %100 = call i32 @vm_page_queue_init(%struct.TYPE_8__* %99)
  ret void
}

declare dso_local i64 @vm_page_queue_empty(%struct.TYPE_8__*) #1

declare dso_local i64 @VM_PAGE_UNPACK_PTR(i8*) #1

declare dso_local i8* @VM_PAGE_PACK_PTR(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_page_queue_init(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
