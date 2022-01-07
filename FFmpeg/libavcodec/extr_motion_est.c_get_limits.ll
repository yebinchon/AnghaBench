; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_get_limits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_get_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FLAG_QPEL = common dso_local global i32 0, align 4
@MAX_MV = common dso_local global i32 0, align 4
@FMT_H261 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @get_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_limits(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAG_QPEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 1, %25
  %27 = ashr i32 %16, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @MAX_MV, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FLAG_QPEL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = add nsw i32 1, %37
  %39 = ashr i32 %28, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 0, %45
  %47 = sub nsw i32 %46, 16
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 0, %50
  %52 = sub nsw i32 %51, 16
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %56, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 0, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  br label %142

71:                                               ; preds = %3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FMT_H261, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 15
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 -15, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 15
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 -15, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 16
  %95 = sub nsw i32 %94, 16
  %96 = icmp slt i32 %90, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 15, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 16
  %106 = sub nsw i32 %105, 16
  %107 = icmp slt i32 %101, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 15, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  br label %141

112:                                              ; preds = %71
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 0, %117
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 0, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %125, 16
  %127 = add nsw i32 %122, %126
  %128 = sub nsw i32 %127, 16
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 0, %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %135, 16
  %137 = add nsw i32 %132, %136
  %138 = sub nsw i32 %137, 16
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %112, %77
  br label %142

142:                                              ; preds = %141, %44
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %189

154:                                              ; preds = %151
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 0, %158
  %160 = call i8* @FFMAX(i32 %157, i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i8* @FFMIN(i32 %166, i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sub nsw i32 0, %175
  %177 = call i8* @FFMAX(i32 %174, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i8* @FFMIN(i32 %183, i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  store i32 %186, i32* %188, align 8
  br label %189

189:                                              ; preds = %154, %151
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

declare dso_local i8* @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
