; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_vm_compressor_algorithm_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_algorithms.c_vm_compressor_algorithm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VM_COMPRESSOR_DEFAULT_CODEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"vm_compressor_codec\00", align 1
@CMODE_WK = common dso_local global i64 0, align 8
@CMODE_LZ4 = common dso_local global i64 0, align 8
@CMODE_HYB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid VM compression codec: %u\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_compressor_current_codec = common dso_local global i64 0, align 8
@vmctune = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_algorithm_init() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @VM_COMPRESSOR_DEFAULT_CODEC, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64* %1, i32 8)
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @VM_COMPRESSOR_DEFAULT_CODEC, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @CMODE_WK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @CMODE_LZ4, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @CMODE_HYB, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %7, %0
  %20 = phi i1 [ true, %11 ], [ true, %7 ], [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @assertf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i64*, i32) #1

declare dso_local i32 @assertf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
