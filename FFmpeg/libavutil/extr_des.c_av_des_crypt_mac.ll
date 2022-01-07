; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_des.c_av_des_crypt_mac.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_des.c_av_des_crypt_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32*, i32, i32)* @av_des_crypt_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_des_crypt_mac(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @AV_RB64(i32* %22)
  br label %25

24:                                               ; preds = %7
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %128, %25
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %129

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @AV_RB64(i32* %35)
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @des_encdec(i32 %49, i32 %54, i32 1)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @des_encdec(i32 %56, i32 %61, i32 0)
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %48, %42
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @des_encdec(i32 %64, i32 %69, i32 1)
  %71 = load i32, i32* %15, align 4
  %72 = xor i32 %70, %71
  store i32 %72, i32* %16, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %18, align 4
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  store i32 %79, i32* %15, align 4
  br label %117

80:                                               ; preds = %38
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %15, align 4
  %83 = xor i32 %81, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @des_encdec(i32 %83, i32 %88, i32 0)
  store i32 %89, i32* %16, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %80
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @des_encdec(i32 %95, i32 %100, i32 1)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @des_encdec(i32 %102, i32 %107, i32 0)
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %94, %80
  %110 = load i32*, i32** %12, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  br label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %115, %78
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @AV_WB64(i32* %118, i32 %119)
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 8
  store i32* %122, i32** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  store i32* %127, i32** %9, align 8
  br label %128

128:                                              ; preds = %125, %117
  br label %27

129:                                              ; preds = %27
  %130 = load i32*, i32** %12, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @AV_WB64(i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @AV_RB64(i32*) #1

declare dso_local i32 @des_encdec(i32, i32, i32) #1

declare dso_local i32 @AV_WB64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
