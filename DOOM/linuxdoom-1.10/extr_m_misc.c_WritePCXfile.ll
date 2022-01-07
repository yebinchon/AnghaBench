; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_WritePCXfile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_misc.c_WritePCXfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i64, i64 }

@PU_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WritePCXfile(i8* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %15, %16
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 %18, 1000
  %20 = load i32, i32* @PU_STATIC, align 4
  %21 = call %struct.TYPE_5__* @Z_Malloc(i32 %19, i32 %20, i32* null)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 10, i32* %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 5, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32 8, i32* %29, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 15
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 14
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i8* @SHORT(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 13
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i8* @SHORT(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 12
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @SHORT(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @SHORT(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 10
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memset(i32 %54, i32 0, i32 4)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @SHORT(i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 8
  store i8* %59, i8** %61, align 8
  %62 = call i8* @SHORT(i32 2)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @memset(i32 %67, i32 0, i32 4)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  store i32* %70, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %97, %5
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 192
  %81 = icmp ne i32 %80, 192
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  br label %96

88:                                               ; preds = %77
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %14, align 8
  store i32 193, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %7, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %14, align 8
  store i32 %93, i32* %94, align 4
  br label %96

96:                                               ; preds = %88, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %14, align 8
  store i32 12, i32* %101, align 4
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %112, %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 768
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %10, align 8
  %109 = load i32, i32* %107, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %14, align 8
  store i32 %109, i32* %110, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %103

115:                                              ; preds = %103
  %116 = load i32*, i32** %14, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %118 = bitcast %struct.TYPE_5__* %117 to i32*
  %119 = ptrtoint i32* %116 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @M_WriteFile(i8* %124, %struct.TYPE_5__* %125, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %129 = call i32 @Z_Free(%struct.TYPE_5__* %128)
  ret void
}

declare dso_local %struct.TYPE_5__* @Z_Malloc(i32, i32, i32*) #1

declare dso_local i8* @SHORT(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @M_WriteFile(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @Z_Free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
