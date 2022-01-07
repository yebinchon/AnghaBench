; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpackB_look.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpackB_look.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oggpackB_look(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 32, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i64 -1, i64* %3, align 8
  br label %144

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 4
  %29 = icmp sge i32 %24, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 7
  %39 = ashr i32 %38, 3
  %40 = sub nsw i32 %36, %39
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i64 -1, i64* %3, align 8
  br label %144

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i64 0, i64* %3, align 8
  br label %144

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %16
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 24, %57
  %59 = shl i32 %54, %58
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 8
  br i1 %62, label %63, label %132

63:                                               ; preds = %49
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 16, %71
  %73 = shl i32 %68, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 16
  br i1 %78, label %79, label %131

79:                                               ; preds = %63
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 8, %87
  %89 = shl i32 %84, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %6, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %6, align 8
  %93 = load i32, i32* %5, align 4
  %94 = icmp sgt i32 %93, 24
  br i1 %94, label %95, label %130

95:                                               ; preds = %79
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 %100, %103
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = or i64 %106, %105
  store i64 %107, i64* %6, align 8
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 32
  br i1 %109, label %110, label %129

110:                                              ; preds = %95
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 8, %123
  %125 = ashr i32 %120, %124
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %6, align 8
  %128 = or i64 %127, %126
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %115, %110, %95
  br label %130

130:                                              ; preds = %129, %79
  br label %131

131:                                              ; preds = %130, %63
  br label %132

132:                                              ; preds = %131, %49
  %133 = load i64, i64* %6, align 8
  %134 = and i64 %133, 4294967295
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 1
  %137 = zext i32 %136 to i64
  %138 = lshr i64 %134, %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  %141 = ashr i32 %140, 1
  %142 = zext i32 %141 to i64
  %143 = lshr i64 %138, %142
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %132, %46, %42, %15
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
