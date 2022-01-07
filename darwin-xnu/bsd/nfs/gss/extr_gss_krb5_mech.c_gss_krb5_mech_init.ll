; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_mech_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_gss_krb5_mech_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gss_krb5_mech_initted = common dso_local global i64 0, align 8
@GSS_KRB5_INITIALIZED = common dso_local global i64 0, align 8
@GSS_KRB5_NOT_INITIALIZED = common dso_local global i32 0, align 4
@GSS_KRB5_INITIALIZING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"gss_krb5_mech\00", align 1
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@gss_krb5_mech_grp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gss_krb5_mech_init() #0 {
  %1 = load i64, i64* @gss_krb5_mech_initted, align 8
  %2 = load i64, i64* @GSS_KRB5_INITIALIZED, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @GSS_KRB5_NOT_INITIALIZED, align 4
  %7 = load i32, i32* @GSS_KRB5_INITIALIZING, align 4
  %8 = call i32 @OSCompareAndSwap(i32 %6, i32 %7, i64* @gss_krb5_mech_initted)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %15, %10
  %12 = call i32 (...) @gss_krb5_mech_is_initialized()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @IOSleep(i32 10)
  br label %11

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %19 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* @gss_krb5_mech_grp, align 4
  %20 = load i64, i64* @GSS_KRB5_INITIALIZED, align 8
  store i64 %20, i64* @gss_krb5_mech_initted, align 8
  br label %21

21:                                               ; preds = %17, %16, %4
  ret void
}

declare dso_local i32 @OSCompareAndSwap(i32, i32, i64*) #1

declare dso_local i32 @gss_krb5_mech_is_initialized(...) #1

declare dso_local void @IOSleep(i32) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
