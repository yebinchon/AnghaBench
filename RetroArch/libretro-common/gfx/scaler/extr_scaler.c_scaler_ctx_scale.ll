; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i32, i64, i64, %struct.TYPE_4__, i32, i32, i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)*, i32, i32, i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)*, %struct.TYPE_3__, i32 (i8*, i8*, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i8*, i32 }

@SCALER_FMT_ARGB8888 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scaler_ctx_scale(%struct.scaler_ctx* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.scaler_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCALER_FMT_ARGB8888, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %3
  %25 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %25, i32 0, i32 14
  %27 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %39, i32 0, i32 13
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %27(i8* %31, i8* %32, i32 %35, i32 %38, i32 %42, i32 %45)
  %47 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %48 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %7, align 8
  %51 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %51, i32 0, i32 13
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %24, %3
  %56 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SCALER_FMT_ARGB8888, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %8, align 8
  %66 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %61, %55
  %71 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %71, i32 0, i32 12
  %73 = load i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %76, i32 0, i32 12
  %78 = load i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.scaler_ctx*, i8*, i8*, i32, i32, i32, i32, i32, i32)** %77, align 8
  %79 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 %78(%struct.scaler_ctx* %79, i8* %80, i8* %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %94, i32 %95)
  br label %124

97:                                               ; preds = %70
  %98 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %98, i32 0, i32 9
  %100 = load i32 (%struct.scaler_ctx*, i8*, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.scaler_ctx*, i8*, i32)* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %104 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %103, i32 0, i32 9
  %105 = load i32 (%struct.scaler_ctx*, i8*, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)** %104, align 8
  %106 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 %105(%struct.scaler_ctx* %106, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %112 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %111, i32 0, i32 8
  %113 = load i32 (%struct.scaler_ctx*, i8*, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)** %112, align 8
  %114 = icmp ne i32 (%struct.scaler_ctx*, i8*, i32)* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %116, i32 0, i32 8
  %118 = load i32 (%struct.scaler_ctx*, i8*, i32)*, i32 (%struct.scaler_ctx*, i8*, i32)** %117, align 8
  %119 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 %118(%struct.scaler_ctx* %119, i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %115, %110
  br label %124

124:                                              ; preds = %123, %75
  %125 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %126 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SCALER_FMT_ARGB8888, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %124
  %131 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %132 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %131, i32 0, i32 7
  %133 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %132, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %136 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %140 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %146 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.scaler_ctx*, %struct.scaler_ctx** %4, align 8
  %149 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %133(i8* %134, i8* %138, i32 %141, i32 %144, i32 %147, i32 %151)
  br label %153

153:                                              ; preds = %130, %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
