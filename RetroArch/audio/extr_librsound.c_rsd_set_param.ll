; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_set_param.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_librsound.c_rsd_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i8*, i64, i32*, i32* }

@RSD_S16_LE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsd_set_param(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @retro_assert(i32 %10)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @retro_assert(i32 %14)
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %136 [
    i32 128, label %17
    i32 134, label %30
    i32 132, label %43
    i32 129, label %59
    i32 135, label %75
    i32 130, label %88
    i32 133, label %94
    i32 131, label %126
  ]

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %137

28:                                               ; preds = %17
  store i32 -1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28
  br label %137

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %137

41:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41
  br label %137

43:                                               ; preds = %3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @free(i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strdup(i8* %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 8
  store i32* %56, i32** %58, align 8
  br label %137

59:                                               ; preds = %3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @free(i32* %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i8*, i8** %6, align 8
  %71 = call i8* @strdup(i8* %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 7
  store i32* %72, i32** %74, align 8
  br label %137

75:                                               ; preds = %3
  %76 = load i8*, i8** %6, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %137

86:                                               ; preds = %75
  store i32 -1, i32* %7, align 4
  br label %87

87:                                               ; preds = %86
  br label %137

88:                                               ; preds = %3
  %89 = load i8*, i8** %6, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %137

94:                                               ; preds = %3
  %95 = load i8*, i8** %6, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @rsnd_format_to_samplesize(i64 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %125

112:                                              ; preds = %94
  %113 = load i64, i64* @RSD_S16_LE, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* @RSD_S16_LE, align 8
  %117 = call i8* @rsnd_format_to_samplesize(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load i64, i64* @RSD_S16_LE, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i8*, i8** %6, align 8
  %124 = bitcast i8* %123 to i32*
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %112, %94
  br label %137

126:                                              ; preds = %3
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strlcpy(i8* %129, i8* %130, i32 8)
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 5
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 7
  store i8 0, i8* %135, align 1
  br label %137

136:                                              ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %126, %125, %88, %87, %80, %69, %53, %42, %35, %29, %22
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @rsnd_format_to_samplesize(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
