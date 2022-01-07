; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___write_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 (i64, i64)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.card_bat = type { i64* }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_direntry = type { i32 }

@cardmap = common dso_local global %struct.TYPE_8__* null, align 8
@CARD_SYSAREA = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@__erase_callback = common dso_local global i32 0, align 4
@CARD_ERROR_CANCELED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.card_bat*, align 8
  %9 = alloca %struct.card_dat*, align 8
  %10 = alloca %struct.card_direntry*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.card_bat* null, %struct.card_bat** %8, align 8
  store %struct.card_dat* null, %struct.card_dat** %9, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cardmap, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 %13
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %11, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %122

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %119

26:                                               ; preds = %18
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %26
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__* %42)
  store %struct.card_dat* %43, %struct.card_dat** %9, align 8
  %44 = load %struct.card_dat*, %struct.card_dat** %9, align 8
  %45 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %44, i32 0, i32 0
  %46 = load %struct.card_direntry*, %struct.card_direntry** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %46, i64 %49
  store %struct.card_direntry* %50, %struct.card_direntry** %10, align 8
  %51 = call i32 @time(i32* null)
  %52 = load %struct.card_direntry*, %struct.card_direntry** %10, align 8
  %53 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32 (i64, i64)*, i32 (i64, i64)** %55, align 8
  store i32 (i64, i64)* %56, i32 (i64, i64)** %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %58, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %61 = call i64 @__card_updatedir(i64 %59, i32 (i64, i64)* %60)
  store i64 %61, i64* %5, align 8
  %62 = icmp uge i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %139

64:                                               ; preds = %41
  br label %118

65:                                               ; preds = %26
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_8__* %66)
  store %struct.card_bat* %67, %struct.card_bat** %8, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.card_bat*, %struct.card_bat** %8, align 8
  %76 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CARD_SYSAREA, align 8
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CARD_SYSAREA, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %65
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %92, %65
  %101 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %101, i64* %5, align 8
  br label %123

102:                                              ; preds = %92
  %103 = load i64, i64* %3, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 %106, %110
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* @__erase_callback, align 4
  %114 = call i64 @__card_sectorerase(i64 %103, i32 %112, i32 %113)
  store i64 %114, i64* %5, align 8
  %115 = icmp uge i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %139

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %64
  br label %121

119:                                              ; preds = %18
  %120 = load i64, i64* @CARD_ERROR_CANCELED, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %118
  br label %122

122:                                              ; preds = %121, %2
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32 (i64, i64)*, i32 (i64, i64)** %125, align 8
  store i32 (i64, i64)* %126, i32 (i64, i64)** %6, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %129, i64 %130)
  %132 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %133 = icmp ne i32 (i64, i64)* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %123
  %135 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i32 %135(i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %63, %116, %134, %123
  ret void
}

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_8__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @__card_updatedir(i64, i32 (i64, i64)*) #1

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_8__*) #1

declare dso_local i64 @__card_sectorerase(i64, i32, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
