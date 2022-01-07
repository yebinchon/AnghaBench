; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_install_real_mode_bootstrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_acpi.c_install_real_mode_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@real_mode_bootstrap_base = common dso_local global i64 0, align 8
@REAL_MODE_BOOTSTRAP_OFFSET = common dso_local global i64 0, align 8
@real_mode_bootstrap_end = common dso_local global i64 0, align 8
@PROT_MODE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @install_real_mode_bootstrap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @real_mode_bootstrap_base, align 8
  %4 = trunc i64 %3 to i32
  %5 = call i64 @kvtophys(i32 %4)
  %6 = load i64, i64* @REAL_MODE_BOOTSTRAP_OFFSET, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* @real_mode_bootstrap_end, align 8
  %9 = load i64, i64* @real_mode_bootstrap_base, align 8
  %10 = sub nsw i64 %8, %9
  %11 = call i32 @bcopy_phys(i64 %5, i32 %7, i64 %10)
  %12 = load i64, i64* @PROT_MODE_START, align 8
  %13 = load i64, i64* @REAL_MODE_BOOTSTRAP_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i8*, i8** %2, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = call i64 @kvtophys(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 @ml_phys_write_word(i64 %14, i32 %18)
  call void asm sideeffect "wbinvd", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i32 @bcopy_phys(i64, i32, i64) #1

declare dso_local i64 @kvtophys(i32) #1

declare dso_local i32 @ml_phys_write_word(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 825}
