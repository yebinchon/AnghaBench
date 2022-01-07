; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_mgmtDnode.spec.c_mgmtInitDnodes.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/lite/src/extr_mgmtDnode.spec.c_mgmtInitDnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i32, i32, i32, i64, i64, i32 }

@tsInternalIp = common dso_local global i32 0, align 4
@dnodeObj = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@tsRebootTime = common dso_local global i64 0, align 8
@tsNumOfCores = common dso_local global i64 0, align 8
@TSDB_STATUS_READY = common dso_local global i32 0, align 4
@TSDB_DNODE_ROLE_ANY = common dso_local global i32 0, align 4
@tsNumOfTotalVnodes = common dso_local global i32 0, align 4
@TSDB_INVALID_VNODE_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"first access, set total vnodes:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtInitDnodes() #0 {
  %1 = load i32, i32* @tsInternalIp, align 4
  %2 = call i32 @inet_addr(i32 %1)
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 8), align 8
  %3 = load i64, i64* @tsRebootTime, align 8
  %4 = trunc i64 %3 to i32
  %5 = mul nsw i32 %4, 1000
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 0), align 8
  %6 = load i64, i64* @tsRebootTime, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 7), align 8
  %7 = load i64, i64* @tsNumOfCores, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 6), align 8
  %8 = load i32, i32* @TSDB_STATUS_READY, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 5), align 8
  %9 = load i32, i32* @TSDB_DNODE_ROLE_ANY, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 4), align 4
  %10 = load i32, i32* @tsNumOfTotalVnodes, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 3), align 8
  store i8* inttoptr (i64 1 to i8*), i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 2), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 1), align 8
  %12 = load i64, i64* @TSDB_INVALID_VNODE_NUM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = call i32 @mgmtSetDnodeMaxVnodes(%struct.TYPE_3__* @dnodeObj)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @dnodeObj, i32 0, i32 1), align 8
  %17 = call i32 @mPrint(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %18

18:                                               ; preds = %14, %0
  ret i32 0
}

declare dso_local i32 @inet_addr(i32) #1

declare dso_local i32 @mgmtSetDnodeMaxVnodes(%struct.TYPE_3__*) #1

declare dso_local i32 @mPrint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
