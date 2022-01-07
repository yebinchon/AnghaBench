; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_hash_rule_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_hash_rule_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.pf_rule_addr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@addr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@xport = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@neg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pf_rule_addr*, i32)* @pf_hash_rule_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_hash_rule_addr(i32* %0, %struct.pf_rule_addr* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pf_rule_addr*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.pf_rule_addr* %1, %struct.pf_rule_addr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 2), align 4
  %9 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %7, i32 %8)
  %10 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %11 = getelementptr inbounds %struct.pf_rule_addr, %struct.pf_rule_addr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %36 [
    i32 130, label %14
    i32 128, label %21
    i32 131, label %25
    i32 129, label %32
  ]

14:                                               ; preds = %3
  %15 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 0, i32 3), align 4
  %17 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %15, i32 %16)
  %18 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 1), align 4
  %20 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %18, i32 %19)
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 0, i32 2), align 4
  %24 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %22, i32 %23)
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 0, i32 1, i32 1, i32 0), align 4
  %28 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %26, i32 %27)
  %29 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 0, i32 1, i32 0, i32 0), align 4
  %31 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %29, i32 %30)
  br label %36

32:                                               ; preds = %3
  %33 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @addr, i32 0, i32 0, i32 0), align 4
  %35 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %33, i32 %34)
  br label %36

36:                                               ; preds = %3, %32, %25, %21, %14
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %52 [
    i32 133, label %38
    i32 132, label %38
  ]

38:                                               ; preds = %36, %36
  %39 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xport, i32 0, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %39, i32 %42)
  %44 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xport, i32 0, i32 0, i32 1), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %44, i32 %47)
  %49 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @xport, i32 0, i32 0, i32 0), align 8
  %51 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %49, i32 %50)
  br label %53

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.pf_rule_addr*, %struct.pf_rule_addr** %5, align 8
  %55 = load i32, i32* @neg, align 4
  %56 = call i32 @PF_MD5_UPD(%struct.pf_rule_addr* %54, i32 %55)
  ret void
}

declare dso_local i32 @PF_MD5_UPD(%struct.pf_rule_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
