; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeDnsCache.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_FreeDnsCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@DnsCache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeDnsCache() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @LockDnsCache()
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i32*, i32** @DnsCache, align 8
  %7 = call i64 @LIST_NUM(i32* %6)
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load i32*, i32** @DnsCache, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call %struct.TYPE_4__* @LIST_DATA(i32* %10, i64 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %1, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @Free(%struct.TYPE_4__* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = call i32 @Free(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %9
  %20 = load i64, i64* %2, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %2, align 8
  br label %4

22:                                               ; preds = %4
  %23 = call i32 (...) @UnlockDnsCache()
  %24 = load i32*, i32** @DnsCache, align 8
  %25 = call i32 @ReleaseList(i32* %24)
  store i32* null, i32** @DnsCache, align 8
  ret void
}

declare dso_local i32 @LockDnsCache(...) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_4__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_4__*) #1

declare dso_local i32 @UnlockDnsCache(...) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
