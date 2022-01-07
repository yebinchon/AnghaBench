; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_truncate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/src/extr_ff.c_f_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i32, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FA_MODIFIED = common dso_local global i32 0, align 4
@FA_DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_truncate(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  %9 = call i64 @validate(%struct.TYPE_12__* %8, %struct.TYPE_11__** %5)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @FR_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @FR_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @LEAVE_FF(%struct.TYPE_11__* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FA_WRITE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = load i64, i64* @FR_DENIED, align 8
  %33 = call i32 @LEAVE_FF(%struct.TYPE_11__* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %149

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @remove_chain(%struct.TYPE_12__* %50, i32 %54, i32 0)
  store i64 %55, i64* %4, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %95

59:                                               ; preds = %43
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @get_fat(%struct.TYPE_12__* %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* @FR_OK, align 8
  store i64 %66, i64* %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @FR_OK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @remove_chain(%struct.TYPE_12__* %88, i32 %89, i32 %92)
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %86, %80, %76
  br label %95

95:                                               ; preds = %94, %48
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i32, i32* @FA_MODIFIED, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load i64, i64* @FR_OK, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %95
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FA_DIRTY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @disk_write(i32 %120, i32 %123, i32 %126, i32 1)
  %128 = load i64, i64* @RES_OK, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %131, i64* %4, align 8
  br label %139

132:                                              ; preds = %117
  %133 = load i32, i32* @FA_DIRTY, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %130
  br label %140

140:                                              ; preds = %139, %110, %95
  %141 = load i64, i64* %4, align 8
  %142 = load i64, i64* @FR_OK, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = load i64, i64* %4, align 8
  %147 = call i32 @ABORT(%struct.TYPE_11__* %145, i64 %146)
  br label %148

148:                                              ; preds = %144, %140
  br label %149

149:                                              ; preds = %148, %34
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @LEAVE_FF(%struct.TYPE_11__* %150, i64 %151)
  %153 = load i64, i64* %2, align 8
  ret i64 %153
}

declare dso_local i64 @validate(%struct.TYPE_12__*, %struct.TYPE_11__**) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @remove_chain(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @disk_write(i32, i32, i32, i32) #1

declare dso_local i32 @ABORT(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
