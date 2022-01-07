; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_config_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_conn.c_gap_config_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i8*, i32, i8*, i8* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@L2CAP_FCR_ERTM_MODE = common dso_local global i64 0, align 8
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@L2CAP_MTU_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@L2CAP_CFG_OK = common dso_local global i32 0, align 4
@GAP_CCB_FLAGS_HIS_CFG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_13__*)* @gap_config_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gap_config_ind(i64 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call %struct.TYPE_14__* @gap_find_ccb_by_cid(i64 %7)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %5, align 8
  %9 = icmp eq %struct.TYPE_14__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_FCR_ERTM_MODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %25, %27
  store i64 %28, i64* %6, align 8
  br label %31

29:                                               ; preds = %11
  %30 = load i64, i64* @L2CAP_MTU_SIZE, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %29, %19
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36, %31
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %52

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @L2CAP_CFG_OK, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @FALSE, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = call i32 @L2CA_CONFIG_RSP(i64 %65, %struct.TYPE_13__* %66)
  %68 = load i32, i32* @GAP_CCB_FLAGS_HIS_CFG_DONE, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = call i32 @gap_checks_con_flags(%struct.TYPE_14__* %73)
  br label %75

75:                                               ; preds = %52, %10
  ret void
}

declare dso_local %struct.TYPE_14__* @gap_find_ccb_by_cid(i64) #1

declare dso_local i32 @L2CA_CONFIG_RSP(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @gap_checks_con_flags(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
