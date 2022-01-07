; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDP4ForSpecificIp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_NewUDP4ForSpecificIp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewUDP4ForSpecificIp(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @IsZeroIP(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @IsIP4(i32* %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9, %2
  store i32* null, i32** %3, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = call i32 @Zero(i32* %6, i32 4)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @GetBestLocalIpForTarget(i32* %6, i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32* @NewUDP4(i32 %22, i32* %6)
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = call i32* @NewUDP4(i32 %27, i32* null)
  store i32* %28, i32** %5, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32*, i32** %5, align 8
  ret i32* %30
}

declare dso_local i64 @IsZeroIP(i32*) #1

declare dso_local i32 @IsIP4(i32*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local i32 @GetBestLocalIpForTarget(i32*, i32*) #1

declare dso_local i32* @NewUDP4(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
