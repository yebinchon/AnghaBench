; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPCalcBestMssForBulk.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RUDPCalcBestMssForBulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@MTU_FOR_PPPOE = common dso_local global i32 0, align 4
@RUDP_PROTOCOL_ICMP = common dso_local global i64 0, align 8
@SHA1_SIZE = common dso_local global i64 0, align 8
@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RUDPCalcBestMssForBulk(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp eq %struct.TYPE_5__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %9
  %14 = load i32, i32* @MTU_FOR_PPPOE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @IsIP6(i32* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 20
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 40
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RUDP_PROTOCOL_ICMP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 8
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* @SHA1_SIZE, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 8
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 42
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %39
  br label %51

51:                                               ; preds = %50, %31
  %52 = load i64, i64* @SHA1_SIZE, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* @SHA1_SIZE, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 31
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 14
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, 20
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 20
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 24
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %51, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @IsIP6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
