; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_do_memchunkhax1.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_do_memchunkhax1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREAD_PAGE_ACL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_memchunkhax1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_memchunkhax1() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* inttoptr (i64 520093704 to i32*), align 4
  store i32 %2, i32* %1, align 4
  %3 = call i64 (...) @get_thread_page()
  %4 = load i64, i64* @THREAD_PAGE_ACL_OFFSET, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i64 @SVC_ACL_OFFSET(i32 123)
  %7 = add nsw i64 %5, %6
  %8 = call i32 @memchunkhax1_write_pair(i64 %7, i32 520093696)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @write_kaddr(i32 520093704, i32 %9)
  ret void
}

declare dso_local i32 @memchunkhax1_write_pair(i64, i32) #1

declare dso_local i64 @get_thread_page(...) #1

declare dso_local i64 @SVC_ACL_OFFSET(i32) #1

declare dso_local i32 @write_kaddr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
