; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_uc_to_mb_write_replacement.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_unicode.h_uc_to_mb_write_replacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uc_to_mb_fallback_locals = type { i64, i64, i64 }

@E2BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @uc_to_mb_write_replacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uc_to_mb_write_replacement(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uc_to_mb_fallback_locals*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.uc_to_mb_fallback_locals*
  store %struct.uc_to_mb_fallback_locals* %9, %struct.uc_to_mb_fallback_locals** %7, align 8
  %10 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %11 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %16 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i64, i64* @E2BIG, align 8
  %22 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %23 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %41

24:                                               ; preds = %14
  %25 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %26 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @memcpy(i64 %27, i8* %28, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %33 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.uc_to_mb_fallback_locals*, %struct.uc_to_mb_fallback_locals** %7, align 8
  %38 = getelementptr inbounds %struct.uc_to_mb_fallback_locals, %struct.uc_to_mb_fallback_locals* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %24, %20
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
