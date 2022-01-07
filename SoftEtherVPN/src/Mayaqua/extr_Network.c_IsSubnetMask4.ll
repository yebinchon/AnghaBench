; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsSubnetMask4.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IsSubnetMask4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsSubnetMask4(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @IsIP6(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %25

13:                                               ; preds = %8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @IPToUINT(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = call i64 (...) @IsLittleEndian()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @Swap32(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %24 [
    i32 0, label %23
    i32 -2147483648, label %23
    i32 -1073741824, label %23
    i32 -536870912, label %23
    i32 -268435456, label %23
    i32 -134217728, label %23
    i32 -67108864, label %23
    i32 -33554432, label %23
    i32 -16777216, label %23
    i32 -8388608, label %23
    i32 -4194304, label %23
    i32 -2097152, label %23
    i32 -1048576, label %23
    i32 -524288, label %23
    i32 -262144, label %23
    i32 -131072, label %23
    i32 -65536, label %23
    i32 -32768, label %23
    i32 -16384, label %23
    i32 -8192, label %23
    i32 -4096, label %23
    i32 -2048, label %23
    i32 -1024, label %23
    i32 -512, label %23
    i32 -256, label %23
    i32 -128, label %23
    i32 -64, label %23
    i32 -32, label %23
    i32 -16, label %23
    i32 -8, label %23
    i32 -4, label %23
    i32 -2, label %23
    i32 -1, label %23
  ]

23:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21, %21
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %12, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i32 @IPToUINT(i32*) #1

declare dso_local i64 @IsLittleEndian(...) #1

declare dso_local i32 @Swap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
