; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_cmd_get_jetsam_snapshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_cmd_get_jetsam_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MEMORYSTATUS_SNAPSHOT_ON_DEMAND = common dso_local global i32 0, align 4
@MEMORYSTATUS_SNAPSHOT_AT_BOOT = common dso_local global i32 0, align 4
@MEMORYSTATUS_SNAPSHOT_COPY = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_copy = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_size = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i8* null, align 8
@memorystatus_jetsam_snapshot_copy_count = common dso_local global i8* null, align 8
@memorystatus_jetsam_snapshot_last_timestamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*)* @memorystatus_cmd_get_jetsam_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_cmd_get_jetsam_snapshot(i32 %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @USER_ADDR_NULL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @TRUE, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* @FALSE, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @memorystatus_get_jetsam_snapshot(%struct.TYPE_8__** %15, i64* %8, i64 %33)
  store i32 %34, i32* %10, align 4
  br label %86

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_ON_DEMAND, align 4
  %38 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_AT_BOOT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_COPY, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %36, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %135

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %135

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_ON_DEMAND, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i64, i64* @TRUE, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @memorystatus_get_on_demand_snapshot(%struct.TYPE_8__** %15, i64* %8, i64 %62)
  store i32 %63, i32* %10, align 4
  br label %85

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_AT_BOOT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i64, i64* @TRUE, align 8
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @memorystatus_get_at_boot_snapshot(%struct.TYPE_8__** %15, i64* %8, i64 %71)
  store i32 %72, i32* %10, align 4
  br label %84

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MEMORYSTATUS_SNAPSHOT_COPY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @memorystatus_get_jetsam_snapshot_copy(%struct.TYPE_8__** %15, i64* %8, i64 %79)
  store i32 %80, i32* %10, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %5, align 4
  br label %135

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %69
  br label %85

85:                                               ; preds = %84, %60
  br label %86

86:                                               ; preds = %85, %31
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %133

90:                                               ; preds = %86
  %91 = load i64, i64* %11, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %125, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @copyout(%struct.TYPE_8__* %94, i32 %95, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = call i32 (...) @proc_list_lock()
  %104 = load i32, i32* @memorystatus_jetsam_snapshot_copy, align 4
  %105 = load i32, i32* @memorystatus_jetsam_snapshot, align 4
  %106 = load i32, i32* @memorystatus_jetsam_snapshot_size, align 4
  %107 = call i32 @memcpy(i32 %104, i32 %105, i32 %106)
  %108 = load i8*, i8** @memorystatus_jetsam_snapshot_count, align 8
  store i8* %108, i8** @memorystatus_jetsam_snapshot_copy_count, align 8
  store i8* null, i8** @memorystatus_jetsam_snapshot_count, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* null, i8** %110, align 8
  store i64 0, i64* @memorystatus_jetsam_snapshot_last_timestamp, align 8
  %111 = call i32 (...) @proc_list_unlock()
  br label %112

112:                                              ; preds = %102, %99
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i64, i64* %13, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %118 = icmp ne %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @kfree(%struct.TYPE_8__* %120, i64 %121)
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %113
  br label %125

125:                                              ; preds = %124, %90
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i64, i64* %8, align 8
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132, %89
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %133, %81, %53, %45
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @memorystatus_get_jetsam_snapshot(%struct.TYPE_8__**, i64*, i64) #1

declare dso_local i32 @memorystatus_get_on_demand_snapshot(%struct.TYPE_8__**, i64*, i64) #1

declare dso_local i32 @memorystatus_get_at_boot_snapshot(%struct.TYPE_8__**, i64*, i64) #1

declare dso_local i32 @memorystatus_get_jetsam_snapshot_copy(%struct.TYPE_8__**, i64*, i64) #1

declare dso_local i32 @copyout(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
