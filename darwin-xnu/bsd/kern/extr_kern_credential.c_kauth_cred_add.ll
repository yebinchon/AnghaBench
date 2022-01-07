; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KAUTH_CRED_TABLE_SIZE = common dso_local global i64 0, align 8
@kauth_cred_table_anchor = common dso_local global i32* null, align 8
@cr_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kauth_cred_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kauth_cred_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @KAUTH_CRED_HASH_LOCK_ASSERT()
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @kauth_cred_get_hashkey(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @KAUTH_CRED_TABLE_SIZE, align 8
  %9 = load i64, i64* %4, align 8
  %10 = urem i64 %9, %8
  store i64 %10, i64* %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @kauth_cred_find(i32 %11)
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @kauth_cred_ref(i32 %16)
  %18 = load i32*, i32** @kauth_cred_table_anchor, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @cr_link, align 4
  %23 = call i32 @TAILQ_INSERT_HEAD(i32* %20, i32 %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @KAUTH_CRED_HASH_LOCK_ASSERT(...) #1

declare dso_local i64 @kauth_cred_get_hashkey(i32) #1

declare dso_local i32* @kauth_cred_find(i32) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
