; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_ssp_pm_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_ssp_pm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@ssp = common dso_local global %struct.TYPE_7__* null, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@rPMC = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@svp = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssp_pm_write(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SSP_PMC_SET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rPMC, i32 0, i32 0), align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load i32, i32* @SSP_PMC_SET, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %164

30:                                               ; preds = %2
  %31 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i16*
  store i16* %40, i16** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  store i32 %48, i32* %6, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 17407
  %59 = icmp eq i32 %58, 24
  br i1 %59, label %60, label %90

60:                                               ; preds = %30
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @get_inc(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1024
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i16*, i16** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %67, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = load i16, i16* %3, align 2
  %73 = call i32 @overwrite_write(i16 zeroext %71, i16 zeroext %72)
  br label %80

74:                                               ; preds = %60
  %75 = load i16, i16* %3, align 2
  %76 = load i16*, i16** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %76, i64 %78
  store i16 %75, i16* %79, align 2
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %81
  store i32 %89, i32* %87, align 4
  br label %156

90:                                               ; preds = %30
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 64511
  %93 = icmp eq i32 %92, 16408
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 1024
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i16*, i16** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %99, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = load i16, i16* %3, align 2
  %105 = call i32 @overwrite_write(i16 zeroext %103, i16 zeroext %104)
  br label %112

106:                                              ; preds = %94
  %107 = load i16, i16* %3, align 2
  %108 = load i16*, i16** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i16, i16* %108, i64 %110
  store i16 %107, i16* %111, align 2
  br label %112

112:                                              ; preds = %106, %98
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 31, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %117
  store i32 %125, i32* %123, align 4
  br label %155

126:                                              ; preds = %90
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 18431
  %129 = icmp eq i32 %128, 28
  br i1 %129, label %130, label %154

130:                                              ; preds = %126
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @get_inc(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i16, i16* %3, align 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @svp, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i16*
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, 1023
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i16, i16* %137, i64 %140
  store i16 %133, i16* %141, align 2
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %142
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %130, %126
  br label %155

155:                                              ; preds = %154, %112
  br label %156

156:                                              ; preds = %155, %80
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ssp, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rPMC, i32 0, i32 0), align 4
  br label %164

164:                                              ; preds = %156, %16
  ret void
}

declare dso_local i32 @get_inc(i32) #1

declare dso_local i32 @overwrite_write(i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
