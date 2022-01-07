; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_remove_chain.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_remove_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FF_FS_EXFAT = common dso_local global i32 0, align 4
@FS_EXFAT = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@CTRL_TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32, i32)* @remove_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @remove_chain(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @FR_OK, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %3
  %24 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %24, i64* %4, align 8
  br label %117

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load i32, i32* @FF_FS_EXFAT, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FS_EXFAT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %52

42:                                               ; preds = %37, %31, %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @put_fat(%struct.TYPE_9__* %43, i32 %44, i32 -1)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @FR_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %117

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37, %25
  br label %53

53:                                               ; preds = %109, %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @get_fat(%struct.TYPE_8__* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %115

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %64, i64* %4, align 8
  br label %117

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %69, i64* %4, align 8
  br label %117

70:                                               ; preds = %65
  %71 = load i32, i32* @FF_FS_EXFAT, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FS_EXFAT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %70
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @put_fat(%struct.TYPE_9__* %80, i32 %81, i32 0)
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* @FR_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* %8, align 8
  store i64 %87, i64* %4, align 8
  br label %117

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %73
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 2
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %98, %89
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %53, label %115

115:                                              ; preds = %109, %59
  %116 = load i64, i64* @FR_OK, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %115, %86, %68, %63, %49, %23
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i64 @put_fat(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
