; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_bios_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_bios_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32 }

@CCREG = common dso_local global i32 0, align 4
@HOST_CCREG = common dso_local global i8 0, align 1
@is_delayslot = common dso_local global i32 0, align 4
@start = common dso_local global i64 0, align 8
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@ccadj = common dso_local global i32* null, align 8
@slave = common dso_local global i64 0, align 8
@slave_handle_bios = common dso_local global i64 0, align 8
@master_handle_bios = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bios_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %6 = load %struct.regstat*, %struct.regstat** %4, align 8
  %7 = getelementptr inbounds %struct.regstat, %struct.regstat* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CCREG, align 4
  %10 = call signext i8 @get_reg(i32 %8, i32 %9)
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @HOST_CCREG, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* @is_delayslot, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @start, align 8
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i32 @emit_movimm(i64 %27, i32 0)
  %29 = load i8, i8* @HOST_CCREG, align 1
  %30 = load i32, i32* @CLOCK_DIVIDER, align 4
  %31 = load i32*, i32** @ccadj, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %30, %35
  %37 = load i8, i8* @HOST_CCREG, align 1
  %38 = call i32 @emit_addimm(i8 signext %29, i32 %36, i8 signext %37)
  %39 = load i64, i64* @slave, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i64, i64* @slave_handle_bios, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @emit_call(i32 %43)
  br label %49

45:                                               ; preds = %2
  %46 = load i64, i64* @master_handle_bios, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @emit_call(i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  ret void
}

declare dso_local signext i8 @get_reg(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_movimm(i64, i32) #1

declare dso_local i32 @emit_addimm(i8 signext, i32, i8 signext) #1

declare dso_local i32 @emit_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
