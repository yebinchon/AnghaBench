; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ah_core.c_ah_hmac_md5_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ah_algorithm = type { i64, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ah_hmac_md5_mature: no key is given.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"ah_hmac_md5_mature: unsupported algorithm.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ah_hmac_md5_mature: invalid key length %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @ah_hmac_md5_mature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ah_hmac_md5_mature(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.ah_algorithm*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = call i32 @ipseclog(i32 ptrtoint ([38 x i8]* @.str to i32))
  store i32 1, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ah_algorithm* @ah_algorithm_lookup(i32 %15)
  store %struct.ah_algorithm* %16, %struct.ah_algorithm** %4, align 8
  %17 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %18 = icmp ne %struct.ah_algorithm* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = call i32 @ipseclog(i32 ptrtoint ([44 x i8]* @.str.1 to i32))
  store i32 1, i32* %2, align 4
  br label %52

22:                                               ; preds = %12
  %23 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %24 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %29 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = load %struct.ah_algorithm*, %struct.ah_algorithm** %4, align 8
  %34 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %37 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %35, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32, %22
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ipseclog(i32 %49)
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %42, %19, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ipseclog(i32) #1

declare dso_local %struct.ah_algorithm* @ah_algorithm_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
