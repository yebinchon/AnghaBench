; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_grow_table.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivac_grow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@IVAC_ENTRIES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Cannot grow ipc space beyond IVAC_ENTRIES_MAX. Some process is leaking vouchers\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to grow ivac table to size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @ivac_grow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivac_grow_table(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = call i32 @ivac_sleep(%struct.TYPE_14__* %13)
  br label %135

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IVAC_ENTRIES_MAX, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %135

25:                                               ; preds = %15
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = call i32 @ivac_unlock(%struct.TYPE_14__* %29)
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @IVAC_ENTRIES_MAX, align 4
  %40 = icmp slt i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.TYPE_13__* @kalloc(i32 %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %4, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = icmp ne %struct.TYPE_13__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %135

53:                                               ; preds = %25
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %67, %53
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @ivace_reset_data(%struct.TYPE_13__* %63, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = call i32 @ivac_lock(%struct.TYPE_14__* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %91, %70
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %88
  %90 = call i32 @ivace_copy_data(%struct.TYPE_13__* %85, %struct.TYPE_13__* %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %73

94:                                               ; preds = %73
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %5, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %100, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 %106, i32* %114, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = call i32 @ivac_wakeup(%struct.TYPE_14__* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %94
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = call i32 @ivac_unlock(%struct.TYPE_14__* %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @kfree(%struct.TYPE_13__* %127, i32 %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = call i32 @ivac_lock(%struct.TYPE_14__* %133)
  br label %135

135:                                              ; preds = %12, %23, %50, %124, %94
  ret void
}

declare dso_local i32 @ivac_sleep(%struct.TYPE_14__*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ivac_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @kalloc(i32) #1

declare dso_local i32 @ivace_reset_data(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ivac_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @ivace_copy_data(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ivac_wakeup(%struct.TYPE_14__*) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
