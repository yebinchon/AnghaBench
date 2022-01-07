; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___read_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 (i64, i64)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.card_bat = type { i64* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_7__* null, align 8
@CARD_SYSAREA = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_CANCELED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__read_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i64, i64)*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.card_bat*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.card_bat* null, %struct.card_bat** %10, align 8
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @EXI_CHANNEL_0, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @EXI_CHANNEL_2, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  br label %171

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cardmap, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %21
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp uge i64 %27, 0
  br i1 %28, label %29, label %154

29:                                               ; preds = %19
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %151

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %40, %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = and i32 %44, %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = sub nsw i32 %37, %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %150

62:                                               ; preds = %34
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_7__* %63)
  store %struct.card_bat* %64, %struct.card_bat** %10, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = xor i32 %75, -1
  %77 = and i32 %71, %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.card_bat*, %struct.card_bat** %10, align 8
  %87 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CARD_SYSAREA, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds i64, i64* %88, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CARD_SYSAREA, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %62
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp uge i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103, %62
  %112 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %112, i64* %5, align 8
  br label %155

113:                                              ; preds = %103
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  br label %129

125:                                              ; preds = %113
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %3, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 %135, %139
  %141 = trunc i64 %140 to i32
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @__card_read(i64 %132, i32 %141, i64 %142, i32 %145, void (i64, i64)* @__read_callback)
  %147 = icmp sge i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %171

149:                                              ; preds = %129
  br label %150

150:                                              ; preds = %149, %34
  br label %153

151:                                              ; preds = %29
  %152 = load i64, i64* @CARD_ERROR_CANCELED, align 8
  store i64 %152, i64* %5, align 8
  br label %153

153:                                              ; preds = %151, %150
  br label %154

154:                                              ; preds = %153, %19
  br label %155

155:                                              ; preds = %154, %111
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32 (i64, i64)*, i32 (i64, i64)** %157, align 8
  store i32 (i64, i64)* %158, i32 (i64, i64)** %7, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @__card_putcntrlblock(%struct.TYPE_7__* %161, i64 %162)
  %164 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %165 = icmp ne i32 (i64, i64)* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %168 = load i64, i64* %3, align 8
  %169 = load i64, i64* %5, align 8
  %170 = call i32 %167(i64 %168, i64 %169)
  br label %171

171:                                              ; preds = %18, %148, %166, %155
  ret void
}

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_7__*) #1

declare dso_local i64 @__card_read(i64, i32, i64, i32, void (i64, i64)*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
