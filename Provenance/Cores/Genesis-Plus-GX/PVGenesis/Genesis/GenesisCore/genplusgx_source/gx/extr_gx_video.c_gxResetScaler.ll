; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxResetScaler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxResetScaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@rmode = common dso_local global %struct.TYPE_3__* null, align 8
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@square = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gxResetScaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxResetScaler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i32 @gxSetAspectRatio(i32* %3, i32* %4)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 640, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 4), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 3), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp sle i32 %17, 320
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = mul nsw i32 %24, 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %36

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %2, align 4
  %30 = icmp sle i32 %29, 640
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %36, %13, %1
  %38 = load i32, i32* %3, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %45, 360
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 360
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  store i32 %57, i32* %5, align 4
  store i32 360, i32* %3, align 4
  br label %58

58:                                               ; preds = %47, %44
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %59, 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %3, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sub nsw i32 720, %64
  %66 = sdiv i32 %65, 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %58
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 4), align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 3), align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 2
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %92

88:                                               ; preds = %78, %75
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %81
  br label %93

93:                                               ; preds = %92, %58
  br label %107

94:                                               ; preds = %37
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 720, %102
  %104 = sdiv i32 %103, 2
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %94, %93
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0), align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %112, %115
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 1), align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rmode, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %121, %124
  store i32 %125, i32* %7, align 4
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 2), align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %107
  %129 = load i32, i32* %4, align 4
  %130 = mul nsw i32 %129, 2
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %107
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32*, i32** @square, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** @square, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %3, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32*, i32** @square, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 9
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** @square, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32*, i32** @square, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** @square, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  store i32 %148, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %4, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32*, i32** @square, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 10
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** @square, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 7
  store i32 %155, i32* %159, align 4
  %160 = load i32*, i32** @square, align 8
  %161 = call i32 @DCFlushRange(i32* %160, i32 32)
  %162 = call i32 (...) @GX_InvVtxCache()
  ret void
}

declare dso_local i32 @gxSetAspectRatio(i32*, i32*) #1

declare dso_local i32 @DCFlushRange(i32*, i32) #1

declare dso_local i32 @GX_InvVtxCache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
