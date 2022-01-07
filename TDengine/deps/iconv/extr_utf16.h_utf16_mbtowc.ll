; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16.h_utf16_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16.h_utf16_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i32)* @utf16_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16_mbtowc(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %129, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %136

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 8
  %33 = add nsw i32 %27, %32
  br label %45

34:                                               ; preds = %20
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %39, %43
  br label %45

45:                                               ; preds = %34, %23
  %46 = phi i32 [ %33, %23 ], [ %44, %34 ]
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 65279
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %129

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 65534
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %128

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = icmp sge i32 %57, 55296
  br i1 %58, label %59, label %113

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 56320
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %112

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = add nsw i32 %72, %77
  br label %90

79:                                               ; preds = %65
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %84, %88
  br label %90

90:                                               ; preds = %79, %68
  %91 = phi i32 [ %78, %68 ], [ %89, %79 ]
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp sge i32 %92, 56320
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 57344
  br i1 %96, label %98, label %97

97:                                               ; preds = %94, %90
  br label %142

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 55296
  %101 = shl i32 %100, 10
  %102 = add nsw i32 65536, %101
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %103, 56320
  %105 = add nsw i32 %102, %104
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %5, align 4
  br label %148

112:                                              ; preds = %62
  br label %136

113:                                              ; preds = %59, %56
  %114 = load i32, i32* %12, align 4
  %115 = icmp sge i32 %114, 56320
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 57344
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %142

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %12, align 4
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %5, align 4
  br label %148

128:                                              ; preds = %53
  br label %129

129:                                              ; preds = %128, %49
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %132, 2
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 2
  store i32 %135, i32* %11, align 4
  br label %17

136:                                              ; preds = %112, %17
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @RET_TOOFEW(i32 %140)
  store i32 %141, i32* %5, align 4
  br label %148

142:                                              ; preds = %119, %97
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @RET_SHIFT_ILSEQ(i32 %146)
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %142, %136, %120, %98
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
