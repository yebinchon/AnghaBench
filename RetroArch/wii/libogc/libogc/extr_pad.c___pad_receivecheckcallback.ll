; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_receivecheckcallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c___pad_receivecheckcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__pad_enabledbits = common dso_local global i32 0, align 4
@__pad_waitingbits = common dso_local global i32 0, align 4
@__pad_checkingbits = common dso_local global i32 0, align 4
@SI_GC_WIRELESS = common dso_local global i32 0, align 4
@SI_WIRELESS_RECEIVED = common dso_local global i32 0, align 4
@SI_WIRELESS_FIX_ID = common dso_local global i32 0, align 4
@SI_WIRELESS_IR = common dso_local global i32 0, align 4
@SI_WIRELESS_CONT_MASK = common dso_local global i32 0, align 4
@SI_WIRELESS_LITE = common dso_local global i32 0, align 4
@__pad_cmdreadorigin = common dso_local global i32 0, align 4
@__pad_origin = common dso_local global i32* null, align 8
@__pad_originupdatecallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @__pad_receivecheckcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pad_receivecheckcallback(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @PAD_ENABLEDMASK(i64 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @__pad_enabledbits, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, -256
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @__pad_waitingbits, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @__pad_waitingbits, align 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @__pad_checkingbits, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @__pad_checkingbits, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 15
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SI_GC_WIRELESS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SI_WIRELESS_RECEIVED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SI_WIRELESS_FIX_ID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SI_WIRELESS_IR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SI_WIRELESS_CONT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SI_WIRELESS_LITE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %3, align 8
  %61 = load i32*, i32** @__pad_origin, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @__pad_originupdatecallback, align 4
  %66 = call i32 @SI_Transfer(i64 %60, i32* @__pad_cmdreadorigin, i32 1, i32 %64, i32 10, i32 %65, i32 0)
  br label %70

67:                                               ; preds = %54, %49, %44, %39, %34, %29, %13
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @__pad_disable(i64 %68)
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %2
  ret void
}

declare dso_local i32 @PAD_ENABLEDMASK(i64) #1

declare dso_local i32 @SI_Transfer(i64, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__pad_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
