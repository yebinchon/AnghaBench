; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_ProtectRange.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_ProtectRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_PROTECTCHANMAX = common dso_local global i32 0, align 4
@_memReg = common dso_local global i32* null, align 8
@SYS_PROTECTRDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_ProtectRange(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SYS_PROTECTCHANMAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %80

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = and i32 %18, -1024
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1023
  %25 = and i32 %24, -1024
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @DCFlushRange(i8* %28, i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @_CPU_ISR_Disable(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @IRQMASK(i32 %35)
  %37 = call i32 @__UnmaskIrq(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @_SHIFTR(i32 %38, i32 10, i32 16)
  %40 = load i32*, i32** @_memReg, align 8
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @_SHIFTR(i32 %45, i32 10, i32 16)
  %47 = load i32*, i32** @_memReg, align 8
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 2
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i32*, i32** @_memReg, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 1
  %59 = call i32 @_SHIFTL(i32 3, i32 %58, i32 2)
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 1
  %65 = call i32 @_SHIFTL(i32 %62, i32 %64, i32 2)
  %66 = or i32 %61, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** @_memReg, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @SYS_PROTECTRDWR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %16
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @IRQMASK(i32 %74)
  %76 = call i32 @__MaskIrq(i32 %75)
  br label %77

77:                                               ; preds = %73, %16
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @_CPU_ISR_Restore(i32 %78)
  br label %80

80:                                               ; preds = %77, %4
  ret void
}

declare dso_local i32 @DCFlushRange(i8*, i32) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__UnmaskIrq(i32) #1

declare dso_local i32 @IRQMASK(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @__MaskIrq(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
