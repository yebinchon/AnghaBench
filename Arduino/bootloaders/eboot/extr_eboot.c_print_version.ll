; ModuleID = '/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_print_version.c'
source_filename = "/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_print_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APP_START_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"v%08x\0A\00\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_version(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 4
  %6 = alloca [2 x i64], align 16
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @APP_START_OFFSET, align 8
  %9 = add nsw i64 %7, %8
  %10 = add i64 %9, 4
  %11 = add i64 %10, 4
  %12 = call i64 @SPIRead(i64 %11, i64* %4, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5, align 4
  %16 = load i8*, i8** %5, align 4
  %17 = bitcast i8* %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load i8*, i8** %5, align 4
  %22 = bitcast i8* %21 to i64*
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %27 = bitcast i64* %26 to i8*
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ets_printf(i8* %27, i64 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @SPIRead(i64, i64*, i32) #1

declare dso_local i32 @ets_printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
