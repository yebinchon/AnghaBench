; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTexMtxImm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTexMtxImm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GX_MTX2x4 = common dso_local global i64 0, align 8
@GX_DTTMTX0 = common dso_local global i64 0, align 8
@wgPipe = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_LoadTexMtxImm(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @GX_MTX2x4, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 2, i32 3
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @GX_DTTMTX0, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @_SHIFTL(i64 %19, i32 2, i32 8)
  store i64 %20, i64* %7, align 8
  br label %28

21:                                               ; preds = %3
  %22 = load i64, i64* @GX_DTTMTX0, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @_SHIFTL(i64 %25, i32 2, i32 8)
  %27 = add nsw i64 1280, %26
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = mul nsw i64 %30, 4
  %32 = call i32 @GX_LOAD_XF_REGS(i64 %29, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @GX_MTX2x4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* @wgPipe, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @WriteMtxPS4x2(i32 %37, i8* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load i64, i64* @wgPipe, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @WriteMtxPS4x3(i32 %42, i8* %44)
  br label %46

46:                                               ; preds = %41, %36
  ret void
}

declare dso_local i64 @_SHIFTL(i64, i32, i32) #1

declare dso_local i32 @GX_LOAD_XF_REGS(i64, i64) #1

declare dso_local i32 @WriteMtxPS4x2(i32, i8*) #1

declare dso_local i32 @WriteMtxPS4x3(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
