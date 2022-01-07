; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pal_routines.c_pal_efi_call_in_64bit_mode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pal_routines.c_pal_efi_call_in_64bit_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pal_efi_registers = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"pal_efi_call_in_64bit_mode(0x%016llx, %p, %p, %lu, %p)\0A\00", align 1
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@gPEEFISystemTable = common dso_local global i32 0, align 4
@gPEEFIRuntimeServices = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pal_efi_call_in_64bit_mode(i64 %0, %struct.pal_efi_registers* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pal_efi_registers*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %7, align 8
  store %struct.pal_efi_registers* %1, %struct.pal_efi_registers** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.pal_efi_registers*, %struct.pal_efi_registers** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = call i32 @DBG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %12, %struct.pal_efi_registers* %13, i8* %14, i64 %15, i64* %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %21, i32* %6, align 4
  br label %59

22:                                               ; preds = %5
  %23 = load %struct.pal_efi_registers*, %struct.pal_efi_registers** %8, align 8
  %24 = icmp eq %struct.pal_efi_registers* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = urem i64 %29, 16
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25, %22
  %33 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %33, i32* %6, align 4
  br label %59

34:                                               ; preds = %28
  %35 = load i32, i32* @gPEEFISystemTable, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @gPEEFIRuntimeServices, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %41, i32* %6, align 4
  br label %59

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %47, i32* %6, align 4
  br label %59

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.pal_efi_registers*, %struct.pal_efi_registers** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @_pal_efi_call_in_64bit_mode_asm(i64 %49, %struct.pal_efi_registers* %50, i8* %51, i64 %52)
  %54 = load %struct.pal_efi_registers*, %struct.pal_efi_registers** %8, align 8
  %55 = getelementptr inbounds %struct.pal_efi_registers, %struct.pal_efi_registers* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %11, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %48, %46, %40, %32, %20
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @DBG(i8*, i64, %struct.pal_efi_registers*, i8*, i64, i64*) #1

declare dso_local i32 @_pal_efi_call_in_64bit_mode_asm(i64, %struct.pal_efi_registers*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
