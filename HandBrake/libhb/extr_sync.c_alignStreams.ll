; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_alignStreams.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_alignStreams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_16__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@SYNC_TYPE_AUDIO = common dso_local global i64 0, align 8
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i64)* @alignStreams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alignStreams(%struct.TYPE_23__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %144

16:                                               ; preds = %2
  %17 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %115, %16
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %118

24:                                               ; preds = %18
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i64 %29
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %9, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_24__* @hb_list_item(i32 %33, i32 0)
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %6, align 8
  br label %35

35:                                               ; preds = %47, %24
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %37 = icmp ne %struct.TYPE_24__* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp slt i64 %42, %43
  br label %45

45:                                               ; preds = %38, %35
  %46 = phi i1 [ false, %35 ], [ %44, %38 ]
  br i1 %46, label %47, label %58

47:                                               ; preds = %45
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = call i32 @hb_list_rem(i32 %50, %struct.TYPE_24__* %51)
  %53 = call i32 @hb_buffer_close(%struct.TYPE_24__** %6)
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_24__* @hb_list_item(i32 %56, i32 0)
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %6, align 8
  br label %35

58:                                               ; preds = %45
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = icmp eq %struct.TYPE_24__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %115

62:                                               ; preds = %58
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SYNC_TYPE_AUDIO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp slt i64 %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %87, %80
  br label %114

93:                                               ; preds = %68, %62
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %101, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100, %96
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %7, align 8
  br label %112

112:                                              ; preds = %107, %100
  br label %113

113:                                              ; preds = %112, %93
  br label %114

114:                                              ; preds = %113, %92
  br label %115

115:                                              ; preds = %114, %61
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %18

118:                                              ; preds = %18
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %139, %122
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i64 %135
  %137 = load i64, i64* %7, align 8
  %138 = call i32 @alignStream(%struct.TYPE_23__* %130, %struct.TYPE_22__* %136, i64 %137)
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %123

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143, %2
  ret void
}

declare dso_local %struct.TYPE_24__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_24__**) #1

declare dso_local i32 @alignStream(%struct.TYPE_23__*, %struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
