; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ApplyPGSSubs.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ApplyPGSSubs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ApplyPGSSubs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ApplyPGSSubs(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hb_list_count(i32 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_20__* @hb_list_item(i32 %20, i32 %21)
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %7, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %26, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %36, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call %struct.TYPE_20__* @hb_list_item(i32 %39, i32 %41)
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %6, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = call i32 @hb_list_rem(i32 %45, %struct.TYPE_20__* %46)
  %48 = call i32 @hb_buffer_close(%struct.TYPE_20__** %6)
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %5, align 4
  br label %14

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %80, %56
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hb_list_count(i32 %60)
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_20__* @hb_list_item(i32 %66, i32 0)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %7, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %87

80:                                               ; preds = %73, %63
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = call i32 @hb_list_rem(i32 %83, %struct.TYPE_20__* %84)
  %86 = call i32 @hb_buffer_close(%struct.TYPE_20__** %7)
  br label %57

87:                                               ; preds = %79, %57
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @hb_list_count(i32 %90)
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_20__* @hb_list_item(i32 %96, i32 0)
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %7, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sle i64 %101, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %93
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = call %struct.TYPE_20__* @ScaleSubtitle(%struct.TYPE_19__* %108, %struct.TYPE_20__* %109, %struct.TYPE_20__* %110)
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %8, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = call i32 @ApplySub(%struct.TYPE_19__* %112, %struct.TYPE_20__* %113, %struct.TYPE_20__* %114)
  %116 = call i32 @hb_buffer_close(%struct.TYPE_20__** %8)
  br label %117

117:                                              ; preds = %107, %93
  br label %118

118:                                              ; preds = %117, %87
  ret void
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_20__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_20__**) #1

declare dso_local %struct.TYPE_20__* @ScaleSubtitle(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ApplySub(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
