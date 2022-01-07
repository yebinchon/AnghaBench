; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_computeInitialTS.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_computeInitialTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { double, double, double }

@SYNC_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*)* @computeInitialTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computeInitialTS(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %73, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hb_list_count(i32 %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %12
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_15__* @hb_list_item(i32 %22, i32 %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = call i32 @UpdateSCR(%struct.TYPE_13__* %25, %struct.TYPE_15__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = call i32 @hb_list_rem(i32 %32, %struct.TYPE_15__* %33)
  br label %73

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %35
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = fsub double %50, %54
  store double %55, double* %8, align 8
  %56 = load double, double* %8, align 8
  %57 = fcmp ogt double %56, 0.000000e+00
  br i1 %57, label %58, label %70

58:                                               ; preds = %46
  %59 = load double, double* %8, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store double %59, double* %62, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store double %66, double* %69, align 8
  br label %70

70:                                               ; preds = %58, %46
  br label %71

71:                                               ; preds = %70, %43, %35
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %6, align 8
  br label %73

73:                                               ; preds = %71, %29
  br label %12

74:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %156, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %159

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %86
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %9, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = icmp eq %struct.TYPE_13__* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %156

92:                                               ; preds = %81
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %154, %92
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @hb_list_count(i32 %97)
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %155

100:                                              ; preds = %93
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call %struct.TYPE_15__* @hb_list_item(i32 %103, i32 %104)
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %7, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %108 = call i32 @UpdateSCR(%struct.TYPE_13__* %106, %struct.TYPE_15__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = call i32 @hb_list_rem(i32 %113, %struct.TYPE_15__* %114)
  br label %154

116:                                              ; preds = %100
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %152

124:                                              ; preds = %116
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = icmp ne %struct.TYPE_15__* %125, null
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load double, double* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = fsub double %131, %135
  store double %136, double* %11, align 8
  %137 = load double, double* %11, align 8
  %138 = fcmp ogt double %137, 0.000000e+00
  br i1 %138, label %139, label %151

139:                                              ; preds = %127
  %140 = load double, double* %11, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  store double %140, double* %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load double, double* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  store double %147, double* %150, align 8
  br label %151

151:                                              ; preds = %139, %127
  br label %152

152:                                              ; preds = %151, %124, %116
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %6, align 8
  br label %154

154:                                              ; preds = %152, %110
  br label %93

155:                                              ; preds = %93
  br label %156

156:                                              ; preds = %155, %91
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %75

159:                                              ; preds = %75
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %161 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %162 = call i32 @alignStreams(%struct.TYPE_14__* %160, i32 %161)
  ret void
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_15__* @hb_list_item(i32, i32) #1

declare dso_local i32 @UpdateSCR(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @alignStreams(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
