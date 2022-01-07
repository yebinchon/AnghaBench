; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IntToSubnetMask32.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_IntToSubnetMask32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IntToSubnetMask32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %38 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
    i32 7, label %12
    i32 8, label %13
    i32 9, label %14
    i32 10, label %15
    i32 11, label %16
    i32 12, label %17
    i32 13, label %18
    i32 14, label %19
    i32 15, label %20
    i32 16, label %21
    i32 17, label %22
    i32 18, label %23
    i32 19, label %24
    i32 20, label %25
    i32 21, label %26
    i32 22, label %27
    i32 23, label %28
    i32 24, label %29
    i32 25, label %30
    i32 26, label %31
    i32 27, label %32
    i32 28, label %33
    i32 29, label %34
    i32 30, label %35
    i32 31, label %36
    i32 32, label %37
  ]

5:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %38

6:                                                ; preds = %1
  store i32 -2147483648, i32* %3, align 4
  br label %38

7:                                                ; preds = %1
  store i32 -1073741824, i32* %3, align 4
  br label %38

8:                                                ; preds = %1
  store i32 -536870912, i32* %3, align 4
  br label %38

9:                                                ; preds = %1
  store i32 -268435456, i32* %3, align 4
  br label %38

10:                                               ; preds = %1
  store i32 -134217728, i32* %3, align 4
  br label %38

11:                                               ; preds = %1
  store i32 -67108864, i32* %3, align 4
  br label %38

12:                                               ; preds = %1
  store i32 -33554432, i32* %3, align 4
  br label %38

13:                                               ; preds = %1
  store i32 -16777216, i32* %3, align 4
  br label %38

14:                                               ; preds = %1
  store i32 -8388608, i32* %3, align 4
  br label %38

15:                                               ; preds = %1
  store i32 -4194304, i32* %3, align 4
  br label %38

16:                                               ; preds = %1
  store i32 -2097152, i32* %3, align 4
  br label %38

17:                                               ; preds = %1
  store i32 -1048576, i32* %3, align 4
  br label %38

18:                                               ; preds = %1
  store i32 -524288, i32* %3, align 4
  br label %38

19:                                               ; preds = %1
  store i32 -262144, i32* %3, align 4
  br label %38

20:                                               ; preds = %1
  store i32 -131072, i32* %3, align 4
  br label %38

21:                                               ; preds = %1
  store i32 -65536, i32* %3, align 4
  br label %38

22:                                               ; preds = %1
  store i32 -32768, i32* %3, align 4
  br label %38

23:                                               ; preds = %1
  store i32 -16384, i32* %3, align 4
  br label %38

24:                                               ; preds = %1
  store i32 -8192, i32* %3, align 4
  br label %38

25:                                               ; preds = %1
  store i32 -4096, i32* %3, align 4
  br label %38

26:                                               ; preds = %1
  store i32 -2048, i32* %3, align 4
  br label %38

27:                                               ; preds = %1
  store i32 -1024, i32* %3, align 4
  br label %38

28:                                               ; preds = %1
  store i32 -512, i32* %3, align 4
  br label %38

29:                                               ; preds = %1
  store i32 -256, i32* %3, align 4
  br label %38

30:                                               ; preds = %1
  store i32 -128, i32* %3, align 4
  br label %38

31:                                               ; preds = %1
  store i32 -64, i32* %3, align 4
  br label %38

32:                                               ; preds = %1
  store i32 -32, i32* %3, align 4
  br label %38

33:                                               ; preds = %1
  store i32 -16, i32* %3, align 4
  br label %38

34:                                               ; preds = %1
  store i32 -8, i32* %3, align 4
  br label %38

35:                                               ; preds = %1
  store i32 -4, i32* %3, align 4
  br label %38

36:                                               ; preds = %1
  store i32 -2, i32* %3, align 4
  br label %38

37:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %1, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %39 = call i64 (...) @IsLittleEndian()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @Swap32(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @IsLittleEndian(...) #1

declare dso_local i32 @Swap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
