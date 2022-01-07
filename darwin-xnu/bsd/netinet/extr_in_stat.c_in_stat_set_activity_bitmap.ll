; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_stat.c_in_stat_set_activity_bitmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_stat.c_in_stat_set_activity_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@IN_STAT_ACTIVITY_TIME_SEC_SHIFT = common dso_local global i32 0, align 4
@IN_STAT_ACTIVITY_BITMAP_TOTAL_SIZE = common dso_local global i32 0, align 4
@IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE = common dso_local global i32 0, align 4
@IN_STAT_ACTIVITY_TOTAL_TIME = common dso_local global i32 0, align 4
@IN_STAT_SET_MOST_SIGNIFICANT_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_stat_set_activity_bitmap(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IN_STAT_ACTIVITY_TIME_SEC_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_TOTAL_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32* %44, i32** %7, align 8
  br label %53

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %179

59:                                               ; preds = %22
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_TOTAL_SIZE, align 4
  %62 = mul nsw i32 %61, 2
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @IN_STAT_ACTIVITY_TOTAL_TIME, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 0, i32* %78, align 4
  br label %171

79:                                               ; preds = %59
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_TOTAL_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sub nsw i32 %80, %82
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @IN_STAT_ACTIVITY_TIME_SEC_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %79
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %95
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 0, i32* %119, align 4
  br label %128

120:                                              ; preds = %95
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, %121
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120, %115
  br label %170

129:                                              ; preds = %79
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %10, align 4
  %136 = xor i32 %134, %135
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, %137
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @IN_STAT_ACTIVITY_BITMAP_FIELD_SIZE, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %152, %153
  %155 = shl i32 %151, %154
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %156
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, %163
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %129, %128
  br label %171

171:                                              ; preds = %170, %64
  %172 = load i32, i32* @IN_STAT_SET_MOST_SIGNIFICANT_BIT, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %171, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
