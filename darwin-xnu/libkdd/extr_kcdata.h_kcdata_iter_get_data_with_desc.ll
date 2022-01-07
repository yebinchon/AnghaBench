; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_get_data_with_desc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_get_data_with_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KCDATA_DESC_MAXLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i8**, i64*)* @kcdata_iter_get_data_with_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcdata_iter_get_data_with_desc(i32 %0, i8** %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @kcdata_iter_payload(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load i8**, i8*** %6, align 8
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %11, %4
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @kcdata_iter_payload(i32 %20)
  %22 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %23 = add i64 %21, %22
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i64*, i64** %8, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @kcdata_iter_size(i32 %30)
  %32 = load i64, i64* @KCDATA_DESC_MAXLEN, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64*, i64** %8, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %26
  ret void
}

declare dso_local i64 @kcdata_iter_payload(i32) #1

declare dso_local i64 @kcdata_iter_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
