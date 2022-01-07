; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_cache_flush_page_phys.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_loose_ends.c_cache_flush_page_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"cacheline_size=0 cpuid_infop=%p\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_flush_page_phys(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call %struct.TYPE_4__* (...) @cpuid_info()
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @mfence()
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @ml_set_interrupts_enabled(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @i386_ptob(i32 %24)
  %26 = call i64 @PHYSMAP_PTOV(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %34, %17
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @__clflush(i8* %32)
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %4, align 8
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ml_set_interrupts_enabled(i32 %42)
  %44 = call i32 (...) @mfence()
  ret void
}

declare dso_local %struct.TYPE_4__* @cpuid_info(...) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i64 @PHYSMAP_PTOV(i32) #1

declare dso_local i32 @i386_ptob(i32) #1

declare dso_local i32 @__clflush(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
