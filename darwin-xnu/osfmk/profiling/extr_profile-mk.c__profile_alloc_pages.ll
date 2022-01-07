; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c__profile_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c__profile_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"Call to _profile_alloc_pages while profiling is running.\00", align 1
@kernel_map = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not allocate memory for profiling\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Allocated %d bytes for profiling, address 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_profile_alloc_pages(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call %struct.TYPE_2__* @PROFILE_VARS(i32 0)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* @kernel_map, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @kmem_alloc(i32 %11, i64* %3, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i64, i64* %3, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @memset(i8* %19, i8 signext 0, i64 %20)
  %22 = call %struct.TYPE_2__* @PROFILE_VARS(i32 0)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i64, i64* %2, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %26, %17
  %33 = load i64, i64* %3, align 8
  %34 = inttoptr i64 %33 to i8*
  ret i8* %34
}

declare dso_local %struct.TYPE_2__* @PROFILE_VARS(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @kmem_alloc(i32, i64*, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
