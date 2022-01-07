; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mapping0.c_mapping0_pack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mapping0.c_mapping0_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*)* @mapping0_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapping0_pack(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @oggpack_write(i32* %16, i32 1, i32 1)
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @oggpack_write(i32* %18, i32 %22, i32 4)
  br label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @oggpack_write(i32* %25, i32 0, i32 1)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @oggpack_write(i32* %33, i32 1, i32 1)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @oggpack_write(i32* %35, i32 %39, i32 8)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %74, %32
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ilog(i32 %58)
  %60 = call i32 @oggpack_write(i32* %48, i32 %55, i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ilog(i32 %71)
  %73 = call i32 @oggpack_write(i32* %61, i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %47
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %41

77:                                               ; preds = %41
  br label %81

78:                                               ; preds = %27
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @oggpack_write(i32* %79, i32 0, i32 1)
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @oggpack_write(i32* %82, i32 0, i32 2)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @oggpack_write(i32* %96, i32 %103, i32 4)
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %89

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %81
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %137, %109
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %110
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @oggpack_write(i32* %117, i32 0, i32 8)
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @oggpack_write(i32* %119, i32 %126, i32 8)
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 6
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @oggpack_write(i32* %128, i32 %135, i32 8)
  br label %137

137:                                              ; preds = %116
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %110

140:                                              ; preds = %110
  ret void
}

declare dso_local i32 @oggpack_write(i32*, i32, i32) #1

declare dso_local i32 @ilog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
