; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c__realloc_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c__realloc_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_realloc_r(%struct._reent* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct._reent*, %struct._reent** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i8* @_malloc_r(%struct._reent* %12, i64 %13)
  store i8* %14, i8** %4, align 8
  br label %41

15:                                               ; preds = %3
  %16 = load %struct._reent*, %struct._reent** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @_malloc_usable_size_r(%struct._reent* %16, i8* %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %4, align 8
  br label %41

23:                                               ; preds = %15
  %24 = load %struct._reent*, %struct._reent** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @_malloc_r(%struct._reent* %24, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct._reent*, %struct._reent** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @_malloc_usable_size_r(%struct._reent* %33, i8* %34)
  %36 = call i32 @memcpy(i8* %31, i8* %32, i64 %35)
  %37 = load %struct._reent*, %struct._reent** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @_free_r(%struct._reent* %37, i8* %38)
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %30, %29, %21, %11
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i8* @_malloc_r(%struct._reent*, i64) #1

declare dso_local i64 @_malloc_usable_size_r(%struct._reent*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_free_r(%struct._reent*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
