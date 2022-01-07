; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32.h_utf32_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf32.h_utf32_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i32)* @utf32_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf32_mbtowc(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %104, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 4
  br i1 %18, label %19, label %109

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = add nsw i32 %26, %31
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 16
  %38 = add nsw i32 %32, %37
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 24
  %44 = add nsw i32 %38, %43
  br label %68

45:                                               ; preds = %19
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %49, 24
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 16
  %56 = add nsw i32 %50, %55
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = add nsw i32 %56, %61
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %62, %66
  br label %68

68:                                               ; preds = %45, %22
  %69 = phi i32 [ %44, %22 ], [ %67, %45 ]
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 4
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 65279
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %104

75:                                               ; preds = %68
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, -131072
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = xor i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %103

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 1114112
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp sge i32 %85, 55296
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 57344
  br i1 %89, label %97, label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %7, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %115

97:                                               ; preds = %87, %81
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @RET_SHIFT_ILSEQ(i32 %101)
  store i32 %102, i32* %5, align 4
  br label %115

103:                                              ; preds = %78
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  store i8* %106, i8** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, 4
  store i32 %108, i32* %9, align 4
  br label %16

109:                                              ; preds = %16
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @RET_TOOFEW(i32 %113)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %109, %97, %90
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
