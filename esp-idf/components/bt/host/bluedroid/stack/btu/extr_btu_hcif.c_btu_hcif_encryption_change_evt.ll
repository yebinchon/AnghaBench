; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_encryption_change_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btu/extr_btu_hcif.c_btu_hcif_encryption_change_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @btu_hcif_encryption_change_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btu_hcif_encryption_change_evt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @STREAM_TO_UINT8(i32 %6, i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @STREAM_TO_UINT16(i32 %9, i32* %10)
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @STREAM_TO_UINT8(i32 %12, i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @btm_acl_encrypt_change(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @btm_sec_encrypt_change(i32 %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @btm_acl_encrypt_change(i32, i32, i32) #1

declare dso_local i32 @btm_sec_encrypt_change(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
