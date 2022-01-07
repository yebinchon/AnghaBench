; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_allocblock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_allocblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.card_bat = type { i64, i64, i64* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_ERROR_INSSPACE = common dso_local global i64 0, align 8
@CARD_SYSAREA = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @__card_allocblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_allocblock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.card_bat*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  store %struct.card_bat* null, %struct.card_bat** %15, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EXI_CHANNEL_0, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @EXI_CHANNEL_2, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %3
  %24 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %24, i64* %4, align 8
  br label %133

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %14, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %34, i64* %4, align 8
  br label %133

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_4__* %36)
  store %struct.card_bat* %37, %struct.card_bat** %15, align 8
  %38 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %39 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* @CARD_ERROR_INSSPACE, align 8
  store i64 %44, i64* %4, align 8
  br label %133

45:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  store i64 65535, i64* %9, align 8
  %46 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %47 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %45, %130
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %56 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %61 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @__card_updatefat(i64 %65, %struct.card_bat* %66, i32 %67)
  store i64 %68, i64* %8, align 8
  br label %131

69:                                               ; preds = %50
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CARD_SYSAREA, align 8
  %77 = sub i64 %75, %76
  %78 = icmp uge i64 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %80, i64* %4, align 8
  br label %133

81:                                               ; preds = %69
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @CARD_SYSAREA, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp uge i64 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %81
  %94 = load i64, i64* @CARD_SYSAREA, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %87
  %96 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %97 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @CARD_SYSAREA, align 8
  %101 = sub i64 %99, %100
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %95
  %106 = load i64, i64* %9, align 8
  %107 = icmp ne i64 %106, 65535
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %111 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* @CARD_SYSAREA, align 8
  %115 = sub i64 %113, %114
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  store i64 %109, i64* %116, align 8
  br label %119

117:                                              ; preds = %105
  %118 = load i64, i64* %10, align 8
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %117, %108
  %120 = load %struct.card_bat*, %struct.card_bat** %15, align 8
  %121 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @CARD_SYSAREA, align 8
  %125 = sub i64 %123, %124
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 65535, i64* %126, align 8
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %119, %95
  br label %50

131:                                              ; preds = %53
  %132 = load i64, i64* %8, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %79, %43, %33, %23
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_4__*) #1

declare dso_local i64 @__card_updatefat(i64, %struct.card_bat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
