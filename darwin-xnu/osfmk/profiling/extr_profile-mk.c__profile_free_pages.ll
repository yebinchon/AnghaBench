; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c__profile_free_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/profiling/extr_profile-mk.c__profile_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"Freed %d bytes for profiling, address 0x%x\0A\00", align 1
@kernel_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_profile_free_pages(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call %struct.TYPE_2__* @PROFILE_VARS(i32 0)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i8*, i8** %3, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @kernel_map, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @kmem_free(i32 %16, i32 %18, i64 %19)
  ret void
}

declare dso_local %struct.TYPE_2__* @PROFILE_VARS(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @kmem_free(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
