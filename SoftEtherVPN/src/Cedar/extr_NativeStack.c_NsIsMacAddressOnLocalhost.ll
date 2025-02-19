; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsIsMacAddressOnLocalhost.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_NativeStack.c_NsIsMacAddressOnLocalhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_MAC_ADDRESS_BYTE_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NsIsMacAddressOnLocalhost(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [2 x i64], align 16
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = icmp eq i64* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NS_MAC_ADDRESS_BYTE_1, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %17 = load i64*, i64** %3, align 8
  %18 = call i32 @NsGenMacAddressSignatureForMachine(i64* %16, i64* %17)
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 4
  %21 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %22 = call i64 @Cmp(i64* %20, i64* %21, i32 2)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %14, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @NsGenMacAddressSignatureForMachine(i64*, i64*) #1

declare dso_local i64 @Cmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
