; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_data_with_desc_valid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkdd/extr_kcdata.h_kcdata_iter_data_with_desc_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KCDATA_DESC_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @kcdata_iter_data_with_desc_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_iter_data_with_desc_valid(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @kcdata_iter_valid(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @kcdata_iter_size(i32 %9)
  %11 = load i32, i32* @KCDATA_DESC_MAXLEN, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp sge i64 %10, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @kcdata_iter_payload(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* @KCDATA_DESC_MAXLEN, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %16, %8, %2
  %28 = phi i1 [ false, %8 ], [ false, %2 ], [ %26, %16 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @kcdata_iter_valid(i32) #1

declare dso_local i64 @kcdata_iter_size(i32) #1

declare dso_local i64 @kcdata_iter_payload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
