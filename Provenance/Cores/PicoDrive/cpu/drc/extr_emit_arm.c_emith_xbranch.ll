; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/drc/extr_emit_arm.c_emith_xbranch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/drc/extr_emit_arm.c_emith_xbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tcache_ptr = common dso_local global i64 0, align 8
@EL_STATUS = common dso_local global i32 0, align 4
@EL_SVP = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"indirect jmp %08x->%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @emith_xbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emith_xbranch(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i64, i64* @tcache_ptr, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = ptrtoint i32* %11 to i64
  %15 = ptrtoint i32* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 4
  %18 = sub nsw i64 %17, 2
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @is_offset_24(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* @tcache_ptr, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 16777215
  %31 = call i32 @EOP_C_B(i32 %27, i32 %28, i32 %30)
  br label %42

32:                                               ; preds = %3
  %33 = load i32, i32* @EL_STATUS, align 4
  %34 = load i32, i32* @EL_SVP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EL_ANOMALY, align 4
  %37 = or i32 %35, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* @tcache_ptr, align 8
  %40 = call i32 @elprintf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %38, i64 %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %26
  %43 = load i64, i64* @tcache_ptr, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32*, i32** %9, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i32 @is_offset_24(i32) #1

declare dso_local i32 @EOP_C_B(i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
