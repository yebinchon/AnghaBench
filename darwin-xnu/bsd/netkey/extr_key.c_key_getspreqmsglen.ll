; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getspreqmsglen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getspreqmsglen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i64, %struct.ipsecrequest* }
%struct.ipsecrequest = type { %struct.TYPE_6__, %struct.ipsecrequest* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPSEC_POLICY_IPSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secpolicy*)* @key_getspreqmsglen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_getspreqmsglen(%struct.secpolicy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secpolicy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipsecrequest*, align 8
  %6 = alloca i32, align 4
  store %struct.secpolicy* %0, %struct.secpolicy** %3, align 8
  store i32 4, i32* %4, align 4
  %7 = load %struct.secpolicy*, %struct.secpolicy** %3, align 8
  %8 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.secpolicy*, %struct.secpolicy** %3, align 8
  %16 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %15, i32 0, i32 1
  %17 = load %struct.ipsecrequest*, %struct.ipsecrequest** %16, align 8
  store %struct.ipsecrequest* %17, %struct.ipsecrequest** %5, align 8
  br label %18

18:                                               ; preds = %43, %14
  %19 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %20 = icmp ne %struct.ipsecrequest* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %23 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 4, %27
  %29 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %30 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = add i64 %28, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @PFKEY_ALIGN8(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %21
  %44 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %45 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %44, i32 0, i32 1
  %46 = load %struct.ipsecrequest*, %struct.ipsecrequest** %45, align 8
  store %struct.ipsecrequest* %46, %struct.ipsecrequest** %5, align 8
  br label %18

47:                                               ; preds = %18
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @PFKEY_ALIGN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
