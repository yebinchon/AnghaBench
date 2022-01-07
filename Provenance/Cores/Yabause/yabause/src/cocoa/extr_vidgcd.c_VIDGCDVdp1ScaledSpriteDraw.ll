; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1ScaledSpriteDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_VIDGCDVdp1ScaledSpriteDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@cmd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@Vdp1Regs = common dso_local global %struct.TYPE_5__* null, align 8
@Vdp1Ram = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDGCDVdp1ScaledSpriteDraw(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @Vdp1Ram, align 4
  %25 = call i32 @Vdp1ReadCommand(%struct.TYPE_4__* @cmd, i32 %23, i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 1), align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 2), align 8
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 15
  switch i32 %38, label %40 [
    i32 0, label %39
    i32 5, label %59
    i32 6, label %66
    i32 7, label %79
    i32 9, label %91
    i32 10, label %104
    i32 11, label %121
    i32 13, label %137
    i32 14, label %149
    i32 15, label %165
  ]

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %3, %39
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 7), align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %17, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %19, align 4
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 6), align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %18, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Vdp1Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %20, align 4
  br label %180

59:                                               ; preds = %3
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %64 = trunc i64 %63 to i32
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %20, align 4
  br label %180

66:                                               ; preds = %3
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %19, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %19, align 4
  %73 = sdiv i32 %72, 2
  %74 = sub nsw i32 %71, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %19, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %20, align 4
  br label %180

79:                                               ; preds = %3
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %19, align 4
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %20, align 4
  br label %180

91:                                               ; preds = %3
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %20, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sdiv i32 %97, 2
  %99 = sub nsw i32 %96, %98
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %180

104:                                              ; preds = %3
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %19, align 4
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %19, align 4
  %111 = sdiv i32 %110, 2
  %112 = sub nsw i32 %109, %111
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %20, align 4
  %115 = sdiv i32 %114, 2
  %116 = sub nsw i32 %113, %115
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  br label %180

121:                                              ; preds = %3
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %19, align 4
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %19, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %20, align 4
  %131 = sdiv i32 %130, 2
  %132 = sub nsw i32 %129, %131
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %180

137:                                              ; preds = %3
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %19, align 4
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %20, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %20, align 4
  br label %180

149:                                              ; preds = %3
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %19, align 4
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %19, align 4
  %156 = sdiv i32 %155, 2
  %157 = sub nsw i32 %154, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %20, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  br label %180

165:                                              ; preds = %3
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 5), align 8
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %19, align 4
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 4), align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %20, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %19, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %20, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %20, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  br label %180

180:                                              ; preds = %165, %149, %137, %121, %104, %91, %79, %66, %59, %40
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 3), align 4
  %182 = ashr i32 %181, 8
  %183 = and i32 %182, 63
  %184 = mul nsw i32 %183, 8
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 3), align 4
  %186 = and i32 %185, 255
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %17, align 4
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %189, %190
  %192 = sub nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %20, align 4
  %199 = load i32, i32* %18, align 4
  %200 = add nsw i32 %198, %199
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %203, %204
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @drawQuad(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @drawQuad(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
