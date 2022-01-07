; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_zero_entry6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_zero_entry6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ip6_fw_chain* }
%struct.ip6_fw_chain = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.ip6_fw_chain* }
%struct.ip6_fw = type { i64 }

@ip6_fw_chain = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@fw6_verbose = common dso_local global i64 0, align 8
@LOG_AUTHPRIV = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ip6fw: Entry %d cleared.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ip6fw: Accounting cleared.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_fw*)* @zero_entry6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_entry6(%struct.ip6_fw* %0) #0 {
  %2 = alloca %struct.ip6_fw*, align 8
  %3 = alloca %struct.ip6_fw_chain*, align 8
  store %struct.ip6_fw* %0, %struct.ip6_fw** %2, align 8
  %4 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ip6_fw_chain, i32 0, i32 0), align 8
  store %struct.ip6_fw_chain* %4, %struct.ip6_fw_chain** %3, align 8
  br label %5

5:                                                ; preds = %40, %1
  %6 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %7 = icmp ne %struct.ip6_fw_chain* %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  %10 = icmp ne %struct.ip6_fw* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  %13 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  %18 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %21 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %16, %11, %8
  %27 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %28 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %32 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %36 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %26, %16
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %3, align 8
  %42 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %43, align 8
  store %struct.ip6_fw_chain* %44, %struct.ip6_fw_chain** %3, align 8
  br label %5

45:                                               ; preds = %5
  %46 = load i64, i64* @fw6_verbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  %50 = icmp ne %struct.ip6_fw* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* @LOG_AUTHPRIV, align 4
  %53 = load i32, i32* @LOG_NOTICE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.ip6_fw*, %struct.ip6_fw** %2, align 8
  %56 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @log(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %64

59:                                               ; preds = %48
  %60 = load i32, i32* @LOG_AUTHPRIV, align 4
  %61 = load i32, i32* @LOG_NOTICE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 (i32, i8*, ...) @log(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %51
  br label %65

65:                                               ; preds = %64, %45
  ret i32 0
}

declare dso_local i32 @log(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
